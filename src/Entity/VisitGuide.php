<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="visits_guides")
 * @ApiResource()
 */
class VisitGuide
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Visit", inversedBy="listGuides")
     */
    private $visit;

    /**
     * @ORM\ManyToOne(targetEntity="Guide", inversedBy="listVisits")
     */
    private $guide;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date;

    /**
     * @ORM\Column(type="integer")
     */
    private $duration;

    /**
     * @ORM\Column(type="integer")
     */
    private $price;

    /**
     * @ORM\Column(type="boolean")
     */
    private $isAvailable;

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

    public function getisAvailable(): bool
    {
        return $this->isAvailable;
    }

    public function setIsAvailable($isAvailable): void
    {
        $this->isAvailable = $isAvailable;
    }
}