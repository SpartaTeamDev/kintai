<?php namespace Book\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Staff
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="Book\Repositories\BookRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "Book\Events\BookListener" })
 * @Doctrine\ORM\Mapping\Table(name="book")
 */
class Book extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="name", type="string")
     * [NotEmpty|HtmlEntities]
     */
    protected $Name;
}