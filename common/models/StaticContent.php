<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "static_content".
 *
 * @property int $id
 * @property string $name
 * @property string $url
 * @property string $html
 */
class StaticContent extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'static_content';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'name', 'url', 'html'], 'required'],
            [['id'], 'integer'],
            [['name'], 'string', 'max' => 256],
            [['html'], 'string'],
            [['url'], 'string', 'max' => 256],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'url' => 'Url',
            'html' => 'Html',
        ];
    }
}
