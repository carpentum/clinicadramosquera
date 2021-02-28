{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<!--================Blog Area =================-->
<section class="main_blog_area">
    <div class="container">
        <div class="row main_blog_inner">
            <div class="col-md-9">
                <div class="main_blog_items">
                    {foreach from=$content item=blog_item}
                        <div class="main_blogpost_item">
                            {if ! empty($blog_item['image'])}
                                <div class="blog_image">
                                    <img src="themes/brooks/assets/img/blog/blog-1.jpg{$blog_item['image']}" alt="">
                                    <div class="date">
                                        <h5>05 <span>March</span></h5>
                                    </div>
                                </div>
                            {/if}
                            <div class="main_blog_text">
                                <a href="#"><h2>{$blog_item['title']}</h2></a>
                                <div class="blog_author_area">
                                    <a href="#"><i class="fa fa-user"></i>By :  <span>Admin</span></a>
                                    <a href="#"><i class="fa fa-calendar"></i><span> {date("d", strtotime($blog_item['date']))} {$monthsEs[date("m", strtotime($blog_item['date']))]} {date("Y", strtotime($blog_item['date']))}</span></a>
                                    <!--<a href="#"><i class="fa fa-comments-o"></i>Comments: 5</a>-->
                                </div>
                                <p>{$blog_item['content']}</p>
                                <!--<a href="blog-details/{$blog_item['id']}/{$blog_item['title']}" class="fancy-btn btn-left">Leer más</a>-->
                            </div>
                        </div>
                    {/foreach}
                    

                </div>
                <nav aria-label="Page navigation" class="blog_pagination">
                    <ul class="pagination">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-3">
                <div class="blog_sidebar_area">
                    <aside class="mrgn_widget search_widget">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Enter Search Keywords">
                            <span class="input-group-btn">
                                <button class="btn btn-default theme_color" type="button"><i class="icon icon-Search"></i></button>
                            </span>
                        </div><!-- /input-group -->
                    </aside>
                    <aside class="mrgn_widget categories_widget">
                        <div class="blog_widget_title">
                            <h3>Categories</h3>
                        </div>
                        <ul>
                            <li><a href="#">Bidding-and-procurement <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            <li><a href="#">Remodeling <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            <li><a href="#">Tools and Resources <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            <li><a href="#">Management <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            <li><a href="#">Materials <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            <li><a href="#">Design <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        </ul>
                    </aside>
                    <aside class="mrgn_widget recent_news_widget">
                        <div class="blog_widget_title">
                            <h3>Recent Blog Posts</h3>
                        </div>
                        <div class="recent_inner">
                            <div class="recent_item">
                                <a href="#"><h4>Whether you enjoy reading about construction from a design.</h4></a>
                                <h5> <i class="fa fa-calendar"></i> 05 March 2018</h5>
                            </div>
                            <div class="recent_item">
                                <a href="#"><h4>For those more in tune with the architectural side of building and design.</h4></a>
                                <h5> <i class="fa fa-calendar"></i> 05 March 2018</h5>
                            </div>
                            <div class="recent_item">
                                <a href="#"><h4>Whether you enjoy reading about construction from a design.</h4></a>
                                <h5> <i class="fa fa-calendar"></i> 05 March 2018</h5>
                            </div>
                            <div class="recent_item">
                                <a href="#"><h4>For those more in tune with the architectural side of building and design,</h4></a>
                                <h5> <i class="fa fa-calendar"></i> 08 March 2017</h5>
                            </div>
                        </div>
                    </aside>
                    <aside class="mrgn_widget recent_news_widget">
                        <div class="blog_widget_title">
                            <h3>Tages</h3>
                        </div>
                        <ul>
                            <li><a href="#">Engineers</a></li>
                            <li><a href="#">Sales</a></li>
                            <li><a href="#">Mechanical</a></li>
                            <li><a href="#">construcion</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Architecture</a></li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Blog Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}