<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Currency
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\CurrencyRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\CurrencyListener" })
 * @Doctrine\ORM\Mapping\Table(name="currency")
 */
class Currency extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string", length=100)
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
    /**
     * @Doctrine\ORM\Mapping\Column(name="iso4217_code", type="string", length=3, nullable=true, options={"fixed"=true})
     * [Alpha|StringToUpper]
     */
    protected $Iso4217Code;
    /**
     * @Doctrine\ORM\Mapping\Column(name="symbol", type="string", length=10, nullable=true)
     * [HtmlEntities]
     */
    protected $Symbol;
    /**
     * @Doctrine\ORM\Mapping\Column(name="rate", type="float", nullable=true)
     */
    protected $Rate;
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
    public function getIso4217Code()
    {
        return $this->Iso4217Code;
    }

    /**
     * @param string $Iso4217Code
     * @return $this
     */
    public function setIso4217Code($Iso4217Code)
    {
        $this->Iso4217Code = $Iso4217Code;
        return $this;
    }

    /**
     * @return string
     */
    public function getSymbol()
    {
        return $this->Symbol;
    }

    /**
     * @param string $Symbol
     * @return $this
     */
    public function setSymbol($Symbol)
    {
        $this->Symbol = $Symbol;
        return $this;
    }

    /**
     * @return float
     */
    public function getRate()
    {
        return $this->Rate;
    }

    /**
     * @param float $Rate
     * @return $this
     */
    public function setRate($Rate)
    {
        $this->Rate = $Rate;
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