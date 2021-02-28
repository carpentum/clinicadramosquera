<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "contents_types".
 *
 * @property int $id
 * @property string $dateposted
 * @property int $status
 * @property string $name
 * @property string $alias
 */
class ContentsTypes extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'contents_types';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dateposted'], 'safe'],
            [['status'], 'integer'],
            [['name', 'alias'], 'required'],
            [['name', 'alias'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'dateposted' => 'Dateposted',
            'status' => 'Status',
            'name' => 'Name',
            'alias' => 'Alias',
        ];
    }
}
