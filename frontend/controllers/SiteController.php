<?php
namespace frontend\controllers;

use common\components\MyHelpers;
use common\models\News;
use common\models\LoginForm;
use frontend\models\ContactForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResendVerificationEmailForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\Url;
use yii\helpers\Html;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\web\UrlManager;

/**
 * Site controller
 */
class SiteController extends Controller
{
    
   public $layout = 'mainbrooks';
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],

                    [
                        'actions' => ['captcha'],
                        'allow' => true,
                        'roles' => ['?', '@'],
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
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
                //'fixedVerifyCode' => 'testme',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        $testimonials = MyHelpers::getTestimoniosContent();
        
        $videos = MyHelpers::getVideos();
        
        $blog_items = MyHelpers::getBlogContent(4);
        
        $this->view->title = 'Clínica Doctora Mosquera';
        
        //$this->layout = 'main'; //In case I want to overwrite the default layout
        return $this->render('/brooks/index.tpl', [
            'menu_contents' => $menu_contents,
            'testimonials' => $testimonials,
            'videos' => $videos,
            'blog_items' => $blog_items,
            'monthsEs'   => MyHelpers::MONTHS_ES,
        ]);
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        $this->view->title = 'Contacto';
        
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['supportEmail'])) {
                Yii::$app->session->setFlash('success', ['title' => '¡Enviado!', 'message' => 'Gracias por contactar con nosotros. Te responderemos tan pronto como sea posible.']);
            } else {
                Yii::$app->session->setFlash('error', ['title' => '¡Error!', 'message' => 'There was an error sending your message.']);
            }

            return $this->refresh();
            
        } else {
            return $this->render('/brooks/contacto.tpl', [
                'menu_contents' => $menu_contents,
                'model' => $model,
                'url'   => '/contacto',
                'title' => 'Contacto'
            ]);
        }
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionSobrenosotros()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $content = MyHelpers::getStaticContent('about');
        
        $this->view->title = 'Sobre nosotros';
        
        return $this->render('/brooks/sobre-nosotros.tpl', [
            'menu_contents' => $menu_contents,
            'content' => $content,
            'title' => 'Sobre nosotros',
            'url'   => '/sobre-nosotros',
        ]);
    }

    /**
     * Displays política de privacidad page.
     *
     * @return mixed
     */
    public function actionPolitica()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = 'Política de privacidad';
        
        $content = MyHelpers::getStaticContent('politica-de-privacidad');
        
        return $this->render('/brooks/politica-de-privacidad.tpl', [
            'menu_contents' => $menu_contents,
            'content' => $content,
            'title' => 'Política de privacidad',
            'url'   => '/politica-de-privacidad',
        ]);
    }

    /**
     * Displays aviso legal page.
     *
     * @return mixed
     */
    public function actionAviso()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $content = MyHelpers::getStaticContent('aviso-legal');
        
        $this->view->title = 'Aviso legal';
        
        return $this->render('/brooks/politica-de-privacidad.tpl', [
            'menu_contents' => $menu_contents,
            'content' => $content,
            'title' => 'Aviso legal',
            'url'   => '/aviso-legal',
        ]);
    }

    /**
     * Displays testimonios page.
     *
     * @return mixed
     */
    public function actionTestimonios()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $content = MyHelpers::getTestimoniosContent();
        
        $this->view->title = 'Testimonios';
        
        return $this->render('/brooks/testimonios.tpl', [
            'menu_contents' => $menu_contents,
            'content' => $content,
            'title' => 'Testimonios',
            'url'   => '/testimonios',
        ]);
    }

    /**
     * Displays blog page.
     *
     * @return mixed
     */
    public function actionBlog()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        //$this->params['breadcrumbs'][] = $this->title;
        
        $page_no = ( ! empty($_GET['page']) && is_int(intval($_GET['page'])) ) ? $_GET['page'] : 1;
        
        $content = MyHelpers::getBlogContent();
        
        $query = News::find()
                ->where(['status' => News::STATUS_PUBLISHED])
                ->orderBy('date DESC');
        
        $this->view->title = 'Blog';

        $pagination = new Pagination([
            'totalCount' => $query->count(), 
            'pageSize' => 3,
            'forcePageParam' => false,
            'pageSizeParam' => false,
            //'route' => "/blog/".Yii::$app->getRequest()->getQueryParam('page')
        ]);

        $news = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        
        return $this->render('/brooks/blog.tpl', [
            'menu_contents' => $menu_contents,
            'news' => $news,
            'title' => 'Blog',
            'url'   => '/blog',
            'monthsEsAbbr' => MyHelpers::MONTHS_ES_ABBR,
            'monthsEs'   => MyHelpers::MONTHS_ES,
            'pagination' => $pagination
        ]);
    }

    /**
     * Displays clinic page.
     *
     * @return mixed
     */
    public function actionClinica()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = 'La clínica';
        
        return $this->render('/brooks/clinica.tpl', [
            'menu_contents' => $menu_contents,
            'url'   => '/clinica',
            'title' => 'Clínica'
        ]);
    }

    /**
     * Displays team page.
     *
     * @return mixed
     */
    public function actionEquipo()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = 'Nuestro equipo';
        
        return $this->render('/brooks/nuestro-equipo.tpl', [
            'menu_contents' => $menu_contents,
            'url'   => '/nuestro-equipo',
            'title' => 'Nuestro equipo'
        ]);
    }

    /**
     * Displays faq page.
     *
     * @return mixed
     */
    public function actionPreguntas()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $faqs = MyHelpers::getFaq();
        
        $this->view->title = 'FAQ';
        
        return $this->render('/brooks/faq.tpl', [
            'menu_contents' => $menu_contents,
            'url'   => '/preguntas-frecuentes',
            'title' => 'Preguntas frecuentes',
            'faqs' => $faqs
        ]);
    }

    /**
     * Displays patologias page.
     *
     * @return mixed
     */
    public function actionPatologias()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = 'Patologías';
        
        return $this->render('/brooks/servicios.tpl', [
            'menu_contents' => $menu_contents,
            'title' => 'Patologías',
            'url'   => '/patologias',
            'type_name' => 'Patología'
        ]);
    }

    /**
     * Displays patologias page.
     *
     * @return mixed
     */
    public function actionTratamientos()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = 'Tratamientos';
        
        return $this->render('/brooks/servicios.tpl', [
            'menu_contents' => $menu_contents,
            'title' => 'Tratamientos',
            'url'   => '/tratamientos',
            'type_name' => 'Tratamiento'
        ]);
    }

    /**
     * Displays patologia page.
     *
     * @return mixed
     */
    public function actionPatologia()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        $patologia_string = Yii::$app->request->get('id');
        $patologia_array = explode("-", $patologia_string);
        $patologia_id = $patologia_array[count($patologia_array) - 1];
        
        $service_data = MyHelpers::getServiceData($patologia_id);
        
        $servicio = $service_data['service'];
        $category =  $service_data['category'];
        $servicios_categoria = $service_data['category_services'];
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = $servicio[0]['name'];
        
        return $this->render('/brooks/servicio.tpl', [
            'menu_contents' => $menu_contents,
            'section' => 'Patologías',
            'url'   => '/patologia/' . MyHelpers::slugify($servicio[0]['name']) . "-" . $servicio[0]['id'],
            'title' => $category[0]['name'],
            'service' => $servicio[0],
            'category' => $category[0],
            'servicios_categoria' => $servicios_categoria,
            'tipo_url' => 'patologia'
        ]);
    }

    /**
     * Displays patologia page.
     *
     * @return mixed
     */
    public function actionTratamiento()
    {
        $menu_contents = MyHelpers::getMenuContents();
        
        $tratamiento_string = Yii::$app->request->get('id');
        $tratamiento_array = explode("-", $tratamiento_string);
        $tratamiento_id = $tratamiento_array[count($tratamiento_array) - 1];
        
        $service_data = MyHelpers::getServiceData($tratamiento_id);
        
        $servicio = $service_data['service'];
        $category =  $service_data['category'];
        $servicios_categoria = $service_data['category_services'];
        
        //Default url: /frontend/web/index.php?r=site/about
        
        //$this->registerCssFile("/path/to/your/file/in/web/folder/style.css");
        
        //$this->params['breadcrumbs'][] = $this->title;
        
        $this->view->title = $servicio[0]['name'];
        
        return $this->render('/brooks/servicio.tpl', [
            'menu_contents' => $menu_contents,
            'section' => 'Tratamientos',
            'url'   => '/tratamiento/' . MyHelpers::slugify($servicio[0]['name']) . "-" . $servicio[0]['id'],
            'title' => $category[0]['name'],
            'service' => $servicio[0],
            'category' => $category[0],
            'servicios_categoria' => $servicios_categoria,
            'tipo_url' => 'tratamiento'
        ]);
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return $this->goHome();
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Verify email address
     *
     * @param string $token
     * @throws BadRequestHttpException
     * @return yii\web\Response
     */
    public function actionVerifyEmail($token)
    {
        try {
            $model = new VerifyEmailForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($user = $model->verifyEmail()) {
            if (Yii::$app->user->login($user)) {
                Yii::$app->session->setFlash('success', 'Your email has been confirmed!');
                return $this->goHome();
            }
        }

        Yii::$app->session->setFlash('error', 'Sorry, we are unable to verify your account with provided token.');
        return $this->goHome();
    }

    /**
     * Resend verification email
     *
     * @return mixed
     */
    public function actionResendVerificationEmail()
    {
        $model = new ResendVerificationEmailForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            }
            Yii::$app->session->setFlash('error', 'Sorry, we are unable to resend verification email for the provided email address.');
        }

        return $this->render('resendVerificationEmail', [
            'model' => $model
        ]);
    }
}
