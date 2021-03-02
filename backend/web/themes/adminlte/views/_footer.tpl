{use class="yii\helpers\Url"}
{use class="yii\helpers\Html"}

<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 2.4.18
    </div>
    <strong>Copyright &copy; {date("Y")} <a href="{Yii::$app->params['frontend_url']}" target="_blank">{Html::encode(Yii::$app->name)}</a>.</strong> All rights reserved. {Yii::powered()}
</footer>
