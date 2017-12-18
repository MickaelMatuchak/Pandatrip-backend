<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Component\Validator\Constraints\DateTime;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="parcours")
 * @ApiResource()
 */
class Parcours
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    private $id;

    /**
     * @ORM\Column(type="date")
     * @Assert\NotBlank
     */
    private $date;

    /**
     * @ORM\Column(type="float")
     */
    private $prix = 0;

    /**
     * @ORM\ManyToMany(targetEntity="Visit")
     * @ORM\JoinTable(name="parcours_visits",
     *      joinColumns={@ORM\JoinColumn(name="parcours_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="visit_id", referencedColumnName="id", unique=true)}
     *      )
     */
    private $visits;

    /**
     * @ORM\OneToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    private $user;

    /**
     * @ORM\OneToOne(targetEntity="Guide")
     * @ORM\JoinColumn(name="guide_id", referencedColumnName="id")
     */
    private $guide;

    public function getId() : int
    {
        return $this->id;
    }

    public function setId($id) : void
    {
        $this->id = $id;
    }

    public function getDate() : DateTime
    {
        return $this->date;
    }

    public function setDate($date) : void
    {
        $this->date = $date;
    }

    public function getPrix() : float
    {
        return $this->prix;
    }

    public function setPrix($prix) : void
    {
        $this->prix = $prix;
    }

    public function getVisits() : ?Collection
    {
        return $this->visits;
    }

    public function setVisits($visits) : void
    {
        $this->visits = $visits;
    }

    public function getUser() : User
    {
        return $this->user;
    }

    public function setUser($user) : void
    {
        $this->user = $user;
    }

    public function getGuide() : Guide
    {
        return $this->guide;
    }

    public function setGuide($guide) : void
    {
        $this->guide = $guide;
    }
}