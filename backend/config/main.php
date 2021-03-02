<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
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
        'urlManager' => [
            'baseUrl' => '/',
            'enablePrettyUrl' => true, //Set to false to access gii model generator
            'showScriptName' => false,
            'rules' => [
                //'<action>'=>'sitess/<action>',
                'patologias'=>'content/patologias',
                'patologia/<id:.*>'=>'content/patologia',
                'tratamientos'=>'content/tratamientos',
                'tratamiento/<id:.*>'=>'content/tratamiento',
                'blog'=>'content/blog',
                'entrada-blog/<id:.*>'=>'content/blogentry',
                'testimonios'=>'content/testimonios',
                'testimonio/<id:.*>'=>'content/testimonio',
                'promociones'=>'content/promociones',
                'promocion/<id:.*>'=>'content/promociones',
                'preguntas-frecuentes'=>'content/faq',
                'pregunta-frecuente/<id:.*>'=>'content/faq',
                'sobre-mi'=>'content/sobremi',
                'nuestro-equipo'=>'content/nuestroequipo',
                'miembro-equipo/<id:.*>'=>'content/miembroequipo',
                'clinica'=>'content/clinica',
                'contacto'=>'content/contacto',
                '<controller>/<action>'=>'<controller>/<action>',
            ],
        ],
        'view' => [
            'theme' => [
                'basePath' => '@app/themes/adminlte',
                'pathMap' => ['@app/views' => '@app/themes/adminlte'],
                'baseUrl' => '@web/../themes/adminlte',
            ],
            'renderers' => [
                'tpl' => [
                    'class' => 'yii\smarty\ViewRenderer',
                    //'cachePath' => '@runtime/Smarty/cache',
                ],
            ],
        ],
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
    ],
    'params' => $params,
];
