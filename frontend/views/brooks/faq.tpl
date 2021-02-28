{use class="yii\helpers\Html"}
{*@var $this yii\web\View*}

{$this->renderFile("themes/brooks/views/_header.tpl", ['menu_contents' => $menu_contents])}
{$this->renderFile("themes/brooks/views/_banner_area.tpl", ['title' => $title, 'url' => $url])}

<!--================Carrers Area =================-->
<section class="faq_page_container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel-group faq_ques" id="accordion" role="tablist" aria-multiselectable="true">
                    {foreach key=key item=question from=$faqs}
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="faq{$key}">
                                <h4 class="panel-title">
                                    <a {if $key != 0}class="collapsed"{/if} role="button" data-toggle="collapse" data-parent="#accordion" href="#faq_c{$key}" aria-expanded="{if $key != 0}false{else}true{/if}true" aria-controls="company_c{$key}">
                                    P: {$question->question}
                                    <i class="fa fa-plus" aria-hidden="true"></i><i class="fa fa-minus" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="faq_c{$key}" class="panel-collapse collapse {if $key == 0}in{/if}" role="tabpanel" aria-labelledby="faq{$key}">
                                <div class="panel-body">
                                <p>
                                    {$question->answer}
                                </p>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                    </div>
            </div>
        </div>
    </div>
</section>
<!--================End Carrers Area =================-->

{$this->renderFile("themes/brooks/views/_footer.tpl")}
