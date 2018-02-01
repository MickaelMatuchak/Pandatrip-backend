<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\Collection;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Serializer\Annotation\MaxDepth;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="guide")
 * @UniqueEntity("user")
 * @ApiResource(attributes={
 *     "filters"={"parcours.search_filter"},
 *     "normalization_context"={"groups"={"guide"}}
 * })
 */
class Guide
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"guide", "user", "visitguide"})
     */
    private $id;

    /**
     * @ORM\Column(type="float")
     * @Groups({"guide", "user"})
     */
    private $billfold = 0;

    /**
     * @ORM\ManyToMany(targetEntity="Review")
     * @ORM\JoinTable(name="guide_reviews",
     *      joinColumns={@ORM\JoinColumn(name="guide_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="review_id", referencedColumnName="id", unique=true)}
     *      )
     * @Groups({"guide", "user"})
     */
    private $reviews;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $address;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $country;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $region;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $city;

    /**
     * @ORM\Column(type="integer", columnDefinition="INT(5) UNSIGNED ZEROFILL")
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $postalCode;

    /**
     * @ORM\Column(type="string")
     * @Assert\NotBlank
     * @Groups({"guide", "user"})
     */
    private $phoneNumber;

    /**
     * @ORM\OneToMany(targetEntity="VisitGuide", mappedBy="guide")
     * @Groups({"guide", "user"})
     */
    private $listVisits;

    /**
     * @ORM\OneToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * @Assert\NotBlank
     * @Groups({"guide", "visitguide"})
     */
    private $user;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getBillfold(): float
    {
        return $this->billfold;
    }

    public function setBillfold($billfold): void
    {
        $this->billfold = $billfold;
    }

    public function getReviews(): ?Collection
    {
        return $this->reviews;
    }

    public function setReviews($reviews): void
    {
        $this->reviews = $reviews;
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

    public function getPhoneNumber(): string
    {
        return $this->phoneNumber;
    }

    public function setPhoneNumber($phoneNumber): void
    {
        $this->phoneNumber = $phoneNumber;
    }

    public function getListVisits(): ?Collection
    {
        return $this->listVisits;
    }

    public function setListVisits($listVisits): void
    {
        $this->listVisits = $listVisits;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser($user): void
    {
        $this->user = $user;
    }
}