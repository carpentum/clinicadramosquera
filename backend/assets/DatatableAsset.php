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
class DatatableAsset extends AssetBundle
{
    public $basePath = '@app/themes/adminlte/assets';
    public $baseUrl = '@web/../themes/adminlte/assets';
    public $css = [
        //Icon css link
        'plugins/datatables.net-bs/css/dataTables.bootstrap.min.css',
        'plugins/datatables-responsive/css/responsive.bootstrap4.min.css',
    ];
    public $js = [
        'plugins/datatables.net/js/jquery.dataTables.min.js',
        'plugins/datatables.net-bs/js/dataTables.bootstrap.min.js',
        'plugins/datatables-responsive/js/dataTables.responsive.min.js',
        'plugins/datatables-responsive/js/responsive.bootstrap4.min.js',
    ];
    public $depends = [
        'backend\assets\AppAsset',
    ];
}
