<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="parcours")
 */
class Parcours
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="date")
     */
    private $date;

    /**
     * @ORM\Column(type="integer")
     */
    private $prix;

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
}