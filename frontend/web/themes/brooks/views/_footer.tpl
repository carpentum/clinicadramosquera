<div class="footer_up">
    <div class="container">
        <div class="row">
        <div class="col-md-4">
            <div class="outer_bx">
                <div class="icon">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                </div>
                <h3>ven a vernos</h3>
                <p>
                    {Yii::$app->params['address']}
                </p>
            </div>
        </div><!-- /col -->
        <div class="col-md-4 blue-brk">
            <div class="outer_bx pd-l-80">
                <div class="icon">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                </div>
                <h3>llámanos</h3>
                <p>
                    <a href="tel:+34604025827">{Yii::$app->params['phone_no']}</a>

                </p>
            </div>
        </div><!-- /col -->
        <div class="col-md-4">
            <div class="outer_bx pd-l-40">
                <div class="icon">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                </div>
                <h3>Envíanos un email</h3>
                <p>
                    <a href="mailto:info@clinicadramosquera.com">{Yii::$app->params['supportEmail']}</a>

                </p>
            </div>
        </div><!-- /col -->
        </div>
    </div>
</div>
<!--================Footer Area =================-->
<footer class="footer_area">

    <div class="footer_widget">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="map-outer-col">
                        <!--Map Canvas-->
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11579.31862464239!2d-8.2391685!3d43.4850252!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x45f60cbcd0e9ed92!2sCl%C3%ADnica%20de%20Medicina%20Est%C3%A9tica%20Dra.%20Mosquera!5e0!3m2!1ses!2ses!4v1607195318774!5m2!1ses!2ses" width="100%" height="450" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <aside class="f_widget padd-l-60">
                        <div class="f_title">
                            <h3>Horario</h3>
                        </div>
                        <div class="opening-hour">
                            <ul class="day-time">
                                <li>
                                    <strong class="day">lunes:</strong> <span>según cita previa</span>
                                </li>
                                <li>
                                    <strong class="day">martes:</strong> <span>según cita previa</span>
                                </li>
                                <li>
                                    <strong class="day">miércoles:</strong> <span>según cita previa</span>
                                </li>
                                <li>
                                    <strong class="day">jueves:</strong> <span>según cita previa</span>
                                </li>
                                <li>
                                    <strong class="day">viernes:</strong><span>según cita previa</span>
                                </li>

                            </ul>
                        </div>
                    </aside>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-12">
                    <aside class="f_widget padd-l-65">
                        <div class="f_title">
                            <h3>Enlaces rápidos</h3>
                        </div>
                        <div class="link_widget">
                            <ul>
                                <li><a href="/">- Inicio</a></li>
                                <li><a href="/sobre-nosotros">- Sobre mí</a></li>
                                <li><a href="/nuestro-equipo">- Equipo</a></li>
                                <li><a href="/preguntas-frecuentes">- FAQ</a></li>
                                <li><a href="/blog">- Blog</a></li>
                                <li><a href="/contacto">- Contacto</a></li>
                            </ul>
                        </div>
                    </aside>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <aside class="f_widget padd-l-60">
                        <div class="f_title">
                            <h3>Legalidad</h3>
                        </div>
                        <div class="link_widget">
                            <ul>
                                <li><a href="/politica-de-privacidad">- Política de privacidad</a></li>
                                <li><a href="/aviso-legal">- Aviso legal</a></li>
                            </ul>
                            <div class="f_social">
                                <ul>
                                    <li><a href="https://www.facebook.com/clinicadramosquera" target="_blank"><i class="fa fa-facebook-f"></i></a></li>
                                    <li><a href="https://instagram.com/clinica_dra.mosquera" target="_blank"><i class="fa fa-instagram"></i></a></li>
                                </ul>

                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_copyright">
        <div class="container">
            <div class="footer_copyright_inner">
                <div class="pull-left">
                    <p>Copyright © {date("Y")} All rights reserved. </p>
                </div>
                <!--<div class="pull-right">
                    <h4>Created by: <a href="#">Themelab15</a></h4>
                </div>-->
            </div>
        </div>
    </div>
    <a href="javascript:void(0)" id="scroll" title="Scroll to Top">
        <span class="fa fa-angle-up"></span> 
    </a>
</footer>
