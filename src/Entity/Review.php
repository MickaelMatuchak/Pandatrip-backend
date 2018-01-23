<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation\Groups;

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
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visit"})
     */
    private $id;

    /**
     * @ORM\Column(type="smallint")
     * @Assert\Range(min=0, max=5)
     * @Groups({"visit"})
     */
    private $note;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank
     * @Groups({"visit"})
     */
    private $text;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     * @Groups({"visit"})
     */
    private $date;

    /**
     * @ORM\OneToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * @Groups({"visit"})
     */
    private $user;

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

    public function getDate() : \DateTime
    {
        return $this->date;
    }

    public function setDate($date) : void
    {
        $this->date = $date;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser($user): void
    {
        $this->user = $user;
    }
}