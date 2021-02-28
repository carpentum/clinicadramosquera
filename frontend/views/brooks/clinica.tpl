{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<section class="latest-gallery text-center">
    <div class="container-fluid">  
        <div class="sec_middle_title">
            <h1>our work gallery</h1>
        </div><!-- title -->          
        <ul class="post-filter list-inline">
            <li class="active" data-filter=".filter-item">
                <span>All</span>
            </li>
            <li data-filter=".Indoor-Services">
                <span>Plumbing </span>
            </li>
            <li data-filter=".Old-Wiring-Faults">
                <span>Bathroom</span>
            </li>
            <li data-filter=".Out-door-repairing">
                <span>Sewer</span>
            </li>
            <li data-filter=".Shortcircuits">
                <span>Drain</span>
            </li>
        </ul>

        <div class="row masonary-layout filter-layout">
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/1.jpg" alt="Awesome Image"/>
                            <div class="overlay">
                                <div class="inner">
                                    <div class="social">
                                        <a href="themes/brooks/assets/img/gallery/1.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                        <h4>title here</h4>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Indoor-Services Out-door-repairing padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/2.jpg" alt="Awesome Image"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/2.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>title here</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Shortcircuits  Old-Wiring-Faults padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/3.jpg" alt="Awesome Image"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/3.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>title here</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Indoor-Services Out-door-repairing Old-Wiring-Faults padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/4.jpg" alt="Awesome Image"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/4.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>title here</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Shortcircuits Out-door-repairing Old-Wiring-Faults padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/5.jpg" alt="Awesome Image"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/5.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>title here</h4>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 filter-item Out-door-repairing Indoor-Services video Shortcircuits Old-Wiring-Faults padd-none">
                <div class="single-item padd-none">
                    <div class="img-box">
                        <img src="themes/brooks/assets/img/gallery/6.jpg" alt="Awesome Image"/>
                        <div class="overlay">
                            <div class="inner">
                                <div class="social">
                                    <a href="themes/brooks/assets/img/gallery/6.jpg" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="fa fa-search-plus" aria-hidden="true"></i></a>  
                                    <h4>title here</h4>
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