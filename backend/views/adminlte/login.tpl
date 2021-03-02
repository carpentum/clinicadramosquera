{use class="backend\assets\iCheckAsset"}
{use class="yii\base\View"}
{use class="yii\helpers\Html"}

{iCheckAsset::register($this)|void}

{$this->registerJsFile("/themes/adminlte/assets/js/icheckbox_square-blue.js", ['depends' => [backend\assets\iCheckAsset::className()]])}

<div class="login-box">
  <div class="login-logo">
      <a href="{Yii::$app->params['frontend_url']}" target="_blank"><b>Clínica Doctora Mosquera</b></a><br>
      Admin panel
  </div>
      {if (Yii::$app->session->hasFlash('success'))}
    <div class="alert alert-success alert-dismissable">
         <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
         <h4><i class="icon fa fa-check"></i>Saved!</h4>
         {Yii::$app->session->getFlash('success')}
    </div>
{/if}

{if (Yii::$app->session->hasFlash('error'))}
    <div class="alert alert-danger alert-dismissable">
         <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
         <h4><i class="icon fa fa-check"></i>Saved!</h4>
         {Yii::$app->session->getFlash('error')}
    </div>
{/if}
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
            {use class='yii\widgets\ActiveForm' type='block'}
            {ActiveForm assign='form' id='login-form' action='' options=['class' => '']}

      <div class="form-group has-feedback">
                {$form->field($model, 'username', [
            'template' => '{input}<span class="glyphicon glyphicon-envelope form-control-feedback"></span>{error}'
        ])->textInput(['autofocus' => true, 'class' => 'form-control', 'placeholder' => 'Email'])}
      </div>
      <div class="form-group has-feedback">
                {$form->field($model, 'password', [
            'template' => '{input}<span class="glyphicon glyphicon-lock form-control-feedback"></span>{error}'
        ])->passwordInput(['class' => 'form-control', 'placeholder' => 'Password'])}
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            {$form->field($model, 'rememberMe')->checkbox()}
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
                    {Html::submitButton('Login', ['class' => 'btn btn-primary btn-block btn-flat'])}
        </div>
        <!-- /.col -->
      </div>
      <div class="row">
        <div class="col-xs-12">
        

                <div style="color:#999;margin:1em 0">
                    {Html::a('I forgot my password', ['site/request-password-reset'])}.
                    <!--<br>
                    Need new verification email? {Html::a('Resend', ['site/resend-verification-email'])}-->
                </div>
        </div>
      </div>
    {/ActiveForm}

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->