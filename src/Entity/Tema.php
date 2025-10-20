<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
#[ORM\Table(name: 'temas')]
class Tema
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private ?int $id = null;

    #[ORM\Column(type: 'string', length: 150)]
    private ?string $nombre = null;

    #[ORM\OneToMany(mappedBy: 'tema', targetEntity: Pregunta::class)]
    private Collection $preguntas;

    public function __construct()
    {
        $this->preguntas = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombre(): ?string
    {
        return $this->nombre;
    }

    public function setNombre(string $nombre): static
    {
        $this->nombre = $nombre;
        return $this;
    }

    public function getPreguntas(): Collection
    {
        return $this->preguntas;
    }

    public function addPregunta(Pregunta $pregunta): static
    {
        if (!$this->preguntas->contains($pregunta)) {
            $this->preguntas->add($pregunta);
            $pregunta->setTema($this);
        }
        return $this;
    }

    public function removePregunta(Pregunta $pregunta): static
    {
        if ($this->preguntas->removeElement($pregunta)) {
            if ($pregunta->getTema() === $this) {
                $pregunta->setTema(null);
            }
        }
        return $this;
    }
}
