<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Country
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\CountryRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\CountryListener" })
 * @Doctrine\ORM\Mapping\Table(name="country")
 */
class Country extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string", length=50)
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
    /**
     * @Doctrine\ORM\Mapping\Column(name="alpha2_code", type="string", length=2, nullable=true, options={"fixed"=true})
     * [Alpha|StringToUpper]
     */
    protected $Alpha2Code;
    /**
     * @Doctrine\ORM\Mapping\Column(name="alpha3_code", type="string", length=3, nullable=true, options={"fixed"=true})
     * [Alpha|StringToUpper]
     */
    protected $Alpha3Code;
    /**
     * @Doctrine\ORM\Mapping\Column(name="immigration_code", type="string", length=4, nullable=true)
     * [Alpha|StringToUpper]
     */
    protected $ImmigrationCode;
    /**
     * @Doctrine\ORM\Mapping\Column(name="phone_code", type="smallint", nullable=true, options={"unsigned"=true})
     */
    protected $PhoneCode;

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
    public function getAlpha2Code()
    {
        return $this->Alpha2Code;
    }

    /**
     * @param string $Alpha2Code
     * @return $this
     */
    public function setAlpha2Code($Alpha2Code)
    {
        $this->Alpha2Code = $Alpha2Code;
        return $this;
    }

    /**
     * @return string
     */
    public function getAlpha3Code()
    {
        return $this->Alpha3Code;
    }

    /**
     * @param string $Alpha3Code
     * @return $this
     */
    public function setAlpha3Code($Alpha3Code)
    {
        $this->Alpha3Code = $Alpha3Code;
        return $this;
    }

    /**
     * @return string
     */
    public function getImmigrationCode()
    {
        return $this->ImmigrationCode;
    }

    /**
     * @param string $ImmigrationCode
     * @return $this
     */
    public function setImmigrationCode($ImmigrationCode)
    {
        $this->ImmigrationCode = $ImmigrationCode;
        return $this;
    }

    /**
     * @return int
     */
    public function getPhoneCode()
    {
        return $this->PhoneCode;
    }

    /**
     * @param int $PhoneCode
     * @return $this
     */
    public function setPhoneCode($PhoneCode)
    {
        $this->PhoneCode = $PhoneCode;
        return $this;
    }
}