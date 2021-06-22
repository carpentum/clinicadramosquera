{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<section class="latest-gallery text-center">
    <div class="container-fluid">  
        <div class="sec_middle_title">
            <h1>Galería</h1>
        </div><!-- title -->          
        <ul class="post-filter list-inline">
            <li class="active" data-filter=".filter-item">
                <span>Todo</span>
            </li>
            <li data-filter=".Sala-principal">
                <span>Sala principal</span>
            </li>
            <li data-filter=".Sala-espera">
                <span>Sala de espera</span>
            </li>
            <li data-filter=".Interior">
                <span>Interior</span>
            </li>
            <li data-filter=".Exteriores">
                <span>Exterior</span>
            </li>
        </ul>

        <div class="row masonary-layout filter-layout">
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item padd-none Exteriores">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/exterior_02_thumb.jpg" alt="Exteriores"/>
                            <div class="overlay">
                                <div class="inner">
                                    <div class="social">
                                        <a href="themes/brooks/assets/img/gallery/exterior_02.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                        <h4>portal</h4>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Sala-principal Interior padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/sala_principal_01_thumb.jpg" alt="Interior"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/sala_principal_01.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>sala principal</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Exteriores padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/exterior_03_thumb.jpg" alt="Exterior"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/exterior_03.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>placa exterior</h4>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Sala-espera Interior padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/sala_espera_01_thumb.jpg" alt="Sala de espera"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/sala_espera_01.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>sala de espera</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Sala-principal Interior padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/sala_principal_02_thumb.jpg" alt="Sala principal"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/sala_principal_02.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>sala principal</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Sala-espera Interior padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/sala_espera_02_thumb.jpg" alt="Interior"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/sala_espera_02.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>sala de espera</h4>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Exteriores padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/exterior_01_thumb.jpg" alt="Exteriores"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/exterior_01.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>localización exterior</h4>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.latest-gallery -->

{$this->renderFile("themes/brooks/views/_footer.tpl")}