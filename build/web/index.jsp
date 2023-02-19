<%-- 
    Document   : index
    Created on : Nov 18, 2022, 12:42:26 PM
    Author     : thien
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Sneaker Shop Website</title>
        <!-- custom-theme -->
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <!---->
        <div class="banner_top" id="home">
            <div class="wrapper_top_w3layouts">

                <div class="header_agileits">
                    <div class="logo">
                        <h1><a class="navbar-brand" href="index.jsp"><span>Downy</span> <i>Shoes</i></a></h1>
                    </div>

                    <div class="overlay overlay-contentpush">
                        <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>
                        <nav>
                            <ul>
                                <jsp:include page = "navigator.jsp"></jsp:include>
                                </ul>
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
                        <!-- //cart details -->

                        <!-- //search -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- /slider -->
                    <div class="slider">
                        <div class="callbacks_container">
                            <ul class="rslides callbacks callbacks1" id="slider4">

                                <li>
                                    <div class="banner-top2">
                                        <div class="banner-info-wthree">
                                            <h3>Nike</h3>
                                            <p>See how good they feel.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top3">
                                        <div class="banner-info-wthree">
                                            <h3>Heels</h3>
                                            <p>For All Walks of Life.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top">
                                        <div class="banner-info-wthree">
                                            <h3>Sneakers</h3>
                                            <p>See how good they feel.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top1">
                                        <div class="banner-info-wthree">
                                            <h3>Adidas</h3>
                                            <p>For All Walks of Life.</p>

                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!-- //slider -->
                    <ul class="top_icons">
                        <li><a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
                        <li><a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
                        <li><a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a></li>
                        <li><a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a></li>

                    </ul>
                </div>
            </div>

            <!-- //banner -->
            <!-- /girds_bottom-->
            <div class="grids_bottom">
                <div class="style-grids">
                    <div class="col-md-6 style-grid style-grid-1">
                        <img src="images/b1.jpg" alt="shoe">
                    </div>
                </div>
                <div class="col-md-6 style-grid style-grid-2">
                    <div class="style-image-1_info">
                        <div class="style-grid-2-text_info">
                            <h3>Nike DOWNSHIFTER</h3>
                            <p>The Nike Downshifter 10 is all about updated support and cushioning. Its lightweight and padded design helps keep you moving as you push through your miles.</p>
                            <div class="shop-button">
                                <a href="productload">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="style-image-2">
                        <img src="images/b2.jpg" alt="shoe">
                        <div class="style-grid-2-text">
                            <h3>Air force</h3>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //grids_bottom-->
        <!-- /girds_bottom2-->
        <div class="grids_sec_2">
            <div class="style-grids_main">
                <div class="col-md-6 grids_sec_2_left">
                    <div class="grid_sec_info">
                        <div class="style-grid-2-text_info">
                            <h3>Sneakers</h3>
                            <p>Sneaker is a term that has become very common among people these days as they use it for sports shoes as if it is a synonym for them. People refer to all sorts of shoes with rubber soles as sneakers though it is not correct. The reason why these shoes got their name was because they made very little noise while walking because of their rubber soles. </p>
                            <div class="shop-button">
                                <a href="productload">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="style-image-2">
                        <img src="images/b4.jpg" alt="shoe">
                        <div class="style-grid-2-text">
                            <h3>Air force</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 grids_sec_2_left">

                    <div class="style-image-2">
                        <img src="images/b3.jpg" alt="shoe">
                        <div class="style-grid-2-text">
                            <h3>Air force</h3>
                        </div>
                    </div>
                    <div class="grid_sec_info last">
                        <div class="style-grid-2-text_info">
                            <h3>Sneakers</h3>
                            <p>You could sneak up to someone else while wearing these shoes and hence the name. Today there is a huge variety of sneakers available in the market and you can have one for use in the gymnasium while there are also sneakers for jogging as well as running.</p>
                            <div class="shop-button two">
                                <a href="productload">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //grids_bottom2-->
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


            <div class="clearfix"></div>
        </div>
        <!-- //newsletter-->
    <jsp:include page = "footer.jsp"></jsp:include>


    <!-- //footer -->
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
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
    <!--search-bar-->
    <script src="js/search.js"></script>
    <!--//search-bar-->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 1000,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>
    <!-- js for portfolio lightbox -->
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