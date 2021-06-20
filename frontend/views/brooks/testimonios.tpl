{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<div class="testimonial-page">
    <div class="container">
        <div class="row">
            {$counter = 1}
            {foreach from=$content item=testimonio}
                <div class="col-md-6" {if $counter %2 == 1}style='clear: both;display: block'{/if}>
                    <div class="testimonial">
                        <p class="description">
                            {$testimonio['texto']}
                        </p>
                        <h3 class="title">{$testimonio['nombre']}</h3>
                        <small class="post">- Cliente</small>
                    </div>
                </div>
                {$counter = $counter +1}
            {/foreach}
        </div>
    </div>
</div>
<!--End our-team-area-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}