<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
#[ORM\Table(name: 'preguntas')]
class Pregunta
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private ?int $id = null;

    #[ORM\ManyToOne(targetEntity: Tema::class, inversedBy: 'preguntas')]
    #[ORM\JoinColumn(name: 'id_tema', referencedColumnName: 'id', nullable: false)]
    private ?Tema $tema = null;

    #[ORM\Column(type: 'text')]
    private ?string $texto = null;

    #[ORM\Column(name: 'opcion_a', type: 'string', length: 255)]
    private ?string $opcionA = null;

    #[ORM\Column(name: 'opcion_b', type: 'string', length: 255)]
    private ?string $opcionB = null;

    #[ORM\Column(name: 'opcion_c', type: 'string', length: 255)]
    private ?string $opcionC = null;

    #[ORM\Column(name: 'opcion_d', type: 'string', length: 255)]
    private ?string $opcionD = null;

    #[ORM\Column(type: 'string', length: 1)]
    private ?string $correcta = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTema(): ?Tema
    {
        return $this->tema;
    }

    public function setTema(?Tema $tema): static
    {
        $this->tema = $tema;
        return $this;
    }

    public function getTexto(): ?string
    {
        return $this->texto;
    }

    public function setTexto(string $texto): static
    {
        $this->texto = $texto;
        return $this;
    }

    public function getOpcionA(): ?string
    {
        return $this->opcionA;
    }

    public function setOpcionA(string $opcionA): static
    {
        $this->opcionA = $opcionA;
        return $this;
    }

    public function getOpcionB(): ?string
    {
        return $this->opcionB;
    }

    public function setOpcionB(string $opcionB): static
    {
        $this->opcionB = $opcionB;
        return $this;
    }

    public function getOpcionC(): ?string
    {
        return $this->opcionC;
    }

    public function setOpcionC(string $opcionC): static
    {
        $this->opcionC = $opcionC;
        return $this;
    }

    public function getOpcionD(): ?string
    {
        return $this->opcionD;
    }

    public function setOpcionD(string $opcionD): static
    {
        $this->opcionD = $opcionD;
        return $this;
    }

    public function getCorrecta(): ?string
    {
        return $this->correcta;
    }

    public function setCorrecta(string $correcta): static
    {
        $this->correcta = $correcta;
        return $this;
    }

    public function getOpcion(string $letra): ?string
    {
        return match($letra) {
            'a' => $this->opcionA,
            'b' => $this->opcionB,
            'c' => $this->opcionC,
            'd' => $this->opcionD,
            default => null
        };
    }
}
