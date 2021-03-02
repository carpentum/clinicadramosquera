{use class="yii\helpers\Html"}
{use class="yii\bootstrap\ActiveForm"}

{*/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \mdm\admin\models\form\PasswordResetRequest */*}

<div class="login-box site-request-password-reset">
  <div class="login-logo">
      <a href="{Yii::$app->params['frontend_url']}" target="_blank"><b>Clínica Doctora Mosquera</b></a><br>
      Admin panel
  </div>
  <!-- /.login-logo -->
    <h1>{Html::encode($this->title)}</h1>
  <div class="login-box-body">
    <p class="login-box-msg">Please choose your new password.</p>
            {use class='yii\widgets\ActiveForm' type='block'}
            {ActiveForm assign='form' id='reset-password-form' action='' options=['class' => '']}
                {$form->field($model, 'password')->passwordInput()}
                {$form->field($model, 'retypePassword')->passwordInput()}
                <div class="form-group">
                    {Html::submitButton('Save', ['class' => 'btn btn-primary'])}
                </div>
            {/ActiveForm}

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
