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
    CONST TYPE_PATHOLOGY = 1;
    CONST TYPE_TREATMENT = 2;
    
    CONST CAT_FACIAL_TREATMENT = 1;
    CONST CAT_BODY_TREATMENT = 2;
    CONST CAT_OBESITY_NUTRITION = 3;
    CONST CAT_FACIAL_PATHOLOGY = 4;
    CONST CAT_BODY_PATHOLOGY = 5;
    
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
            'dateposted' => 'Fecha de publicación',
            'status' => 'Estado',
            'id_type' => 'Tipo',
            'id_category' => 'Categoría',
            'image' => 'Imagen',
            'thumb_image' => 'Imagen miniatura',
            'video' => 'Vídeo',
            'name' => 'Nombre',
            'summary' => 'Resumen',
            'description' => 'Descripción',
            'title_meta' => 'Title Meta',
            'description_meta' => 'Description Meta',
        ];
    }
}
