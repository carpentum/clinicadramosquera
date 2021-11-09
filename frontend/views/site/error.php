<?php 
use yii\helpers\Html;
/*@var $this yii\web\View*/

$this->title = $name;
?>


<?= $this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents]);?>

<!--================Política de privacidad Area =================-->
<section style='padding:250px 0 100px;'>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <h1 style="text-align: center;margin-bottom: 20px;a"><?= Html::encode($this->title) ?></h1>
                <p style="text-align: center"><?= nl2br(Html::encode($message))?></p>
                <!--<p>
                    The above error occurred while the Web server was processing your request.
                </p>
                <p>
                    Please contact us if you think this is a server error. Thank you.
                </p>-->
            </div>
        </div>
    </div>
</section>
<!--================End Política de privacidad Area =================-->

<?= $this->renderFile("themes/brooks/views/_footer.tpl")?>