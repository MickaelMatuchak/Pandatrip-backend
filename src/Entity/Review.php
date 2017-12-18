<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Constraints\DateTime;

/**
 * @ORM\Entity
 * @ORM\Table(name="review")
 * @ApiResource()
 */
class Review
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    private $id;

    /**
     * @ORM\Column(type="smallint")
     * @Assert\Range(min=0, max=5)
     */
    private $note;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank
     */
    private $text;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     */
    private $date;

    public function getId() : int
    {
        return $this->id;
    }

    public function setId($id) : void
    {
        $this->id = $id;
    }

    public function getNote() : int
    {
        return $this->note;
    }

    public function setNote($note) : void
    {
        $this->note = $note;
    }

    public function getText() : string
    {
        return $this->text;
    }

    public function setText($text) : void
    {
        $this->text = $text;
    }

    public function getDate() : DateTime
    {
        return $this->date;
    }

    public function setDate($date) : void
    {
        $this->date = $date;
    }
}