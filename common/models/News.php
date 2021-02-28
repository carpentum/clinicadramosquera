<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property int $id
 * @property string $dateposted
 * @property int $status
 * @property int $published
 * @property string $date
 * @property string|null $title
 * @property string|null $content
 * @property string $detail_info
 * @property string|null $image
 * @property string|null $video
 */
class News extends \yii\db\ActiveRecord
{
    
    CONST STATUS_PUBLISHED = 1;
    
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dateposted', 'date'], 'safe'],
            [['status', 'published'], 'integer'],
            [['date', 'detail_info'], 'required'],
            [['content', 'detail_info'], 'string'],
            [['title', 'image'], 'string', 'max' => 255],
            [['video'], 'string', 'max' => 521],
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
            'published' => 'Published',
            'date' => 'Date',
            'title' => 'Title',
            'content' => 'Content',
            'detail_info' => 'Detail Info',
            'image' => 'Image',
            'video' => 'Video',
        ];
    }
}
