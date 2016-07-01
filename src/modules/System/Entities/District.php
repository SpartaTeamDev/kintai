<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class District
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\DistrictRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\DistrictListener" })
 * @Doctrine\ORM\Mapping\Table(name="district")
 */
class District extends AbstractBaseEntity
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
     * @Doctrine\ORM\Mapping\Column(name="province_code", type="string", length=20, nullable=true)
     * [Alpha|StringToUpper]
     */
    protected $ProvinceCode;

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
    public function getProvinceCode()
    {
        return $this->ProvinceCode;
    }

    /**
     * @param string $ProvinceCode
     * @return $this
     */
    public function setProvinceCode($ProvinceCode)
    {
        $this->ProvinceCode = $ProvinceCode;
        return $this;
    }
}