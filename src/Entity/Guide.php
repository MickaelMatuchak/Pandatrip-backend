<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="guide")
 * @UniqueEntity("user")
 * @ApiResource()
 */
class Guide
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="float")
     */
    private $billfold = 0;

    /**
     * @ORM\ManyToMany(targetEntity="Review")
     * @ORM\JoinTable(name="guide_reviews",
     *      joinColumns={@ORM\JoinColumn(name="guide_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="review_id", referencedColumnName="id", unique=true)}
     *      )
     */
    private $reviews;

    /**
     * @ORM\OneToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
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

    public function getBillfold() : float
    {
        return $this->billfold;
    }

    public function setBillfold($billfold) : void
    {
        $this->billfold = $billfold;
    }

    public function getReviews() : array
    {
        return $this->reviews;
    }

    public function setReviews($reviews) : void
    {
        $this->reviews = $reviews;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser($user) : void
    {
        $this->user = $user;
    }
}