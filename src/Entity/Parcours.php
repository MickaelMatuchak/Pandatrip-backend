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
 * @ApiResource(attributes={
 *     "filters"={"parcours.search_filter"}
 * })
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
     * @ORM\OneToMany(targetEntity="VisitUser", mappedBy="parcours")
     */
    private $visitUser;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    private $user;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     */
    private $name;

    public function getId() : int
    {
        return $this->id;
    }

    public function setId($id) : void
    {
        $this->id = $id;
    }

    public function getVisitUser(): ?Collection
    {
        return $this->visitUser;
    }

    public function setVisitUser($visitUser): void
    {
        $this->visitUser = $visitUser;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser($user): void
    {
        $this->user = $user;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName($name): void
    {
        $this->name = $name;
    }
}