{use class="yii\helpers\Html"}
{use class="common\components\MyHelpers"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url, 'section' => $section|default:''])}

<!--================Carrers Area =================-->
<section class="service_page">
    <div class="container">
        <div class="row">
            {foreach item=type from=$menu_contents['types']}
                {if $type->name == $type_name}
                    {foreach item=category from=$menu_contents['categories']}
                        {if $category['id_type'] == $type->id}
                            {if $type_name == 'Patología'}
                                <div class="col-md-6">
                            {else}
                                <div class="col-md-3">
                            {/if}
                                <div class="services_page_content">
                                    <h2>{$category['name']}</h2>
                                    {foreach item=element from=$menu_contents['elements']}
                                        {if $element['id_category'] == $category->id}
                                            <a href="/patologia/{MyHelpers::slugify($element['name'])}-{$element['id']}">{$element['name']}</a>
                                        {/if}
                                    {/foreach}
                                </div>
                            </div><!-- end col-3 -->
                        {/if}
                    {/foreach}
                {/if}
            {/foreach}
        </div>
    </div>
</section>
<!--================End Carrers Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}
