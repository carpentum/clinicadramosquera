{use class="yii\helpers\Html"}
<!--================Banner Area =================-->
<section class="banner_area banner_one non-index">
    <div class="container">
        <div class="banner_content">
            <h3>{Html::encode($title)}</h3>
        </div>
    </div>
</section>
{if ! empty($section) && $section != 'Tratamientos' && $section != 'Patologías'}
    {include file="themes/brooks/views/_breadcrumbs.tpl"}
{/if}

<!--================End Banner Area =================-->
