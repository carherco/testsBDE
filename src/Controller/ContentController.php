<?php

namespace App\Controller;

use App\Entity\Tema;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContentController extends AbstractController
{
    #[Route('/contenido', name: 'app_content_index')]
    public function index(EntityManagerInterface $em): Response
    {
        $temas = $em->getRepository(Tema::class)->findAll();
        
        return $this->render('content/index.html.twig', [
            'temas' => $temas,
        ]);
    }

    #[Route('/contenido/{id}', name: 'app_content_show', requirements: ['id' => '\d+'])]
    public function show(int $id, EntityManagerInterface $em): Response
    {
        $tema = $em->getRepository(Tema::class)->find($id);
        $temas = $em->getRepository(Tema::class)->findAll();
        
        if (!$tema) {
            throw $this->createNotFoundException('Tema no encontrado');
        }

        // Map tema ID to template file
        $templateMap = [
            1 => 'sistemas-operativos',
            2 => 'redes-comunicaciones', 
            3 => 'fundamentos-programacion',
            4 => 'bases-datos',
            5 => 'arquitectura-sistemas-apis',
            6 => 'seguridad-informatica',
            7 => 'fundamentos-ingenieria-software',
            8 => 'diseno-interfaces-usuario',
            9 => 'logica-negocio-backend',
            10 => 'informacion-economico-financiera',
            11 => 'fundamentos-erp',
            12 => 'fundamentos-blockchain-dlt',
            13 => 'desarrollo-contratos-inteligentes',
        ];

        $templateFile = $templateMap[$id] ?? 'default';
        $templatePath = "content/topics/{$templateFile}.html.twig";
        
        // Check if template exists, otherwise use default
        try {
            return $this->render($templatePath, [
                'tema' => $tema,
                'temas_nav' => $temas,
            ]);
        } catch (\Twig\Error\LoaderError $e) {
            return $this->render('content/topics/default.html.twig', [
                'tema' => $tema,
                'temas_nav' => $temas,
            ]);
        }
    }
}
