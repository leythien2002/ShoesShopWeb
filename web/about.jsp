<%-- 
    Document   : about.jsp
    Created on : Dec 4, 2022, 9:24:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>About</title>
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>
        <!-- //custom-theme -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/about.css" type="text/css" media="screen" property="" />
        <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
        <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome-icons -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>

    <body>
        <!-- banner -->
        <div class="banner_top innerpage" id="home">
            <div class="wrapper_top_w3layouts">
                <div class="header_agileits">
                    <div class="logo inner_page_log">
                        <h1><a class="navbar-brand" href="index.html"><span>Downy</span> <i>Shoes</i></a></h1>
                    </div>
                    <div class="overlay overlay-contentpush">
                        <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

                        <nav>
                            <jsp:include page = "navigator.jsp"></jsp:include>

                            </nav>
                        </div>
                        <div class="mobile-nav-button">
                            <button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
                        </div>
                        <!-- cart details -->
                        <div class="top_nav_right">
                            <div class="shoecart shoecart2 cart cart box_1">
                                <form action="checkout" method="post" class="last">
                                    <button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //cart details -->

                <!-- //search -->
                <div class="clearfix"></div>
                <!-- /banner_inner -->
                <div class="services-breadcrumb_w3ls_agileinfo">
                    <div class="inner_breadcrumb_agileits_w3">

                        <ul class="short">
                            <li><a href="index.html">Home</a><i>|</i></li>
                            <li>About</li>
                        </ul>
                    </div>
                </div>
                <!-- //banner_inner -->
            </div>

            <!-- //banner -->
            <!-- top Products -->
            <div class="ads-grid_shop">
                <div class="shop_inner_inf">
                    <h3 class="head">About Us</h3>
                    <p class="head_para">Add Some Description</p>
                    <div class="inner_section_w3ls">
                        <div class="col-md-6 news-left">
                            <img src="images/ab.jpg" alt=" " class="img-responsive">
                        </div>
                        <div class="col-md-6 news-right">
                            <h4>Welcome to our Downy Shoes</h4>
                            <p class="sub_p">
                                This website is not a complete functional shopping website! 
                                This is a project for course!
                                Do not use this website for any other purpose!
                            </p>

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

            </div>
            <div class="mid_services">
                <div class="col-md-6 according_inner_grids">
                    <h3 class="heading two">Who We Are</h3>
                    <div class="according_info">
                        <div class="panel-group about_panel" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                                           aria-controls="collapseOne">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Nguyễn Việt Anh 
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body panel_text">
                                        Nguyễn Việt Anh - 20110352
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"
                                           aria-controls="collapseThree">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Lê Y Thiện
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body panel_text">
                                        Lê Y Thiện - 20110403
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="col-md-6 mid_services_img">
                    <div class="bar-grids">
                        <h3 class="heading two three">Our Skills</h3>
                        <div class="skill_info">
                            <h6>Development<span> 95% </span></h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped active" style="width: 95%">
                                </div>
                            </div>
                            <h6>Pricing<span> 85% </span></h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped active" style="width: 85%">
                                </div>
                            </div>
                            <h6>Production <span>90% </span></h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped active" style="width: 90%">
                                </div>
                            </div>
                            <h6>Advertising <span>86% </span></h6>
                            <div class="progress prgs-last">
                                <div class="progress-bar progress-bar-striped active" style="width: 86%">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="clearfix"> </div>
            </div>
            <!-- /Properties -->
            <div class="mid_slider_w3lsagile">
                <div class="col-md-3 mid_slider_text">
                    <h5>Some More Shoes</h5>
                </div>
                <div class="col-md-9 mid_slider_info">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                        <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="fa fa-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="fa fa-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                        <!-- The Modal -->

                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
            <!--//banner -->

            <!-- /newsletter-->
            <div class="newsletter_w3layouts_agile">
                <div class="col-sm-6 newsleft">
                </div>
                <div class="col-sm-6 newsright">

                </div>

                <div class="clearfix"></div>
            </div>
            <!-- //newsletter-->

            <!-- footer -->
        <jsp:include page = "footer.jsp"></jsp:include>

        <!-- //footer -->
        <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            shoe.render();

            shoe.cart.on('shoe_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
        </script>
        <!-- //cart-js -->
        <!-- /nav -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/demo1.js"></script>
        <!-- //nav -->
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            shoe.render();

            shoe.cart.on('shoe_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
        </script>
        <!-- //cart-js -->
        <!-- script for responsive tabs -->
        <script src="js/easy-responsive-tabs.js"></script>
        <script>
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true, // 100% fit in a container
                    closed: 'accordion', // Start closed if in accordion view
                    activate: function (event) { // Callback function if tab is switched
                        var $tab = $(this);
                        var $info = $('#tabInfo');
                        var $name = $('span', $info);
                        $name.text($tab.text());
                        $info.show();
                    }
                });
                $('#verticalTab').easyResponsiveTabs({
                    type: 'vertical',
                    width: 'auto',
                    fit: true
                });
            });
        </script>
        <!--search-bar-->
        <script src="js/search.js"></script>
        <!--//search-bar-->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>
        <!-- //end-smoth-scrolling -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


    </body>

</html>