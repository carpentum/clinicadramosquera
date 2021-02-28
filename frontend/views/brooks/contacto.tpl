{*@var $this yii\web\View*}
{*@var $form yii\bootstrap\ActiveForm*}
{*@var $model \frontend\models\ContactForm*}
{use class="yii\helpers\Html"}
{use class="yii\bootstrap\ActiveForm" type='block'}
{use class="yii\captcha\Captcha"}

{*$this->title = 'Contact'*}
{*$this->params['breadcrumbs'][] = $this->title*}
{Html::encode($this->title)}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}


<!--================Contact Us Area =================-->
<section class="contact_us_area">
    <div class="container">
        <div class="contact_us_inner">
            <div class="sec_middle_title">
                <h1>Escríbenos un mensaje</h1>
               <!--  <p>Lorem ipsum dolor sit amet cons ectetur elit Vestibulum nec odios Suspe ndisse cursus mal suada faci lisis consectetur elit Vesti bulum nec odio ipsum ons ectetur elit. </p> -->
            </div>
            <div class="row">
                {if Yii::$app->session->hasFlash('success')}
                    {$flash = Yii::$app->session->getFlash('success')}
                    {$class = 'success'}
                {else if Yii::$app->session->hasFlash('error')}
                    {$flash = Yii::$app->session->getFlash('error')}
                    {$class = 'error'}
                {/if}

                {if ! empty($flash)}
                    <div class='col-md-12'>
                        <div class="alert alert-{$class} fade in alert-dismissible">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                            <strong>{$flash['title']}</strong> {$flash['message']}
                        </div>
                    </div>
                {/if}
                <div class="col-md-4">
                    <div class="contact_us_details">
                        <div class="row">

                                <div class="c_details_item">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="fa fa-map-marker"></i>
                                        </div>
                                        <div class="media-body">
                                            <p> {Yii::$app->params['address']}</p>
                                        </div>
                                    </div>

                            </div>

                                <div class="c_details_item">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="fa fa-envelope-o"></i>
                                        </div>
                                        <div class="media-body">
                                            {Html::a(Yii::$app->params['supportEmail'], 'mailto:'|cat:Yii::$app->params['supportEmail'])}
                                        </div>
                                    </div>
                                </div>


                                <div class="c_details_item">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <div class="media-body">
                                            <a href="#">{Yii::$app->params['phone_no']}</a>
                                        </div>
                                    </div>
                                </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row site-contact">
                        {$this->renderFile("themes/brooks/views/_contact_form.tpl", ['model' => $model])}
                    </div>
                </div>

            </div>
        </div>

    </div>
</section>
<!--================End Contact Us Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}
