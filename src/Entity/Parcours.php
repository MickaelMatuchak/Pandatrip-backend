<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity
 * @ORM\Table(name="parcours")
 * @ApiResource(attributes={
 *     "filters"={"parcours.search_filter"},
 *     "normalization_context"={"groups"={"parcours"}}
 * })
 */
class Parcours
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"parcours"})
     */
    private $id;

    /**
     * @ORM\OneToMany(targetEntity="VisitUser", mappedBy="parcours")
     * @Groups({"parcours"})
     */
    private $visitUser;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * @Assert\NotBlank
     */
    private $user;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"parcours"})
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