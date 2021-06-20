{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<div class="section ourTeam">
    <div class="container">

        <div class="row">
            <div class="col-md-3">
                <div class="team-member">
                    <figure class="effect-zoe">
                        <div class="team-photo">
                            <img src="themes/brooks/assets/img/team/1.jpg" alt="Rachel James Johnes" class="img-responsive">
                        </div>
                        <div class="team-attrs">
                            <div class="team-name font-accident-two-bold-italic">Bea Mosquera</div>
                            <div class="team-position">CEO y médico estético</div>
                        </div>
                        <div class="team-content small">
                            Truong is also the recipient of The George C. Lin Emerging Filmmaker Award from the San Diego
                        </div>
                    </figure>
                </div>
                <div class="dividewhite4"></div>
            </div>

            <div class="col-md-3">
                <div class="team-member">
                    <figure class="effect-zoe">
                        <div class="team-photo">
                            <img src="themes/brooks/assets/img/team/2.jpg" alt="Rachel James Johnes" class="img-responsive">
                        </div>
                        <div class="team-attrs">
                            <div class="team-name font-accident-two-bold-italic">Iria</div>
                            <div class="team-position">Médico estético</div>
                        </div>
                        <div class="team-content small">
                            Truong is also the recipient of The George C. Lin Emerging Filmmaker Award from the San Diego
                        </div>
                    </figure>
                </div>
                <div class="dividewhite4"></div>
            </div>

            <div class="col-md-3">
                <div class="team-member">
                    <figure class="effect-zoe">
                        <div class="team-photo">
                            <img src="themes/brooks/assets/img/team/3.jpg" alt="Rachel James Johnes" class="img-responsive">
                        </div>
                        <div class="team-attrs">
                            <div class="team-name font-accident-two-bold-italic">Valeria</div>
                            <div class="team-position">Administración</div>
                        </div>
                        <div class="team-content small">
                            Truong is also the recipient of The George C. Lin Emerging Filmmaker Award from the San Diego
                        </div>
                    </figure>
                </div>
                <div class="dividewhite4"></div>
            </div>
        </div>
    </div>
</div>
<!--End our-team-area-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}