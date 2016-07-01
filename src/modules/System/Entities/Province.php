<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Province
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\ProvinceRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\ProvinceListener" })
 * @Doctrine\ORM\Mapping\Table(name="province")
 */
class Province extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string", length=100)
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
    /**
     * @Doctrine\ORM\Mapping\Column(name="code", type="string", length=20, nullable=true)
     * [Alpha|StringToUpper]
     */
    protected $Code;
    /**
     * @Doctrine\ORM\Mapping\Column(name="zip_code", type="string", length=20, nullable=true)
     * [HtmlEntities]
     */
    protected $ZipCode;
    /**
     * @Doctrine\ORM\Mapping\Column(name="area_code", type="string", length=20, nullable=true)
     * [HtmlEntities]
     */
    protected $AreaCode;
    /**
     * @Doctrine\ORM\Mapping\Column(name="number_plate", type="string", length=20, nullable=true)
     * [HtmlEntities]
     */
    protected $NumberPlate;
    /**
     * @Doctrine\ORM\Mapping\Column(name="country_code", type="string", length=2, nullable=true, options={"fixed"=true})
     * [Alpha|StringToUpper]
     */
    protected $CountryCode;

    /**
     * @return string
     */
    public function getName()
    {
        return $this->Name;
    }

    /**
     * @param string $Name
     * @return $this
     */
    public function setName($Name)
    {
        $this->Name = $Name;
        return $this;
    }

    /**
     * @return string
     */
    public function getCode()
    {
        return $this->Code;
    }

    /**
     * @param string $Code
     * @return $this
     */
    public function setCode($Code)
    {
        $this->Code = $Code;
        return $this;
    }

    /**
     * @return string
     */
    public function getZipCode()
    {
        return $this->ZipCode;
    }

    /**
     * @param string $ZipCode
     * @return $this
     */
    public function setZipCode($ZipCode)
    {
        $this->ZipCode = $ZipCode;
        return $this;
    }

    /**
     * @return string
     */
    public function getAreaCode()
    {
        return $this->AreaCode;
    }

    /**
     * @param string $AreaCode
     * @return $this
     */
    public function setAreaCode($AreaCode)
    {
        $this->AreaCode = $AreaCode;
        return $this;
    }

    /**
     * @return string
     */
    public function getNumberPlate()
    {
        return $this->NumberPlate;
    }

    /**
     * @param string $NumberPlate
     * @return $this
     */
    public function setNumberPlate($NumberPlate)
    {
        $this->NumberPlate = $NumberPlate;
        return $this;
    }

    /**
     * @return string
     */
    public function getCountryCode()
    {
        return $this->CountryCode;
    }

    /**
     * @param string $CountryCode
     * @return $this
     */
    public function setCountryCode($CountryCode)
    {
        $this->CountryCode = $CountryCode;
        return $this;
    }
}