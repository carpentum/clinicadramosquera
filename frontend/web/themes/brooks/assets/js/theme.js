;(function($) {
    "use strict";
    
    
    var navbar=$('.header_menu, .middle_menu_area, .header_white_menu');
    var nav_offset_top = $('.header_menu, .middle_menu_area, .header_white_menu').offset().top + 60;
    /*-------------------------------------------------------------------------------
      Navbar 
    -------------------------------------------------------------------------------*/

    navbar.affix({
      offset: {
        top: nav_offset_top,
      }
    });


    navbar.on('affix.bs.affix', function() {
        if (!navbar.hasClass('affix')){
            navbar.addClass('animated slideInDown');
        }
    });

    navbar.on('affixed-top.bs.affix', function() {
        navbar.removeClass('animated slideInDown');
        
    });
    
    /*------- search form js -------*/
    $('.search_dropdown a').on('click', function(){
        if( $(this).parent().hasClass('open-search') ){
            $(this).parent().removeClass('open-search')
        }
        else{
            $(this).parent().addClass('open-search')
            $('.offcanvas_closer').addClass('show')
        }
        return false
    });
//navigation-header-js-Start

$(document).ready(function () {
                $(' .navbar-nav > li > .dropdown-menu > li').on('click', function () {
                    if ($(this).parent().parent().hasClass('open')) {

                        $(this).find(".dropdown-menu").toggleClass("opensubmenu");

                        if ($(this).children().hasClass("dropdown-menu")) {
//                            return false;
                        event.stopPropagation();
                        }

                    }
                });


                $(' .header-part .navbar-inverse .navbar-nav > li ').on('click', function () {
//                                 if($(this).hasClass('dropdown-toggle')){
                    $(".dropdown-menu").removeClass("opensubmenu");
//                                    }
                });

                if ($(window).width() < 991) {
                    $('.megamenu-content .title ').on('click', function () {
                        $(".megamenu-content .title").not($(this)).siblings().hide();
                        $(this).siblings().toggle();
//                        return false;
                       event.stopPropagation();
                    });

                }
                
            });

//navigation-header-js-End    
    
/* Main Slide Function*/
function sliderCarosule () {
    if ($('.slider_area .owl-carousel').length) {
        $('.slider_area .owl-carousel').owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            autoplay: true,
            singleItem : true,
            animateIn: 'fadeIn',
              animateOut: 'fadeOut',
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            smartSpeed: 1500,
            autoplayHoverPause: true,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                },
                1200:{
                    items:1
                },
                1920:{
                    items:1
                }
            }
        });
    }
}
sliderCarosule ();

/* Service Slider Function*/
function serviceslidersecond () {
    if ($('.services .owl-carousel').length) {
        $('.services .owl-carousel').owlCarousel({
            loop: true,
            margin: 30,
            nav: false,
            dots: false ,
            autoplay: true,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            smartSpeed: 1000,
            autoplayHoverPause: true,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:1
                },
                600:{
                    items:2
                },
                1000:{
                    items:4
                },
                1200:{
                    items:4
                },
                1920:{
                    items:4
                }
            }
        });
    }
}
serviceslidersecond ();  

/* After Before Gallery Function*/ 
function afterbeforeCarosule () {
    if ($('.after_before_gallery .owl-carousel').length) {
        $('.after_before_gallery .owl-carousel').owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            dots: false,
            autoplay: true,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            smartSpeed: 1500,
            autoplayHoverPause: true,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                },
                1200:{
                    items:1
                },
                1920:{
                    items:1
                }
            }
        });
    }
}
afterbeforeCarosule ();

/* Testimonials Function*/
function testimonialsCarosuletwo () {
    if ($('.testimonials .owl-carousel').length) {
        $('.testimonials .owl-carousel').owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            dots: false ,
            autoplay: false,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            autoplayHoverPause: true,
            smartSpeed: 1500,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                },
                1200:{
                    items:1
                },
                1920:{
                    items:1
                }
            }
        });
    }
}
testimonialsCarosuletwo ();     

/* Team Function*/ 
function teamCarosule () {
    if ($('.team_area_bx .owl-carousel').length) {
        $('.team_area_bx .owl-carousel').owlCarousel({
            loop: true,
            margin: 30,
            nav: false,
            dots: true ,
            autoplay: true,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            autoplayHoverPause: true,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                },
                1200:{
                    items:1
                },
                1920:{
                    items:1
                }
            }
        });
    }
}
teamCarosule ();
    
// add your custom functions 
    
/* Clients Logo Function*/
function clientCarosule () {
    if ($('#clients .owl-carousel').length) {
        $('#clients .owl-carousel').owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            margin:70,
            autoWidth: true,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            autoplay: true,
            smartSpeed: 1500,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0:{
                    items:1
                },
                480:{
                    items:2
                },
                600:{
                    items:3
                },
                1000:{
                    items:4
                },
                1200:{
                    items:4
                }
            }
        });
    }
}
clientCarosule();

/* Counter Function*/
function CounterNumberChanger () {
    var timer = $('.timer');
    if(timer.length) {
        timer.appear(function () {
            timer.countTo();
        })
    }

}
CounterNumberChanger();

/* Contact Form Function*/   
 function contactFormValidation () {
    if($('.contact_us_form').length){
        $('.contact_us_form').validate({ // initialize the plugin
            rules: {
                name: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                body: {
                    required: true
                },
                subject: {
                    required: true
                }
            },
            submitHandler: function (form) { 
                // sending value with ajax request
                $.post($(form).attr('action'), $(form).serialize(), function (response) {
                    $(form).parent('div').append(response);
                    $(form).find('input[type="text"]').val('');
                    $(form).find('input[type="email"]').val('');
                    $(form).find('textarea').val('');
                });
                return false;
            }
        });
    }
}
//contactFormValidation ();   

/* Video Popup Function*/    
    $(document).ready(function() {
        $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,

            fixedContentPos: false
        });
    });
            
            
// scroll bottom to top button js Start
   
$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 150) {
                $('#scroll').fadeIn();
            } else {
                $('#scroll').fadeOut();
            }
        });
    $('#scroll').on('click', function () {
        $("html, body").animate({scrollTop: 0}, 600);
            return false;
    });
});

   
//  scroll bottom to top button js End

})(jQuery);
            
            