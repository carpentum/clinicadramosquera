{use class="yii\helpers\Html"}
{use class="common\components\MyHelpers"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url, 'section' => $section|default:''])}

<!--================Carrers Area =================-->
<section class="service_page">
    <div class="container">
        <div class="row">
            <div class="col-md-3 hidden-xs">
                <div class="single-sidebar-widget">
                    <ul class="nav nav-tabs" role="tablist">
                        {foreach item=servicio from=$servicios_categoria}
                            <li {if $service['id'] == $servicio['id']} class="active"{/if}><a href="/{$tipo_url}/{MyHelpers::slugify($servicio['name'])}-{$servicio['id']}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {$servicio['name']}</a></li>
                        {/foreach}
                    </ul>
                    <!--<div class="download_btn">
                        <a href="#">Descargar ficha <img src="/themes/brooks/assets/img/icon/download-icon.png" alt=""></a>
                    </div>-->
                </div>
            </div>
            <div class="col-md-9">
                <div class="service_content_right_col">
                    <div class="tab-content">
                            <div class="service_content_bx">
                                {if ! empty($service['image']) && file_exists(Yii::getAlias('@webroot')|cat:"/themes/brooks/assets/img/service/"|cat:$section|cat:"/"|cat:$service['image'])}
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="image_thumb">
                                                <img src="/themes/brooks/assets/img/service/{$section|cat:"/"|cat:$service['image']}" alt="{$service['name']}">
                                            </div>
                                        </div>
                                    </div>
                                {/if}

                                <h2>{$service['name']}</h2>
                                <p>{$service['description']}</p>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Carrers Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}
