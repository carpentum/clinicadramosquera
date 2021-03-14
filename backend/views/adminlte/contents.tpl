{use class="yii\grid\GridView"}
{use class="backend\assets\DatatableAsset"}

{DatatableAsset::register($this)|void}

{$this->registerJsFile("/themes/adminlte/assets/js/dataTable.js", ['depends' => [backend\assets\DatatableAsset::className()]])}

<div class="wrapper">

    {$this->renderFile("themes/adminlte/views/_header.tpl")}
    <!-- Left side column. contains the logo and sidebar -->
    {$this->renderFile("themes/adminlte/views/_sidebar.tpl")}
  
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        {$this->renderFile("themes/adminlte/views/_content_header.tpl", ['page' => $page])}

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <!-- /.box -->
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Data Table With Full Features</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            {GridView::widget([
                                'dataProvider' => $dataProvider,
                                'columns' => $columns,
                                'tableOptions' => ['class' => 'table table-bordered table-striped dataTable responsive w-100']
                            ])}
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    
    {$this->renderFile("themes/adminlte/views/_footer.tpl")}
    {$this->renderFile("themes/adminlte/views/_control_sidebar.tpl")}
</div>
<!-- ./wrapper -->
