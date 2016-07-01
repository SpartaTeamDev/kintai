<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Language
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\LanguageRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\LanguageListener" })
 * @Doctrine\ORM\Mapping\Table(name="language")
 */
class Language extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string", length=100)
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
    /**
     * @Doctrine\ORM\Mapping\Column(name="iso6391_code", type="string", length=2, nullable=true, options={"fixed"=true})
     * [Alpha|StringToLower]
     */
    protected $Iso6391Code;
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
    public function getIso6391Code()
    {
        return $this->Iso6391Code;
    }

    /**
     * @param string $Iso6391Code
     * @return $this
     */
    public function setIso6391Code($Iso6391Code)
    {
        $this->Iso6391Code = $Iso6391Code;
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