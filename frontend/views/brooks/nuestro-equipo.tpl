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
                            <div class="team-position">Especialista en anestesia y reanimación y tratamiento del dolor</div>
                        </div>
                        <div class="team-content small">
                            Especialista en el área de cuidados intensivos de cirugía cardíaca. Especialista en medicina estética. Master realizado en la Universidad de Palma de Mallorca. Especialista en el área prehospitalario y emergencias.
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
                            <div class="team-name font-accident-two-bold-italic">Iria Rodríguez</div>
                            <div class="team-position">Especialista en anestesia reanimación y tratamiento del dolor.</div>
                        </div>
                        <div class="team-content small">
                            Máster en medicina estética.
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
                            <div class="team-name font-accident-two-bold-italic">Valeria Gisela Merlo</div>
                            <div class="team-position">Auxiliar de clínica.</div>
                        </div>
                        <div class="team-content small">
                            Especialista en el área de medicina estética.
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