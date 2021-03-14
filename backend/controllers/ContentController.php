<?php

namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\components\MyHelpers;
use common\models\Contents;
use yii\data\ArrayDataProvider;
use yii\helpers\Html;

/**
 * Content controller
 */
class ContentController extends Controller {

    public $layout = 'mainadminlte';

    /**
     * {@inheritdoc}
     */
    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['patologias', 'error'],
                        'allow' => true,
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays patologías.
     *
     * @return string
     */
    public function actionPatologias() {
        $page = "Patologías";

        $pathology_cat = (!empty($_POST['pathology_cat']) ) ? $_POST['pathology_cat'] : '';

        $pathologies = MyHelpers::getContents('', $pathology_cat, false, Contents::TYPE_PATHOLOGY);

        $dataProvider = new ArrayDataProvider([
            'allModels' => $pathologies,
            'sort' => [
                'attributes' => [
                    'name',
                    'summary',
                    'dateposted',
                    'description',
                    'category_name',
                    'status'
                ],
                'defaultOrder' => [
                    'name' => SORT_ASC
                ]
            ],
            'pagination' => [
                'pagesize' => 10,
            ]
        ]);

        $columns = [
            [
                'label' => 'Título',
                'attribute' => 'name'
            ],
            [
                'label' => 'Resumen',
                'attribute' => 'summary',
                'value' => function($data) {
                    if (!empty($data['summary'])) {
                        return substr(trim(strip_tags($data['summary'])), 0, 30) . "...";
                    } else {
                        return '';
                    }
                }
            ],
            [
                'label' => 'Fecha de creación',
                'attribute' => 'dateposted',
                'value' => function($data) {
                    if (!empty($data['dateposted'])) {
                        return date("d-m-Y", strtotime($data['dateposted']));
                    } else {
                        return '';
                    }
                }
            ],
            [
                'label' => 'Descripción',
                'attribute' => 'description',
                'value' => function($data) {
                    if (!empty($data['description'])) {
                        return substr(trim(strip_tags($data['description'])), 0, 60) . "...";
                    } else {
                        return '';
                    }
                }
            ],
            [
                'label' => 'Categoría',
                'attribute' => 'category_name'
            ],
            [
                'label' => 'Publicada',
                'attribute' => 'status',
                'value' => function($data) {
                    if (!empty($data['status'])) {
                        return "Sí";
                    } else {
                        return 'No';
                    }
                }
            ],
            ['class' => 'yii\grid\ActionColumn',
                'template' => '{update}{delete}{publish}',
                'buttons' => [
                    'update' => function ($url, $model) {

                        return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                    'title' => Yii::t('yii', 'Create'),
                        ]);
                    },
                    'delete' => function ($url, $model) {

                        return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                    'title' => Yii::t('yii', 'Delete'), 'data-confirm' => Yii::t('app', 'Are you sure you want to delete this Record?'), 'data-method' => 'post'
                        ]);
                    },
                    'publish' => function ($url, $data) {
                        if ( empty($data['status'])) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                        'title' => Yii::t('yii', 'Publicar')
                            ]);
                        } else {
                            return Html::a('<span class="glyphicon glyphicon-eye-close"></span>', $url, [
                                        'title' => Yii::t('yii', 'Despublicar')
                            ]);
                        }
                    }
                ]
            ]
        ];

        return $this->render('/adminlte/contents.tpl', [
                    'page' => $page,
                    'dataProvider' => $dataProvider,
                    'columns' => $columns
        ]);
    }

}
