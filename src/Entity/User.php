<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="user")
 */
class User
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $pseudo;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $mail;

    /**
     * @ORM\Column(type="datetime")
     */
    private $registrationDate;

    /**
     * @ORM\Column(type="datetime")
     */
    private $connexionDate;

    /**
     * @ORM\OneToOne(targetEntity="Image")
     * @ORM\JoinColumn(name="image_id", referencedColumnName="id")
     */
    private $image;
}