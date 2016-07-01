<?php namespace System\Repositories;

use Chaos\Common\AbstractDoctrineRepository;

/**
 * Class MediaRepository
 * @author ntd1712
 */
class MediaRepository extends AbstractDoctrineRepository
{
    /**
     * @param   string $ids
     * @return  \System\Entities\Media[]
     */
    public function getByIds($ids)
    {
        return $this->findBy(['Id' => $ids]);
    }
}