<?php

namespace App\Controller;

use App\Entity\Tema;
use App\Entity\Pregunta;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class ExamController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(EntityManagerInterface $em): Response
    {
        $temas = $em->getRepository(Tema::class)->findAll();
        
        return $this->render('exam/index.html.twig', [
            'temas' => $temas,
        ]);
    }

    #[Route('/examen', name: 'app_exam')]
    public function exam(Request $request, EntityManagerInterface $em, SessionInterface $session): Response
    {
        $temaId = $request->query->getInt('tema');
        $cantidad = $request->query->getInt('cantidad', 10);
        $tiempo = $request->query->getInt('tiempo', 0);

        if ($temaId <= 0) {
            return $this->redirectToRoute('app_home');
        }

        $tema = $em->getRepository(Tema::class)->find($temaId);
        if (!$tema) {
            return $this->redirectToRoute('app_home');
        }

        // Get all questions for the topic first, then shuffle in PHP
        $todasPreguntas = $em->getRepository(Pregunta::class)
            ->createQueryBuilder('p')
            ->where('p.tema = :tema')
            ->setParameter('tema', $tema)
            ->getQuery()
            ->getResult();

        // Shuffle and limit in PHP for better compatibility
        shuffle($todasPreguntas);
        $preguntas = array_slice($todasPreguntas, 0, $cantidad);

        $session->set('exam_tema', $temaId);
        $session->set('exam_preguntas', array_map(fn($p) => $p->getId(), $preguntas));

        return $this->render('exam/exam.html.twig', [
            'tema' => $tema,
            'preguntas' => $preguntas,
            'tiempo' => $tiempo,
        ]);
    }

    #[Route('/resultado', name: 'app_result', methods: ['POST'])]
    public function result(Request $request, EntityManagerInterface $em, SessionInterface $session): Response
    {
        $respuestas = $request->request->all();
        $preguntaIds = $session->get('exam_preguntas', []);
        
        $puntos = 0;
        $total = 0;
        $detalles = [];

        foreach ($respuestas as $key => $respuesta) {
            if ($key === 'tema') continue;
            
            $preguntaId = (int) substr($key, 1); // Remove 'p' prefix
            if (!in_array($preguntaId, $preguntaIds)) continue;

            $pregunta = $em->getRepository(Pregunta::class)->find($preguntaId);
            if ($pregunta) {
                $correcta = strtolower($pregunta->getCorrecta());
                $respuestaUsuario = strtolower($respuesta);
                $acertada = ($correcta === $respuestaUsuario);
                if ($acertada) $puntos++;
                $total++;

                $detalles[] = [
                    'pregunta' => $pregunta,
                    'elegida' => $respuesta,
                    'correcta' => $pregunta->getCorrecta(),
                    'acertada' => $acertada,
                ];
            }
        }

        $porcentaje = $total ? round(($puntos / $total) * 100, 1) : 0;

        return $this->render('exam/result.html.twig', [
            'puntos' => $puntos,
            'total' => $total,
            'porcentaje' => $porcentaje,
            'detalles' => $detalles,
        ]);
    }

    #[Route('/practica', name: 'app_practice')]
    public function practice(Request $request, EntityManagerInterface $em, SessionInterface $session): Response
    {
        $temaId = $request->query->getInt('tema');
        $cantidad = $request->query->getInt('cantidad', 10);

        if ($temaId <= 0) {
            return $this->redirectToRoute('app_home');
        }

        $tema = $em->getRepository(Tema::class)->find($temaId);
        if (!$tema) {
            return $this->redirectToRoute('app_home');
        }

        $todasPreguntas = $em->getRepository(Pregunta::class)
            ->createQueryBuilder('p')
            ->where('p.tema = :tema')
            ->setParameter('tema', $tema)
            ->getQuery()
            ->getResult();

        shuffle($todasPreguntas);
        $preguntas = array_slice($todasPreguntas, 0, $cantidad);

        $session->set('practice_tema', $temaId);
        $session->set('practice_preguntas', array_map(fn($p) => $p->getId(), $preguntas));
        $session->set('practice_current', 0);
        $session->set('practice_aciertos', 0);
        $session->set('practice_fallos', 0);

        return $this->redirectToRoute('app_practice_question');
    }

    #[Route('/practica/pregunta', name: 'app_practice_question')]
    public function practiceQuestion(EntityManagerInterface $em, SessionInterface $session): Response
    {
        $preguntaIds = $session->get('practice_preguntas', []);
        $current = $session->get('practice_current', 0);

        if ($current >= count($preguntaIds)) {
            return $this->redirectToRoute('app_practice_summary');
        }

        $pregunta = $em->getRepository(Pregunta::class)->find($preguntaIds[$current]);
        if (!$pregunta) {
            return $this->redirectToRoute('app_home');
        }

        return $this->render('exam/practice_question.html.twig', [
            'pregunta' => $pregunta,
            'current' => $current + 1,
            'total' => count($preguntaIds),
        ]);
    }

    #[Route('/practica/validar', name: 'app_practice_validate', methods: ['POST'])]
    public function practiceValidate(Request $request, EntityManagerInterface $em, SessionInterface $session): Response
    {
        $preguntaId = $request->request->getInt('pregunta_id');
        $respuesta = $request->request->get('respuesta');

        $pregunta = $em->getRepository(Pregunta::class)->find($preguntaId);
        if (!$pregunta) {
            return $this->redirectToRoute('app_home');
        }

        $correcta = strtolower($pregunta->getCorrecta());
        $respuestaUsuario = strtolower($respuesta);
        $acertada = ($correcta === $respuestaUsuario);

        if ($acertada) {
            $session->set('practice_aciertos', $session->get('practice_aciertos', 0) + 1);
        } else {
            $session->set('practice_fallos', $session->get('practice_fallos', 0) + 1);
        }

        return $this->render('exam/practice_result.html.twig', [
            'pregunta' => $pregunta,
            'respuesta_usuario' => $respuesta,
            'acertada' => $acertada,
            'current' => $session->get('practice_current', 0) + 1,
            'total' => count($session->get('practice_preguntas', [])),
        ]);
    }

    #[Route('/practica/siguiente', name: 'app_practice_next')]
    public function practiceNext(SessionInterface $session): Response
    {
        $current = $session->get('practice_current', 0);
        $session->set('practice_current', $current + 1);

        return $this->redirectToRoute('app_practice_question');
    }

    #[Route('/practica/resumen', name: 'app_practice_summary')]
    public function practiceSummary(SessionInterface $session): Response
    {
        $aciertos = $session->get('practice_aciertos', 0);
        $fallos = $session->get('practice_fallos', 0);
        $total = $aciertos + $fallos;
        $porcentaje = $total ? round(($aciertos / $total) * 100, 1) : 0;

        return $this->render('exam/practice_summary.html.twig', [
            'aciertos' => $aciertos,
            'fallos' => $fallos,
            'total' => $total,
            'porcentaje' => $porcentaje,
        ]);
    }
}
