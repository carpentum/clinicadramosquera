{*@var $form yii\bootstrap\ActiveForm*}
{*@var $model \frontend\models\ContactForm*}
{use class="yii\helpers\Html"}
{use class="yii\bootstrap\ActiveForm" type='block'}
{use class="yii\captcha\Captcha"}

{ActiveForm assign='form' id='contact-form' options=['class' => 'contact_us_form']}
    <div class="form-group col-md-12">
        {$form->field($model, 'name')->textInput(['class' => 'form-control', 'autofocus' => false, 'placeholder' => 'Nombre'])->label(false)}
        {$form->field($model, 'email')->textInput(['class' => 'form-control', 'id' => 'email', 'type' => 'email', 'placeholder' => 'Email'])->label(false)}
        {$form->field($model, 'subject')->textInput(['class' => 'form-control', 'id' => 'subject', 'type' => 'text', 'placeholder' => 'Título'])->label(false)}
        {$form->field($model, 'body')->textarea(['rows' => 6, 'clases' => 'form-control', 'id' => 'body', 'placeholder' => 'Mensaje'])->label(false)}

        {$form->field($model, 'verifyCode')->widget(Captcha::className(), [
            'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>'
        ])->label(false)}
        {Html::submitButton('Enviar', ['class' => 'fancy-btn', 'name' => 'contact-button'])}
    </div>

{/ActiveForm}
