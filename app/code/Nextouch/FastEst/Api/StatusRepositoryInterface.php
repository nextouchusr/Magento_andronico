<?php
declare(strict_types=1);

namespace Nextouch\FastEst\Api;

use Collections\Exceptions\InvalidArgumentException;
use Nextouch\FastEst\Model\Response\Directory\GetStatusList;

/**
 * @api
 */
interface StatusRepositoryInterface
{
    /**
     * @throws InvalidArgumentException
     */
    public function getAll(): GetStatusList;
}
