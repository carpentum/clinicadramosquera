<?php
/**
 * @see http://www.yiiframework.com/
 *
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

class RevolutionAsset extends AssetBundle
{
    public $basePath = '@app/themes/brooks/assets/vendors/revolution';
    public $baseUrl = '@web/../themes/brooks/assets/vendors/revolution';
    public $css = [
        //Rev slider css
        'css/settings.css',
        'css/layers.css',
        'css/navigation.css',
    ];
    public $js = [
        'js/jquery.themepunch.tools.min.js',
        'js/jquery.themepunch.revolution.min.js',
        'js/extensions/revolution.extension.video.min.js',
        'js/extensions/revolution.extension.slideanims.min.js',
        'js/extensions/revolution.extension.layeranimation.min.js',
        'js/extensions/revolution.extension.navigation.min.js',
    ];
}
