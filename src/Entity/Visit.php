<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="visit")
 * @ApiResource(attributes={
 *     "normalization_context"={"groups"={"visit"}},
 *     "filters"={"visit.search_filter", "visit.range_filter"},
 *     "order"={"note": "DESC"},
 *     "pagination_client_items_per_page"=true
 * })
 */
class Visit
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"visit", "theme", "visitUser", "parcours"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"visit", "theme", "visitUser", "parcours"})
     */
    private $name;

    /**
     * @ORM\ManyToMany(targetEntity="Theme", inversedBy="visits")
     * @ORM\JoinTable(name="visits_themes")
     * @Assert\NotBlank
     * @Groups({"visit"})
     */
    private $themes;

    /**
     * @ORM\ManyToMany(targetEntity="Image")
     * @ORM\JoinTable(name="visits_images",
     *      joinColumns={@ORM\JoinColumn(name="visit_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="image_id", referencedColumnName="id", unique=true)}
     *      )
     * @Groups({"visit", "theme", "visitUser", "parcours"})
     */
    private $images;

    /**
     * @ORM\ManyToMany(targetEntity="Review")
     * @ORM\JoinTable(name="visits_reviews",
     *      joinColumns={@ORM\JoinColumn(name="visit_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="review_id", referencedColumnName="id", unique=true)}
     *      )
     * @Groups({"visit"})
     */
    private $reviews;

    /**
     * @ORM\Column(type="float")
     * @Assert\NotBlank
     * @Groups({"visit"})
     */
    private $latitude;

    /**
     * @ORM\Column(type="float")
     * @Assert\NotBlank
     * @Groups({"visit"})
     */
    private $longitude;

    /**
     * @ORM\Column(type="string", length=100)
     * @Groups({"visit", "visitUser", "parcours"})
     */
    private $address;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"visit", "visitUser", "parcours"})
     */
    private $country;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"visit", "visitUser", "parcours"})
     */
    private $region;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"visit", "visitUser", "parcours"})
     */
    private $city;

    /**
     * @ORM\Column(type="integer", columnDefinition="INT(5) UNSIGNED ZEROFILL")
     * @Assert\NotBlank
     * @Groups({"visit", "visitUser", "parcours"})
     */
    private $postalCode;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups({"visit"})
     */
    private $description;

    /**
     * @ORM\Column(type="integer", nullable=true)
     * @Groups({"visit"})
     */
    private $note;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"visit"})
     */
    private $nbNotes = 0;

    /**
     * @ORM\Column(type="string", nullable=true)
     * @Groups({"visit"})
     */
    private $site;

    /**
     * @ORM\OneToMany(targetEntity="VisitGuide", mappedBy="visit")
     * @Groups({"visit"})
     */
    private $listGuides;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName($name): void
    {
        $this->name = $name;
    }

    public function getThemes(): Collection
    {
        return $this->themes;
    }

    public function setThemes($themes): void
    {
        $this->themes = $themes;
    }

    public function getImages(): ?Collection
    {
        return $this->images;
    }

    public function setImages($images): void
    {
        $this->images = $images;
    }

    public function getReviews(): ?Collection
    {
        return $this->reviews;
    }

    public function setReviews($reviews): void
    {
        $this->reviews = $reviews;
    }

    public function getLatitude(): float
    {
        return $this->latitude;
    }

    public function setLatitude($latitude): void
    {
        $this->latitude = $latitude;
    }

    public function getLongitude(): float
    {
        return $this->longitude;
    }

    public function setLongitude($longitude): void
    {
        $this->longitude = $longitude;
    }

    public function getAddress(): string
    {
        return $this->address;
    }

    public function setAddress($address): void
    {
        $this->address = $address;
    }

    public function getCountry(): string
    {
        return $this->country;
    }

    public function setCountry($country): void
    {
        $this->country = $country;
    }

    public function getRegion(): string
    {
        return $this->region;
    }

    public function setRegion($region): void
    {
        $this->region = $region;
    }

    public function getCity(): string
    {
        return $this->city;
    }

    public function setCity($city): void
    {
        $this->city = $city;
    }

    public function getPostalCode(): int
    {
        return $this->postalCode;
    }

    public function setPostalCode($postalCode): void
    {
        $this->postalCode = $postalCode;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function setDescription($description): void
    {
        $this->description = $description;
    }

    public function getNote(): int
    {
        return $this->note;
    }

    public function setNote($note): void
    {
        $this->note = $note;
    }

    public function getNbNotes(): int
    {
        return $this->nbNotes;
    }

    public function setNbNotes($nbNotes): void
    {
        $this->nbNotes = $nbNotes;
    }

    public function getSite(): string
    {
        return $this->site;
    }

    public function setSite($site): void
    {
        $this->site = $site;
    }

    public function getListGuides(): ?Collection
    {
        return $this->listGuides;
    }

    public function setListGuides($listGuides): void
    {
        $this->listGuides = $listGuides;
    }
}