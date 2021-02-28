{use class="yii\helpers\Html"}
{use class="yii\base\View"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<!--================Our About Area =================-->
<section class="our_about_area">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-8">
                <div class="our_about_left_content">
                    {$content['top_text']}
                </div>
            </div>
            <div class="col-md-4 col-sm-4 hidden-xs">
                <div class="image_thumb ">
                    <img src="themes/brooks/assets/img/about/about_bea.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Our About Area =================-->

<section class="fluid-section-one">
    <div class="outer-container clearfix">

        <!--Image Column-->
        <div class="image-column hidden-xs" style="background-image:url(themes/brooks/assets/img/resource/about-image-2.jpg);"></div>

        <!--Content Column-->
        <div class="content-column">
            <div class="inner-column">
                <div class="clearfix">

                    <!--Title Column-->
                    <div class="title-box">
                        <div class="box-inner">
                            <h2>{$content['middle_text_title']}</h2>
                            <div class="text">
                                {$content['middle_text']}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
</section>
<!--End Fluid Section One-->    

<section class="why_choose">
    <div class="container">
             <div class="sec_middle_title">
                <h2>Nuestras características</h2>
            </div>
        <div class="row">
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c1.png" alt="">
                    </figure>
                    {$content['feature_1']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c2.png" alt="">
                    </figure>
                    {$content['feature_2']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c3.png" alt="">
                    </figure>
                    {$content['feature_3']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c4.png" alt="">
                    </figure>
                    {$content['feature_4']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c5.png" alt="">
                    </figure>
                    {$content['feature_5']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="choose_outer">
                    <figure>
                        <img src="themes/brooks/assets/img/icon/c6.png" alt="">
                    </figure>
                    {$content['feature_6']}
                    <div class="border-top_bottom"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /End --> 

{$this->renderFile("themes/brooks/views/_footer.tpl")}