<?php
/**
 * @see http://www.yiiframework.com/
 *
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

class AnimateCssAsset extends AssetBundle
{
    public $basePath = '@app/themes/brooks/assets';
    public $baseUrl = '@web/../themes/brooks/assets';
    public $css = [
        'vendors/animate-css/animate.css',
    ];

}
