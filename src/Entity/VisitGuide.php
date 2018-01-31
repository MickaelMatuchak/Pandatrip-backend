<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity
 * @ORM\Table(name="visits_guides")
 * @ApiResource(attributes={
 *     "normalization_context"={"groups"={"visitguide"}},
 *     "filters"={"visitguide.search_filter", "visitGuide.boolean_filter"}
 * })
 */
class VisitGuide
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visitguide"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Visit", inversedBy="listGuides")
     * @Groups({"visitguide"})
     */
    private $visit;

    /**
     * @ORM\ManyToOne(targetEntity="Guide", inversedBy="listVisits")
     * @Groups({"visitguide"})
     */
    private $guide;

    /**
     * @ORM\Column(type="datetime")
     * @Groups({"visitguide"})
     */
    private $date;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"visitguide"})
     */
    private $duration;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"visitguide"})
     */
    private $price;

    /**
     * @ORM\Column(type="boolean")
     * @Groups({"visitguide"})
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