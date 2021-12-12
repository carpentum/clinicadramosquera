<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'language' => 'es',
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'baseUrl' => '/',
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'view' => [
            'theme' => [
                'basePath' => '@app/themes/brooks',
                'pathMap' => ['@app/views' => '@app/themes/brooks'],
                'baseUrl' => '@web/../themes/brooks',
            ],
            'renderers' => [
                'tpl' => [
                    'class' => 'yii\smarty\ViewRenderer',
                    //'cachePath' => '@runtime/Smarty/cache',
                ],
            ],
        ],
        'urlManager' => [
            'baseUrl' => '/',
            'enablePrettyUrl' => true, //Set to false to access gii model generator
            'showScriptName' => false,
            'rules' => [
                'sobre-nosotros'=>'site/sobrenosotros',
                'nuestro-equipo'=>'site/equipo',
                'clinica'=>'site/clinica',
                'contacto'=>'site/contact',
                'testimonios'=>'site/testimonios',
                'blog'=>'site/blog',
                'preguntas-frecuentes'=>'site/preguntas',
                'politica-de-privacidad'=>'site/politica',
                'aviso-legal'=>'site/aviso',
                'patologias'=>'site/patologias',
                'tratamientos'=>'site/tratamientos',
                'sorteo'=>'site/sorteo',
                '<alias:patologia|tratamiento>/<id:.*>'=>'site/<alias>',
                '<controller>/<action>'=>'<controller>/<action>',
            ],
        ],
        'urlManagerBackend' => [
            'class' => 'yii\web\UrlManager',
            'baseUrl' => 'http://my.clinicadramosquera.com',
            'hostInfo' => 'http://my.clinicadramosquera.com',
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
        ],
    ],
    'params' => $params,
];
