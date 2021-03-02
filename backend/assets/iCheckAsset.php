<?php
/**
 * @see http://www.yiiframework.com/
 *
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 *
 * @since 2.0
 */
class iCheckAsset extends AssetBundle
{
    public $basePath = '@app/themes/adminlte/assets';
    public $baseUrl = '@web/../themes/adminlte/assets';
    public $css = [
        //Icon css link
        'plugins/iCheck/all.css',
    ];
    public $js = [
        'plugins/iCheck/icheck.min.js',
    ];
    public $depends = [
        'backend\assets\AppAsset',
    ];
}
