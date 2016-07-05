<?php namespace Kintai\Events;

use Chaos\Common\AbstractBaseEntityListener;

/**
 * Class StaffListener
 * @author ntd1712
 */
class StaffListener extends AbstractBaseEntityListener
{
    /**
     * {@inheritdoc}
     * @param   \Kintai\Entities\Staff $entity
     */
    public function postLoad($entity, $eventArgs)
    {
        parent::postLoad($entity, $eventArgs);

        $entity->Name = html_entity_decode($entity->Name, ENT_QUOTES);
    }
}