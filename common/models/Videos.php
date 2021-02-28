<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "videos".
 *
 * @property int $id
 * @property string $title
 * @property string $preview_image
 * @property string $url
 * @property int $status
 */
class Videos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'videos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'preview_image', 'url'], 'required'],
            [['status'], 'integer'],
            [['title'], 'string', 'max' => 256],
            [['preview_image', 'url'], 'string', 'max' => 512],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'preview_image' => 'Preview Image',
            'url' => 'Url',
            'status' => 'Status',
        ];
    }
}
