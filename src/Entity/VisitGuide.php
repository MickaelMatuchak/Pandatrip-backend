<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="visits_guides")
 * @ApiResource(attributes={
 *     "normalization_context"={"groups"={"visitguide"}},
 *     "filters"={"visitguide.search_filter", "visitguide.boolean_filter"}
 * })
 */
class VisitGuide
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visitguide", "visitUser"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Visit", inversedBy="listGuides")
     * @Assert\NotBlank
     * @Groups({"visitguide"})
     */
    private $visit;

    /**
     * @ORM\ManyToOne(targetEntity="Guide", inversedBy="listVisits")
     * @Assert\NotBlank
     * @Groups({"visitguide", "visitUser"})
     */
    private $guide;

    /**
     * @ORM\Column(type="datetime")
     * @Groups({"visitguide", "visitUser"})
     */
    private $date;

    /**
     * @ORM\Column(type="integer")
     * @Assert\NotBlank
     * @Groups({"visitguide", "visitUser"})
     */
    private $duration;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"visitguide", "visitUser"})
     */
    private $price = 0;

    /**
     * @ORM\Column(type="boolean")
     * @Groups({"visitguide"})
     */
    private $isAvailable = true;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getVisit(): Visit
    {
        return $this->visit;
    }

    public function setVisit($visit): void
    {
        $this->visit = $visit;
    }

    public function getGuide(): Guide
    {
        return $this->guide;
    }

    public function setGuide($guide): void
    {
        $this->guide = $guide;
    }

    public function getDate(): \DateTime
    {
        return $this->date;
    }

    public function setDate($date): void
    {
        $this->date = $date;
    }

    public function getDuration(): int
    {
        return $this->duration;
    }

    public function setDuration($duration): void
    {
        $this->duration = $duration;
    }

    public function getPrice(): int
    {
        return $this->price;
    }

    public function setPrice($price): void
    {
        $this->price = $price;
    }

    public function getIsAvailable(): bool
    {
        return $this->isAvailable;
    }

    public function setIsAvailable($isAvailable): void
    {
        $this->isAvailable = $isAvailable;
    }
}