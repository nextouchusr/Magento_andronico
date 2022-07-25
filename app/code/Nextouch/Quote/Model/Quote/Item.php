<?php
declare(strict_types=1);

namespace Nextouch\Quote\Model\Quote;

use Magento\Catalog\Helper\Product\Configuration;
use Magento\Framework\App\ObjectManager;
use Magento\Framework\Exception\NoSuchEntityException;
use Nextouch\Catalog\Api\Data\ProductInterface;
use Nextouch\Catalog\Api\ProductRepositoryInterface;
use Nextouch\Quote\Api\Data\CartItemInterface;
use function Lambdish\Phunctional\search;
use function Lambdish\Phunctional\some;
use function Symfony\Component\String\u;

class Item extends \Magento\Quote\Model\Quote\Item implements CartItemInterface
{
    /**
     * @throws NoSuchEntityException
     */
    public function getProduct(): ProductInterface
    {
        $product = parent::getProduct();
        $productId = (int) $product->getId();

        $productRepository = ObjectManager::getInstance()->get(ProductRepositoryInterface::class);

        return $productRepository->getById($productId);
    }

    public function hasSelectedService(string $code): bool
    {
        $helper = ObjectManager::getInstance()->get(Configuration::class);
        $options = $helper->getCustomOptions($this);

        return some(function (array $option) use ($code) {
            $values = explode(self::OPTION_SEPARATOR, $option['value']);

            $service = search(function (string $value) use ($code) {
                $formattedValue = u($value)->snake()->lower()->toString();

                return $formattedValue === $code;
            }, $values);

            return $service !== null;
        }, $options);
    }
}