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
    public $basePath = '@app/themes/brooks/assets';
    public $baseUrl = '@web/../themes/brooks/assets';
    public $css = [
        //Icon css link
        'css/fontawesome5/css/all.min.css',
        'css/font-awesome.min.css',
        'css/flaticon.css',
        'fonts/flaticon.css',
    ];
    public $js = [
    ];

}
