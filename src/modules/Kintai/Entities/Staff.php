<?php namespace Kintai\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Staff
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="Kintai\Repositories\StaffRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "Kintai\Events\StaffListener" })
 * @Doctrine\ORM\Mapping\Table(name="staff")
 */
class Staff extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string")
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
}