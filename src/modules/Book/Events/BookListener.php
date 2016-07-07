<?php namespace Book\Events;

use Chaos\Common\AbstractBaseEntityListener;

/**
 * Class BookListener
 * @author ntd1712
 */
class BookListener extends AbstractBaseEntityListener
{
    /**
     * {@inheritdoc}
     * @param   \Book\Entities\Book $entity
     */
    public function postLoad($entity, $eventArgs)
    {
        parent::postLoad($entity, $eventArgs);

        $entity->Name = html_entity_decode($entity->Name, ENT_QUOTES);
    }
}