<?php
declare(strict_types=1);

namespace Nextouch\Customer\Setup\Patch\Data;

use Magento\Customer\Api\AddressMetadataInterface;
use Magento\Customer\Model\ResourceModel\Attribute as AttributeResourceModel;
use Magento\Customer\Setup\CustomerSetupFactory;
use Magento\Eav\Api\Data\AttributeSetInterfaceFactory;
use Magento\Eav\Model\Entity\Attribute\Backend\ArrayBackend;
use Magento\Framework\Exception\LocalizedException;
use Magento\Framework\Setup\ModuleDataSetupInterface;
use Magento\Framework\Setup\Patch\DataPatchInterface;
use Nextouch\Customer\Api\Data\AddressInterface;
use Nextouch\Customer\Model\Config\Address\InvoiceTypes;

class AddInvoiceTypeAttribute implements DataPatchInterface
{
    private ModuleDataSetupInterface $moduleDataSetup;
    private CustomerSetupFactory $customerSetupFactory;
    private AttributeSetInterfaceFactory $attributeSetFactory;
    private AttributeResourceModel $attributeResourceModel;

    public function __construct(
        ModuleDataSetupInterface $moduleDataSetup,
        CustomerSetupFactory $customerSetupFactory,
        AttributeSetInterfaceFactory $attributeSetFactory,
        AttributeResourceModel $attributeResourceModel
    ) {
        $this->moduleDataSetup = $moduleDataSetup;
        $this->customerSetupFactory = $customerSetupFactory;
        $this->attributeSetFactory = $attributeSetFactory;
        $this->attributeResourceModel = $attributeResourceModel;
    }

    public static function getDependencies(): array
    {
        return [];
    }

    public function getAliases(): array
    {
        return [];
    }

    /**
     * @throws LocalizedException
     * @throws \Zend_Validate_Exception
     */
    public function apply(): self
    {
        $customerSetup = $this->customerSetupFactory->create(['setup' => $this->moduleDataSetup]);

        $addressEntity = $customerSetup->getEavConfig()->getEntityType(AddressMetadataInterface::ENTITY_TYPE_ADDRESS);
        $attributeSetId = $addressEntity->getDefaultAttributeSetId();

        $attributeSet = $this->attributeSetFactory->create();
        $attributeGroupId = $attributeSet->getDefaultGroupId($attributeSetId);

        $customerSetup->addAttribute(
            AddressMetadataInterface::ENTITY_TYPE_ADDRESS,
            AddressInterface::INVOICE_TYPE,
            [
                'type' => 'varchar',
                'label' => 'Invoice Type',
                'input' => 'select',
                'source' => InvoiceTypes::class,
                'backend' => ArrayBackend::class,
                'required' => false,
                'sort_order' => 65,
                'position' => 65,
                'visible' => true,
                'visible_on_front' => true,
                'default' => '',
                'user_defined' => true,
                'system' => false,
            ]
        );

        $attribute = $customerSetup
            ->getEavConfig()
            ->getAttribute(AddressMetadataInterface::ENTITY_TYPE_ADDRESS, AddressInterface::INVOICE_TYPE)
            ->addData([
                'attribute_set_id' => $attributeSetId,
                'attribute_group_id' => $attributeGroupId,
                'used_in_forms' => ['customer_address_edit', 'customer_register_address', 'adminhtml_customer_address'],
            ]);

        $this->attributeResourceModel->save($attribute);

        return $this;
    }
}