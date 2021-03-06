<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="image")
 * @UniqueEntity("url")
 * @ApiResource()
 */
class Image
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"theme", "visit", "review", "user", "guide", "visitguide", "visitUser", "parcours"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank
     * @Groups({"theme", "visit", "review", "user", "guide", "visitguide", "visitUser", "parcours"})
     */
    private $url;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotNull
     * @Groups({"theme", "visit", "review", "user", "guide", "visitguide", "visitUser", "parcours"})
     */
    private $description;

    public function getId() : int
    {
        return $this->id;
    }

    public function setId($id) : void
    {
        $this->id = $id;
    }

    public function getUrl() : string
    {
        return $this->url;
    }

    public function setUrl($url) : void
    {
        $this->url = $url;
    }

    public function getDescription() : string
    {
        return $this->description;
    }

    public function setDescription($description) : void
    {
        $this->description = $description;
    }
}