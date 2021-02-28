{use class="yii\helpers\Html"}
{use class="yii\base\View"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<!--================Política de privacidad Area =================-->
<section class='faq_page_container'>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                {$content['top_text']}
            </div>
        </div>
    </div>
</section>
<!--================End Política de privacidad Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}