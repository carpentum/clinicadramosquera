{*/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */*}

{use class="yii\helpers\Html"}
{use class="yii\web\Response"}

{*$this->title = $name*}
<div class="wrapper">

    {$this->renderFile("themes/adminlte/views/_header.tpl")}
    <!-- Left side column. contains the logo and sidebar -->
    {$this->renderFile("themes/adminlte/views/_sidebar.tpl")}
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                {Html::encode($name)}
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">{$name}</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="error-page">
            <h2 class="headline text-yellow"> {Yii::$app->response->statusCode}</h2>

            <div class="error-content" style="padding-top:20px;">
              <h3><i class="fa fa-warning text-yellow"></i> Oops! {nl2br(Html::encode(Yii::$app->response->statusText))}</h3>

              <p>
                {nl2br(Html::encode($message))}<br>
                You may <a href="/">return to dashboard</a>
              </p>
            </div>
            <!-- /.error-content -->
          </div>
          <!-- /.error-page -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->