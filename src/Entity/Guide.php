<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="guide")
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
     * @ORM\Column(type="integer")
     */
    private $billfold;

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
}