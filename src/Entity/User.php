<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Component\Validator\Constraints\DateTime;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="user")
 * @ApiResource()
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
     * @Assert\NotBlank
     */
    private $pseudo;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     */
    private $mail;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     */
    private $registrationDate;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     */
    private $connexionDate;

    /**
     * @ORM\OneToOne(targetEntity="Image")
     * @ORM\JoinColumn(name="image_id", referencedColumnName="id")
     */
    private $image;

    public function getId() : int
    {
        return $this->id;
    }

    public function setId($id) : void
    {
        $this->id = $id;
    }

    public function getPseudo() : string
    {
        return $this->pseudo;
    }

    public function setPseudo($pseudo) : void
    {
        $this->pseudo = $pseudo;
    }

    public function getFirstName() : string
    {
        return $this->firstName;
    }

    public function setFirstName($firstName) : void
    {
        $this->firstName = $firstName;
    }

    public function getLastName() : string
    {
        return $this->lastName;
    }

    public function setLastName($lastName) : void
    {
        $this->lastName = $lastName;
    }

    public function getMail() : string
    {
        return $this->mail;
    }

    public function setMail($mail) : void
    {
        $this->mail = $mail;
    }

    public function getRegistrationDate() : DateTime
    {
        return $this->registrationDate;
    }

    public function setRegistrationDate($registrationDate) : void
    {
        $this->registrationDate = $registrationDate;
    }

    public function getConnexionDate() : DateTime
    {
        return $this->connexionDate;
    }

    public function setConnexionDate($connexionDate) : void
    {
        $this->connexionDate = $connexionDate;
    }

    public function getImage() : Image
    {
        return $this->image;
    }

    public function setImage($image) : void
    {
        $this->image = $image;
    }
}