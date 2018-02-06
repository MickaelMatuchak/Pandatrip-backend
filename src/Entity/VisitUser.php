<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity
 * @ORM\Table(name="visits_users")
 * @ApiResource(attributes={
 *     "normalization_context"={"groups"={"visitUser"}},
 *     "filters"={"visitusersguide.search_filter", "visitusersguide.boolean_filter"}
 * })
 */
class VisitUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visitUser", "parcours"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Visit")
     * @Assert\NotBlank
     * @ORM\JoinColumn(name="visit_id", referencedColumnName="id")
     * @Groups({"visitUser", "parcours"})
     */
    private $visit;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @Assert\NotBlank
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     *
     */
    private $user;

    /**
     * @ORM\ManyToOne(targetEntity="VisitGuide")
     * @ORM\JoinColumn(name="visits_guides_id", referencedColumnName="id", nullable=true)
     * @Groups({"visitUser", "parcours"})
     */
    private $visitGuide;

    /**
     * @ORM\Column(type="boolean")
     * @Groups({"visitUser", "parcours"})
     */
    private $isValidated = false;

    /**
     * @ORM\Column(type="boolean")
     * @Groups({"visitUser", "parcours"})
     */
    private $isConfirm = false;

    /**
     * @ORM\ManyToOne(targetEntity="Parcours", inversedBy="visitUser")
     * @ORM\JoinColumn(name="parcours_id", referencedColumnName="id")
     * @Assert\NotBlank
     */
    private $parcours;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getVisit(): ?Visit
    {
        return $this->visit;
    }

    public function setVisit($visit): void
    {
        $this->visit = $visit;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser($user): void
    {
        $this->user = $user;
    }

    public function getVisitGuide(): ?VisitGuide
    {
        return $this->visitGuide;
    }

    public function setVisitGuide($visitGuide): void
    {
        $this->visitGuide = $visitGuide;
    }

    public function getIsValidated(): bool
    {
        return $this->isValidated;
    }

    public function setIsValidated($isValidated): void
    {
        $this->isValidated = $isValidated;
    }

    public function getIsConfirm(): bool
    {
        return $this->isConfirm;
    }

    public function setIsConfirm($isConfirm): void
    {
        $this->isConfirm = $isConfirm;
    }

    public function getParcours(): Parcours
    {
        return $this->parcours;
    }

    public function setParcours($parcours): void
    {
        $this->parcours = $parcours;
    }
}