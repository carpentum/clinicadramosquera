<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "contents_categories".
 *
 * @property int $id
 * @property string $dateposted
 * @property int $status
 * @property int $id_type
 * @property string $name
 * @property string $alias
 * @property string $title
 * @property string $description
 */
class Contents_categories extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'contents_categories';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dateposted'], 'safe'],
            [['status', 'id_type'], 'integer'],
            [['id_type', 'name', 'alias', 'title', 'description'], 'required'],
            [['name', 'alias', 'title', 'description'], 'string', 'max' => 255],
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
            'id_type' => 'Id Type',
            'name' => 'Name',
            'alias' => 'Alias',
            'title' => 'Title',
            'description' => 'Description',
        ];
    }
}
