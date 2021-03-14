<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        {$page}
        {if ! empty($page_description)}
            <small>{$page_description}</small>
        {/if}
    </h1>
    <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        {if ! empty($section)}
            <li><a href="#">{$section}</a></li>
        {/if}
        <li class="active">{$page}</li>
    </ol>
</section>