{use class="yii\helpers\Html"}
{use class="common\components\MyHelpers"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url, 'section' => $section|default:''])}

<!--================Carrers Area =================-->
<section class="service_page">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="single-sidebar-widget">
                    <ul class="nav nav-tabs" role="tablist">
                        {foreach item=servicio from=$servicios_categoria}
                            <li {if $service->id == $servicio->id} class="active"{/if}><a href="/{$tipo_url}/{MyHelpers::slugify($servicio->name)}-{$servicio->id}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {$servicio->name}</a></li>
                        {/foreach}

                    </ul>
                    <div class="download_btn">
                        <a href="#">Descargar ficha <img src="/themes/brooks/assets/img/icon/download-icon.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="service_content_right_col">
                    <div class="tab-content">
                            <div class="service_content_bx">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="image_thumb">
                                            <img src="/themes/brooks/assets/img/company/1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="image_thumb">
                                            <img src="/themes/brooks/assets/img/company/2.jpg" alt="">
                                        </div>
                                    </div>
                                </div>

                                <h2>{$service['name']}</h2>
                                <p>{$service['description']}</p>

                                 <!--<div class="service_point">
                                    <ul>
                                        <li><a href="#">Various versions over the years.</a></li>
                                        <li><a href="#">Excepteur sint occaecat cupidatat non proident.</a></li>
                                        <li><a href="#">vel illum qui dolorem eum voluptas nulla pariatur.</a></li>
                                        <li><a href="#">one who avoids a pain that no resultant pleasure.</a></li>
                                    </ul>
                                </div>

                                <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo. nim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>-->
                            </div>


                            <!--<div class="row service_advantage">
                                <div class="col-md-7">
                                    <div class="service_text_left">

                                            <h2>Advantage Of Service </h2>

                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                        <ul>
                                            <li><a href="#"><img src="/themes/brooks/assets/img/icon/sing-icon.png" alt="">Various versions over the years.</a></li>
                                            <li><a href="#"><img src="/themes/brooks/assets/img/icon/sing-icon.png" alt="">Excepteur sint occaecat cupidatat non proident.</a></li>
                                            <li><a href="#"><img src="/themes/brooks/assets/img/icon/sing-icon.png" alt="">vel illum qui dolorem eum voluptas nulla pariatur.</a></li>
                                            <li><a href="#"><img src="/themes/brooks/assets/img/icon/sing-icon.png" alt="">one who avoids a pain that no resultant pleasure.</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="image_thumb">
                                            <img src="/themes/brooks/assets/img/company/cp-img-2.jpg" alt="">
                                        </div>
                                </div>
                            </div>-->

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Carrers Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}
