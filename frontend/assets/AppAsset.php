<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //Extra plugin css
        'themes/brooks/assets/vendors/stroke-icon/style.css',
        'themes/brooks/assets/css/style.css',
        'themes/brooks/assets/css/responsive.css',
        'themes/brooks/assets/css/set1.css',
        'themes/brooks/assets/css/jquery.fancybox.css',
        'themes/brooks/assets/css/headerstyle1.css',
        
        'themes/brooks/assets/css/button.css',
        'themes/brooks/assets/css/responsive.css',
        'themes/brooks/assets/vendors/stroke-icon/style.css',
        'themes/brooks/assets/css/custom.css',
    ];
    public $js = [
        'themes/brooks/assets/js/contact.js',
        'themes/brooks/assets/js/custom-theme.js',
        'themes/brooks/assets/js/jquery.fancybox.pack.js',
        'themes/brooks/assets/js/gallery.js',
        'themes/brooks/assets/js/gmaps.min.js',
        'themes/brooks/assets/js/jquery.appear.js',
        'themes/brooks/assets/js/jquery.countTo.js',
        'themes/brooks/assets/js/jquery.mixitup.min.js',
        'themes/brooks/assets/js/jquery.validate.min.js',
        'themes/brooks/assets/js/map-script.js',
        //'themes/brooks/assets/js/tab-script.js',
        'themes/brooks/assets/js/theme.js',
        'themes/brooks/assets/js/wow.js',
        
        'themes/brooks/assets/js/map-script.js',
        'themes/brooks/assets/js/jquery.fancybox.pack.js',
        'themes/brooks/assets/js/jquery.mixitup.min.js',
        'themes/brooks/assets/js/gallery.js',
        
        'themes/brooks/assets/vendors/isotope/imagesloaded.pkgd.min.js',
        'themes/brooks/assets/vendors/isotope/isotope.pkgd.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'app\assets\IconAsset',
        'app\assets\BootstrapAsset',
        
        //Slider Revolution
        'app\assets\RevolutionAsset',
        
        'app\assets\OwlCarouselAsset',
        'app\assets\AnimateCssAsset',
        'app\assets\MagnificPopupAsset',
        
        //'yii\bootstrap\BootstrapAsset',
    ];
}
