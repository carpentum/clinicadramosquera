{use class="yii\helpers\Html"}
<div class="banner_link">
    <div class="container">
        <div class="abnner_link_inner">
            <a class="active" href="/">Inicio</a>
            {if ! empty($section)}
                <a class="active" href="#">{$section}</a>
            {/if}
            <a href="{Html::encode($url)}">{Html::encode($title)}</a>
        </div>
    </div>
</div>