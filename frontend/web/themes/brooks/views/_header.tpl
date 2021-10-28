{use class="common\components\MyHelpers"}

<!--================Header Area =================-->
<header class="main_header_area">
    <div class="header_top">
        <div class="container">
            <div class="header_top_inner">
                <div class="pull-left">
                    <p>
                        Bienvenido/a a la Clínica Doctora Mosquera!
                    </p>
                </div>
                <div class="pull-right">
                    <a href="tel:+34604025827" class="phn_btn">Llámanos: {Yii::$app->params['phone_no']}</a>
                    <ul class="header_social">
                        <li><a href="https://www.facebook.com/clinicadramosquera" target="_blank"><i class="fab fa-facebook-square"></i></a></li>
                        <li><a href="https://instagram.com/clinica_dra.mosquera" target="_blank"><i class="fab fa-instagram-square"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="header_menu">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a href="https://www.facebook.com/clinicadramosquera" target="_blank" class="social-responsive"><i class="fab fa-facebook-square"></i></a>
                    <a href="https://instagram.com/clinica_dra.mosquera" target="_blank" class="social-responsive social-responsive-last"><i class="fab fa-instagram-square"></i></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand logo-white" href="/"><img src="/themes/brooks/assets/img/logo-white.png" alt=""></a>
                    <a href="tel:+34604025827" target="_blank" class="social-responsive" style="margin-top: 0;font-size: 14px;">Tfno.: 604025827</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown submenu ">
                            <a href="{Yii::$app->request->BaseUrl}">Inicio</a>
                        </li>
                        <li class="submenu dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quiénes somos
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/sobre-nosotros">Sobre nosotros</a></li>
                                <li><a href="/nuestro-equipo">Nuestro equipo</a></li>
                                <li><a href="/clinica">Clínica</a></li>
                                <!--<li><a href="gallery-lightbox.html">Clínica 2</a></li>-->

                            </ul>
                        </li>
                        <li class="submenu dropdown megamenu-fw">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Patologías
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu megamenu-content patologias" role="menu">
                                <li>
                                    <div class="col-menu-mainpanel">
                                        {foreach item=type from=$menu_contents['types']}
                                            {if $type->name == 'Patología'}
                                                {foreach item=category from=$menu_contents['categories']}
                                                    {if $category['id_type'] == $type->id}
                                                        <div class="col-menu">
                                                            <h6 class="title">{$category['name']}</h6>
                                                            <div class="content">
                                                                <ul class="menu-col">
                                                                    {foreach item=element from=$menu_contents['elements']}
                                                                        {if $element['id_category'] == $category->id}
                                                                            <li><a href="/patologia/{MyHelpers::slugify($element['name'])}-{$element['id']}">{$element['name']}</a></li>
                                                                        {/if}
                                                                    {/foreach}
                                                                </ul>
                                                            </div>
                                                        </div><!-- end col-3 -->
                                                    {/if}
                                                {/foreach}
                                            {/if}
                                        {/foreach}
                                        <!-- end col-3 -->
                                    </div><!-- end row -->
                                </li>
                            </ul>
                        </li>
                        <li class="submenu dropdown megamenu-fw">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Tratamientos
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu megamenu-content tratamientos" role="menu">
                                <li>
                                    <div class="col-menu-mainpanel">
                                        {foreach item=type from=$menu_contents['types']}
                                            {if $type->name == 'Tratamiento'}
                                                {foreach item=category from=$menu_contents['categories']}
                                                    {if $category['id_type'] == $type->id}
                                                        <div class="col-menu">
                                                            <h6 class="title">{$category['name']}</h6>
                                                            <div class="content">
                                                                <ul class="menu-col">
                                                                    {foreach item=element from=$menu_contents['elements']}
                                                                        {if $element['id_category'] == $category->id}
                                                                            <li><a href="/tratamiento/{MyHelpers::slugify($element['name'])}-{$element['id']}">{$element['name']}</a></li>
                                                                        {/if}
                                                                    {/foreach}
                                                                </ul>
                                                            </div>
                                                        </div><!-- end col-3 -->
                                                    {/if}
                                                {/foreach}
                                            {/if}
                                        {/foreach}
                                        <!-- end col-3 -->
                                    </div><!-- end row -->
                                </li>
                            </ul>
                        </li>

                        <li class="submenu dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Más
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu">

                                <!--<li><a href="#">Promociones</a></li>-->
                                <li><a href="/testimonios">Testimonios</a></li>

                                <li><a href="/preguntas-frecuentes">Preguntas frecuentes</a></li>
                                <li><a href="/blog">Blog</a></li>
                                <!--<li><a href="{Yii::$app->urlManagerBackend->createUrl([''])}" target='_blank'>Admin</a></li>-->
                            </ul>
                        </li>
                        <li><a href="/contacto">Contacto</a></li>
                    </ul>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="search_dropdown">
                            <a href="#"><i class="icon icon-Search"></i></a>
                            <ul class="search">
                                <li>
                                    <form action="#" method="get" class="search-form">
                                        <div class="input-group">
                                            <input type="search" class="form-control" placeholder="Search for">
                                            <span class="input-group-addon">
                                                <button type="submit"><i class="icon icon-Search"></i></button>
                                            </span>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>-->
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</header>
<!--================Header Area =================-->