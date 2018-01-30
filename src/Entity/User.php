<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Component\Security\Core\User\EquatableInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity()
 * @ORM\Table(name="user")
 * @UniqueEntity("username")
 * @UniqueEntity("mail")
 * @ApiResource(attributes={
 *     "filters"={"user.search_filter"},
 *      "normalization_context"={"groups"={"user"}}
 * })
 */
class User implements UserInterface, EquatableInterface
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visit", "user"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"visit", "user"})
     */
    private $username;

    /**
     * @ORM\Column(type="string", length=20)
     * @Assert\NotBlank
     * @Assert\Choice(choices = {"male", "female"})
     * @Groups({"visit", "user"})
     */
    private $gender;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"user"})
     */
    private $firstname;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"user"})
     */
    private $lastname;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"user"})
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
     * @Groups({"user"})
     */
    private $connexionDate;

    /**
     * @ORM\OneToOne(targetEntity="Image")
     * @ORM\JoinColumn(name="image_id", referencedColumnName="id")
     * @Groups({"visit", "user"})
     */
    private $image;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     */
    private $password;

    private $salt;

    /**
    * @Groups({"user"})
    */
    private $roles = ['ROLE_USER'];

    public function getId(): int
    {
        return $this->id;
    }

    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function setUsername($username): void
    {
        $this->username = $username;
    }

    public function getGender(): string
    {
        return $this->gender;
    }

    public function setGender($gender): void
    {
        $this->gender = $gender;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword($password): void
    {
        $this->password = password_hash($password, PASSWORD_BCRYPT);
    }

    public function getFirstname(): string
    {
        return $this->firstname;
    }

    public function setFirstname($firstname): void
    {
        $this->firstname = $firstname;
    }

    public function getLastname(): string
    {
        return $this->lastname;
    }

    public function setLastname($lastname): void
    {
        $this->lastname = $lastname;
    }

    public function getMail(): string
    {
        return $this->mail;
    }

    public function setMail($mail): void
    {
        $this->mail = $mail;
    }

    public function getRegistrationDate(): \DateTime
    {
        return $this->registrationDate;
    }

    public function setRegistrationDate($registrationDate): void
    {
        $this->registrationDate = $registrationDate;
    }

    public function getConnexionDate(): \DateTime
    {
        return $this->connexionDate;
    }

    public function setConnexionDate($connexionDate): void
    {
        $this->connexionDate = $connexionDate;
    }

    public function getImage(): ?Image
    {
        return $this->image;
    }

    public function setImage($image): void
    {
        $this->image = $image;
    }

    public function getRoles(): array
    {
        return $this->roles;
    }

    public function getSalt(): ?string
    {
        return $this->salt;
    }

    public function eraseCredentials()
    {
        // TODO: Implement eraseCredentials() method.
    }

    public function isEqualTo(UserInterface $user)
    {
        if (!$user instanceof self) {
            return false;
        }

        if ($this->password !== $user->getPassword()) {
            return false;
        }

        if ($this->salt !== $user->getSalt()) {
            return false;
        }

        if ($this->username !== $user->getUsername()) {
            return false;
        }

        return true;
    }
}