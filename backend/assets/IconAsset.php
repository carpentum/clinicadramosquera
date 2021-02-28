<?php
/**
 * @see http://www.yiiframework.com/
 *
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 *
 * @since 2.0
 */
class IconAsset extends AssetBundle
{
    public $basePath = '@app/themes/adminlte/assets';
    public $baseUrl = '@web/../themes/adminlte/assets';
    public $css = [
        //Icon css link
        'css/font-awesome/css/font-awesome.min.css',
        'css/Ionicons/css/ionicons.min.css',
    ];
    public $js = [
    ];

}
