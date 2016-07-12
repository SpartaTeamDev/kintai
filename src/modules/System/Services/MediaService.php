<?php namespace System\Services;

use Chaos\Common\AbstractBaseService;
use Chaos\Common\Events\UpdateEventArgs;
use Chaos\Common\Exceptions\RuntimeException;
use Chaos\Common\Exceptions\ServiceException;

/**
 * Class MediaService
 * @author ntd1712
 */
class MediaService extends AbstractBaseService
{
    /** {@inheritdoc} @see Symfony\Component\HttpFoundation\File\UploadedFile */
    protected function onExchangeArray(UpdateEventArgs $eventArgs)
    {
        $payload = $eventArgs->getPayload();
        $post = $eventArgs->getPost();

        // do some checks
        if (!isset($payload['file']) || !$payload['file'] instanceof \SplFileInfo)
        {
            throw new RuntimeException('SplFileInfo not supported');
        }

        $post['OriginName'] = pathinfo($payload['file']->getClientOriginalName(), PATHINFO_FILENAME);
        $post['FileExt'] = $payload['file']->getClientOriginalExtension();
        $post['FileName'] = md5(microtime(true));

        try
        {
            /** @var \Symfony\Component\HttpFoundation\File\File $target */
            $target = $payload['file']->move(
                $this->getConfig()->get('paths.upload') . DIRECTORY_SEPARATOR . $this->getConfig()->get('app.key'),
                $post['FileName'] . '.' . $post['FileExt']);

            $post['FileType'] = $target->getMimeType();
            $post['FileSize'] = $target->getSize();
            $post['FilePath'] = realpath($target->getPathname());
            $post['FileUrl'] = $this->getConfig()->get('app.url') . '/uploads/' .
                $this->getConfig()->get('app.key') . '/' . $target->getFilename();

            // set new values, if any
            $eventArgs->setPost($post);
        }
        catch (\Exception $e)
        {
            throw new ServiceException($e->getMessage());
        }
    }

    /** {@inheritdoc} */
    protected function onAfterDelete(UpdateEventArgs $eventArgs)
    {
        @unlink($eventArgs->getEntity()->FilePath);
    }
}