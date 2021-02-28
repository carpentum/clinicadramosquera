<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'themes/adminlte/assets/vendors/bootstrap/css/bootstrap.min.css',
        'themes/adminlte/assets/css/AdminLTE.min.css',
        'themes/adminlte/assets/css/skins/_all-skins.min.css',
        'themes/adminlte/assets/vendors/morris.js/morris.css',
        'themes/adminlte/assets/vendors/bootstrap-datepicker/css/bootstrap-datepicker.min.css',
        'themes/adminlte/assets/vendors/bootstrap-daterangepicker/daterangepicker.css',
        'themes/adminlte/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css',
        'themes/adminlte/assets/css/custom.css',
    ];
    public $js = [
        'themes/adminlte/assets/js/jquery/jquery.min.js',
        'themes/adminlte/assets/js/jquery-ui/jquery-ui.min.js',
        'themes/adminlte/assets/vendors/bootstrap/js/bootstrap.min.js',
        'themes/adminlte/assets/vendors/raphael/raphael.min.js',
        'themes/adminlte/assets/vendors/morris.js/morris.min.js',
        'themes/adminlte/assets/vendors/jquery-sparkline/jquery.sparkline.min.js',
        'themes/adminlte/assets/vendors/moment/min/moment.min.js',
        'themes/adminlte/assets/vendors/bootstrap-daterangepicker/daterangepicker.js',
        'themes/adminlte/assets/vendors/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
        'themes/adminlte/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js',
        'themes/adminlte/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js',
        'themes/adminlte/assets/plugins/fastclick/fastclick.js',
        'themes/adminlte/assets/js/adminlte.min.js',
        'themes/adminlte/assets/js/pages/dashboard.js',
        'themes/adminlte/assets/js/demo.js',

        'themes/adminlte/assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js',
        'themes/adminlte/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js',
        'themes/adminlte/assets/plugins/jquery-knob/jquery.knob.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'app\assets\IconAsset',
    ];
}
