<?php namespace System\Entities;

use Chaos\Common\AbstractBaseEntity;
use Chaos\Common\Traits\AuditEntityTrait;
use Chaos\Common\Traits\IdentityEntityTrait;

/**
 * Class Media
 * @author ntd1712
 *
 * @Doctrine\ORM\Mapping\Entity(repositoryClass="System\Repositories\MediaRepository")
 * @Doctrine\ORM\Mapping\EntityListeners({ "System\Events\MediaListener" })
 * @Doctrine\ORM\Mapping\Table(name="media")
 */
class Media extends AbstractBaseEntity
{
    use IdentityEntityTrait, AuditEntityTrait;

    /**
     * @Doctrine\ORM\Mapping\Column(name="origin_name", type="string")
     * [NotEmpty|FILTER_SANITIZE_STRING]
     */
    protected $OriginName;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_name", type="string", nullable=true)
     */
    protected $FileName;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_ext", type="string", length=30, nullable=true)
     * [StringToLower]
     */
    protected $FileExt;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_type", type="string", length=50, nullable=true)
     */
    protected $FileType;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_size", type="bigint", nullable=true, options={"unsigned"=true})
     */
    protected $FileSize;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_path", type="string", nullable=true)
     */
    protected $FilePath;
    /**
     * @Doctrine\ORM\Mapping\Column(name="file_url", type="string", nullable=true)
     */
    protected $FileUrl;
    /**
     * @Doctrine\ORM\Mapping\Column(name="posted_at", type="datetime", nullable=true)
     */
    protected $PostedAt = 'now';

    /**
     * @return string
     */
    public function getOriginName()
    {
        return $this->OriginName;
    }

    /**
     * @param string $OriginName
     * @return $this
     */
    public function setOriginName($OriginName)
    {
        $this->OriginName = $OriginName;
        return $this;
    }

    /**
     * @return string
     */
    public function getFileName()
    {
        return $this->FileName;
    }

    /**
     * @param string $FileName
     * @return $this
     */
    public function setFileName($FileName)
    {
        $this->FileName = $FileName;
        return $this;
    }

    /**
     * @return string
     */
    public function getFileExt()
    {
        return $this->FileExt;
    }

    /**
     * @param string $FileExt
     * @return $this
     */
    public function setFileExt($FileExt)
    {
        $this->FileExt = $FileExt;
        return $this;
    }

    /**
     * @return string
     */
    public function getFileType()
    {
        return $this->FileType;
    }

    /**
     * @param string $FileType
     * @return $this
     */
    public function setFileType($FileType)
    {
        $this->FileType = $FileType;
        return $this;
    }

    /**
     * @return string
     */
    public function getFileSize()
    {
        return $this->FileSize;
    }

    /**
     * @param string $FileSize
     * @return $this
     */
    public function setFileSize($FileSize)
    {
        $this->FileSize = $FileSize;
        return $this;
    }

    /**
     * @return string
     */
    public function getFilePath()
    {
        return $this->FilePath;
    }

    /**
     * @param string $FilePath
     * @return $this
     */
    public function setFilePath($FilePath)
    {
        $this->FilePath = $FilePath;
        return $this;
    }

    /**
     * @return string
     */
    public function getFileUrl()
    {
        return $this->FileUrl;
    }

    /**
     * @param string $FileUrl
     * @return $this
     */
    public function setFileUrl($FileUrl)
    {
        $this->FileUrl = $FileUrl;
        return $this;
    }

    /**
     * @return \DateTime
     */
    public function getPostedAt()
    {
        return $this->PostedAt;
    }

    /**
     * @param \DateTime $PostedAt
     * @return $this
     */
    public function setPostedAt($PostedAt)
    {
        $this->PostedAt = $PostedAt;
        return $this;
    }
}