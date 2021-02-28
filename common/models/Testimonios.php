<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "testimonios".
 *
 * @property int $id
 * @property string $nombre
 * @property string $texto
 * @property string $fecha
 * @property int $visible
 */
class Testimonios extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'testimonios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'texto'], 'required'],
            [['texto'], 'string'],
            [['fecha'], 'safe'],
            [['visible'], 'integer'],
            [['nombre'], 'string', 'max' => 64],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'texto' => 'Texto',
            'fecha' => 'Fecha',
            'visible' => 'Visible',
        ];
    }
}
