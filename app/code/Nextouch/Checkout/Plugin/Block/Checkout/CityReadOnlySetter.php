<?php
declare(strict_types=1);

namespace Nextouch\Checkout\Plugin\Block\Checkout;

use Magento\Checkout\Block\Checkout\LayoutProcessor;

class CityReadOnlySetter
{
    /**
     * @noinspection PhpUnusedParameterInspection
     */
    public function afterProcess(LayoutProcessor $subject, array $result): array
    {
        $result['components']['checkout']['children']['steps']['children']
        ['shipping-step']['children']['shippingAddress']['children']
        ['shipping-address-fieldset']['children']
        ['city']['config']['elementTmpl'] = 'Nextouch_Checkout/form/element/readonly';

        return $result;
    }
}
