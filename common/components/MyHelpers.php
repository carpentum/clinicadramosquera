<?php
namespace common\components;

use common\models\StaticContent;
use common\models\Testimonios;
use common\models\News;
use common\models\ContentsTypes;
use common\models\Contents_categories;
use common\models\Contents;
use common\models\Faq;
use common\models\Videos;

class MyHelpers
{
    
    const MONTHS_ES = [
        '01' => 'enero',
        '02' => 'febrero',
        '03' => 'marzo',
        '04' => 'abril',
        '05' => 'mayo',
        '06' => 'junio',
        '07' => 'julio',
        '08' => 'agosto',
        '09' => 'septiembre',
        '10' => 'octubre',
        '11' => 'noviembre',
        '12' => 'diciembre',
    ];
    
    public static function getMonthsEs($key){
        return self::MONTHS_ES[$key];
    }
    
    public static function getStaticContent($name) {
        
        return StaticContent::find()
            ->where(['name' => $name])
            ->one();
        
    }
    
    public static function getTestimoniosContent() {
        
        return Testimonios::find()->all();
        
    }
    
    public static function getBlogContent($limit = false) {
        
        $entries = News::find()
            ->where(['status' => News::STATUS_PUBLISHED])
            ->orderBy('date DESC');
        
        if ( ! empty($limit) ) {
            $entries->limit($limit); 
        } 
        
        $results = $entries->all();
        
        return $results;
        
    }
    
    public static function getMenuContents(){
        $contents = [];
        
        $contents['categories'] = self::getContentCategories();
        $contents['types'] = self::getContentTypes();
        $contents['elements'] = self::getContents();
        
        /*foreach ($content_types as $content_type) {
            $types[$content_type->id]['type_name'] = $content_type->name;
            $types[$content_type->id]['type_id'] = $content_type->id;
        }
        
        $categorias = [];
        foreach ($content_categories as $key => $category) {
            $categorias[$category->id]['category_id'] = $category->id;
            $categorias[$category->id]['category_name'] = $category->name;
            $categorias[$category->id]['type_id'] = $category->id_type;
            $categorias[$category->id]['type_name'] = $types[$category->id_type];
        }
            
        foreach ($content_elements as $key => $element) {
            $elemento = [];
            $elemento['name'] = $element->name;
            $elemento['id'] = $element->id;
            $elemento['content'] = array_merge($categorias[$element->id_category], $elemento);
            $elemento['category'] = $categorias[$elemento['content']['category_id']];
            $elemento['type'] = $types[$elemento['content']['type_id']];

            if ( ! isset($contents[$types[$elemento['type']['type_id']]['type_name']]) ) {
                $contents[$types[$elemento['type']['type_id']]['type_name']] = [];
            }

            if ( ! isset($contents[$types[$elemento['type']['type_id']]['type_name']][$elemento['category']['category_name']]) ) {
                $contents[$types[$elemento['type']['type_id']]['type_name']][$elemento['category']['category_name']] = [];
            }
            $contents[$types[$elemento['type']['type_id']]['type_name']][$elemento['category']['category_name']][] = $elemento;
        }
        var_dump($contents);die;*/
        
        return $contents;
    }
    
    private static function getContentTypes() {
        
        return ContentsTypes::find()
            ->orderBy('name DESC')
            ->all();
        
    }
    
    public static function getContentCategories($category_id = '') {
        
        $categories = [];
        
        $query = Contents_categories::find()
            ->orderBy('name DESC');
        
        if ( ! empty($category_id) ) {
            $query->where(['id' => $category_id]);
        }
        
        $categories = $query->all();
        
        return $categories;
        
    }
    
    public static function getContents($id = '', $id_category = '', $published = true, $id_type) {
        
        $contents = [];
        
        $query = new \yii\db\Query;
        $query->select('c.*, cc.name as category_name')
            ->from('contents c');
        
        if ( ! empty($published) ) {
            $query->where(['c.status' => News::STATUS_PUBLISHED]);
        }
        
        $query->orderBy('c.name DESC');
        
        if ( ! empty($id) ) {
            $query->where(['c.id' => $id]);
        }
        
        if ( ! empty($id_category) ) {
            $query->where(['c.id_category' => $id_category]);
        }
        
        if ( ! empty($id_type) ) {
            $query->where(['c.id_type' => $id_type]);
        }
                
        $contents = $query
                ->leftJoin('contents_categories cc', 'c.id_category = cc.id')
                ->all();
        
        return $contents;
        
    }
    
    public static function slugify($text)
    {
      // replace non letter or digits by -
      $text = preg_replace('~[^\pL\d]+~u', '-', $text);

      // transliterate
      $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

      // remove unwanted characters
      $text = preg_replace('~[^-\w]+~', '', $text);

      // trim
      $text = trim($text, '-');

      // remove duplicate -
      $text = preg_replace('~-+~', '-', $text);

      // lowercase
      $text = strtolower($text);

      if (empty($text)) {
        return 'n-a';
      }

      return $text;
    }
    
    public static function getServiceData($id){
        
        $data = [];
        
        $data['service'] = MyHelpers::getContents($id);
        $data['category'] =  MyHelpers::getContentCategories($data['service'][0]->id_category);
        $data['category_services'] = MyHelpers::getContents('', $data['category'][0]->id);
        
        return $data;
        
    }
    
    public static function getFaq() {
        
        $result = [];
        
        $query = Faq::find()
            ->where(['status' => News::STATUS_PUBLISHED]);
        $sql = $query->createCommand()->sql;
        $result = $query->all();
        
        return $result;
        
    }
    
    public static function getVideos() {
        
        $result = [];
        
        $query = Videos::find()
            ->where(['status' => News::STATUS_PUBLISHED])
            ->limit(3)
            ->orderBy('datetime DESC, id DESC');
        $sql = $query->createCommand()->sql;
        $result = $query->all();
        
        return $result;
        
    }
}