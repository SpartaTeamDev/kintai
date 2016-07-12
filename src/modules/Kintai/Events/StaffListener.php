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

    /**
     * {@inheritdoc}
     * @param   \Kintai\Entities\Staff $entity
     * @param   \Doctrine\ORM\Event\PreFlushEventArgs $eventArgs
     */
    public function preFlush($entity, $eventArgs)
    {
        $entity->FullName = $entity->FirstName . ' ' . $entity->LastName;

        if ($entity->Dob instanceof \DateTime)
        {
            $entity->Age = $entity->Dob->diff(date_create())->y;
        }
    }
}