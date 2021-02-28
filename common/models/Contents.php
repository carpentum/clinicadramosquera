<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "contents".
 *
 * @property int $id
 * @property string $dateposted
 * @property int $status
 * @property int $id_type
 * @property int $id_category
 * @property string|null $image
 * @property string $thumb_image
 * @property string|null $video
 * @property string|null $name
 * @property string|null $summary
 * @property string|null $description
 * @property string|null $title_meta
 * @property string|null $description_meta
 */
class Contents extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'contents';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dateposted'], 'safe'],
            [['status', 'id_type', 'id_category'], 'integer'],
            [['id_type', 'thumb_image'], 'required'],
            [['summary', 'description'], 'string'],
            [['image', 'thumb_image', 'name', 'title_meta', 'description_meta'], 'string', 'max' => 255],
            [['video'], 'string', 'max' => 512],
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
            'id_category' => 'Id Category',
            'image' => 'Image',
            'thumb_image' => 'Thumb Image',
            'video' => 'Video',
            'name' => 'Name',
            'summary' => 'Summary',
            'description' => 'Description',
            'title_meta' => 'Title Meta',
            'description_meta' => 'Description Meta',
        ];
    }
}
