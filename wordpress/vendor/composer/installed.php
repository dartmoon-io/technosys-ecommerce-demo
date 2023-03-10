<?php return array(
    'root' => array(
        'pretty_version' => 'dev-develop',
        'version' => 'dev-develop',
        'type' => 'project',
        'install_path' => __DIR__ . '/../../',
        'aliases' => array(),
        'reference' => '9746fd88ecd20111666221a3577b4ca87d327baf',
        'name' => 'roots/bedrock',
        'dev' => true,
    ),
    'versions' => array(
        'composer/installers' => array(
            'pretty_version' => 'v2.2.0',
            'version' => '2.2.0.0',
            'type' => 'composer-plugin',
            'install_path' => __DIR__ . '/./installers',
            'aliases' => array(),
            'reference' => 'c29dc4b93137acb82734f672c37e029dfbd95b35',
            'dev_requirement' => false,
        ),
        'graham-campbell/result-type' => array(
            'pretty_version' => 'v1.1.0',
            'version' => '1.1.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../graham-campbell/result-type',
            'aliases' => array(),
            'reference' => 'a878d45c1914464426dc94da61c9e1d36ae262a8',
            'dev_requirement' => false,
        ),
        'johnpbloch/wordpress-core-installer' => array(
            'dev_requirement' => false,
            'replaced' => array(
                0 => '*',
            ),
        ),
        'oscarotero/env' => array(
            'pretty_version' => 'v2.1.0',
            'version' => '2.1.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../oscarotero/env',
            'aliases' => array(),
            'reference' => '0da22cadc6924155fa9bbea2cdda2e84ab7cbdd3',
            'dev_requirement' => false,
        ),
        'phpoption/phpoption' => array(
            'pretty_version' => '1.9.0',
            'version' => '1.9.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../phpoption/phpoption',
            'aliases' => array(),
            'reference' => 'dc5ff11e274a90cc1c743f66c9ad700ce50db9ab',
            'dev_requirement' => false,
        ),
        'roave/security-advisories' => array(
            'pretty_version' => 'dev-latest',
            'version' => 'dev-latest',
            'type' => 'metapackage',
            'install_path' => NULL,
            'aliases' => array(),
            'reference' => 'bac54e18ee767f065d88b81c8517fb21cd6414ab',
            'dev_requirement' => true,
        ),
        'roots/bedrock' => array(
            'pretty_version' => 'dev-develop',
            'version' => 'dev-develop',
            'type' => 'project',
            'install_path' => __DIR__ . '/../../',
            'aliases' => array(),
            'reference' => '9746fd88ecd20111666221a3577b4ca87d327baf',
            'dev_requirement' => false,
        ),
        'roots/bedrock-autoloader' => array(
            'pretty_version' => '1.0.4',
            'version' => '1.0.4.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../roots/bedrock-autoloader',
            'aliases' => array(),
            'reference' => 'f508348a3365ab5ce7e045f5fd4ee9f0a30dd70f',
            'dev_requirement' => false,
        ),
        'roots/bedrock-disallow-indexing' => array(
            'pretty_version' => '2.0.0',
            'version' => '2.0.0.0',
            'type' => 'wordpress-muplugin',
            'install_path' => __DIR__ . '/../../web/app/mu-plugins/bedrock-disallow-indexing',
            'aliases' => array(),
            'reference' => '6c28192e17cb9e02a5c0c99691a18552b85e1615',
            'dev_requirement' => false,
        ),
        'roots/wordpress' => array(
            'pretty_version' => '6.1.1',
            'version' => '6.1.1.0',
            'type' => 'metapackage',
            'install_path' => NULL,
            'aliases' => array(),
            'reference' => '41ff6e23ccbc3a1691406d69fe8c211a225514e2',
            'dev_requirement' => false,
        ),
        'roots/wordpress-core-installer' => array(
            'pretty_version' => '1.100.0',
            'version' => '1.100.0.0',
            'type' => 'composer-plugin',
            'install_path' => __DIR__ . '/../roots/wordpress-core-installer',
            'aliases' => array(),
            'reference' => '73f8488e5178c5d54234b919f823a9095e2b1847',
            'dev_requirement' => false,
        ),
        'roots/wordpress-no-content' => array(
            'pretty_version' => '6.1.1',
            'version' => '6.1.1.0',
            'type' => 'wordpress-core',
            'install_path' => __DIR__ . '/../../web/wp',
            'aliases' => array(),
            'reference' => '6.1.1',
            'dev_requirement' => false,
        ),
        'roots/wp-config' => array(
            'pretty_version' => '1.0.0',
            'version' => '1.0.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../roots/wp-config',
            'aliases' => array(),
            'reference' => '37c38230796119fb487fa03346ab0706ce6d4962',
            'dev_requirement' => false,
        ),
        'roots/wp-password-bcrypt' => array(
            'pretty_version' => '1.1.0',
            'version' => '1.1.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../roots/wp-password-bcrypt',
            'aliases' => array(),
            'reference' => '15f0d8919fb3731f79a0cf2fb47e1baecb86cb26',
            'dev_requirement' => false,
        ),
        'squizlabs/php_codesniffer' => array(
            'pretty_version' => '3.7.1',
            'version' => '3.7.1.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../squizlabs/php_codesniffer',
            'aliases' => array(),
            'reference' => '1359e176e9307e906dc3d890bcc9603ff6d90619',
            'dev_requirement' => true,
        ),
        'symfony/polyfill-ctype' => array(
            'pretty_version' => 'v1.26.0',
            'version' => '1.26.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../symfony/polyfill-ctype',
            'aliases' => array(),
            'reference' => '6fd1b9a79f6e3cf65f9e679b23af304cd9e010d4',
            'dev_requirement' => false,
        ),
        'symfony/polyfill-mbstring' => array(
            'pretty_version' => 'v1.26.0',
            'version' => '1.26.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../symfony/polyfill-mbstring',
            'aliases' => array(),
            'reference' => '9344f9cb97f3b19424af1a21a3b0e75b0a7d8d7e',
            'dev_requirement' => false,
        ),
        'symfony/polyfill-php80' => array(
            'pretty_version' => 'v1.26.0',
            'version' => '1.26.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../symfony/polyfill-php80',
            'aliases' => array(),
            'reference' => 'cfa0ae98841b9e461207c13ab093d76b0fa7bace',
            'dev_requirement' => false,
        ),
        'vlucas/phpdotenv' => array(
            'pretty_version' => 'v5.5.0',
            'version' => '5.5.0.0',
            'type' => 'library',
            'install_path' => __DIR__ . '/../vlucas/phpdotenv',
            'aliases' => array(),
            'reference' => '1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7',
            'dev_requirement' => false,
        ),
        'wordpress/core-implementation' => array(
            'dev_requirement' => false,
            'provided' => array(
                0 => '6.1.1',
            ),
        ),
        'wpackagist-plugin/woocommerce' => array(
            'pretty_version' => '7.4.0',
            'version' => '7.4.0.0',
            'type' => 'wordpress-plugin',
            'install_path' => __DIR__ . '/../../web/app/plugins/woocommerce',
            'aliases' => array(),
            'reference' => 'tags/7.4.0',
            'dev_requirement' => false,
        ),
        'wpackagist-plugin/wp-mail-smtp' => array(
            'pretty_version' => '3.7.0',
            'version' => '3.7.0.0',
            'type' => 'wordpress-plugin',
            'install_path' => __DIR__ . '/../../web/app/plugins/wp-mail-smtp',
            'aliases' => array(),
            'reference' => 'tags/3.7.0',
            'dev_requirement' => false,
        ),
        'wpackagist-theme/twentytwentythree' => array(
            'pretty_version' => '1.0',
            'version' => '1.0.0.0',
            'type' => 'wordpress-theme',
            'install_path' => __DIR__ . '/../../web/app/themes/twentytwentythree',
            'aliases' => array(),
            'reference' => '1.0',
            'dev_requirement' => false,
        ),
    ),
);
