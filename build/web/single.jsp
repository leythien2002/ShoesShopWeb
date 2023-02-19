<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Detail of: ${detail.name}</title>
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
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <!-- Owl-carousel-CSS -->
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
                    </div>
                </div>
                <!-- //cart details -->
                <!-- search -->

                <!-- //search -->
                <div class="clearfix"></div>
                <!-- /banner_inner -->
                <div class="services-breadcrumb_w3ls_agileinfo">
                    <div class="inner_breadcrumb_agileits_w3">

                        <ul class="short">
                            <li><a href="index.jsp">Home</a><i>|</i></li>
                            <li>Single</li>
                        </ul>
                    </div>
                </div>
                <!-- //banner_inner -->
            </div>

            <!-- //banner -->
            <!-- top Products -->
            <div class="ads-grid_shop">
                <div class="shop_inner_inf">
                    <div class="col-md-4 single-right-left ">
                        <div class="grid images_3_of_2">
                            <div class="flexslider">

                                <ul class="slides">
                                    <li data-thumb="${detail.image1}">
                                    <div class="thumb-image"> <img src="${detail.image1}" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <li data-thumb="${detail.image2}">
                                    <div class="thumb-image"> <img src="${detail.image2}" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <li data-thumb="${detail.image3}">
                                    <div class="thumb-image"> <img src="${detail.image3}" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 single-right-left simpleCart_shelfItem">
                    <h3>${detail.name}</h3>
                    <p><span class="item_price">${detail.price}</span>
                    </p>
                    <div class="rating1">
                        <ul class="stars">
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="description">
<!--                        <h5>Check delivery, payment options and charges at your location</h5>
                        <form action="#" method="post">
                            <input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Enter pincode';
                                    }"
                                   required="">
                            <input type="submit" value="Check">
                        </form>-->
                    </div>
<!--                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                                <option value="null">5 Qty</option>
                                <option value="null">6 Qty</option> 
                                <option value="null">7 Qty</option>					
                                <option value="null">10 Qty</option>								
                            </select>
                        </div>
                    </div>-->


                    <div class="description">
                        <form action="buy" method="post">
                            <!--                            <input type="hidden" name="cmd" value="_cart">
                                                        <input type="hidden" name="add" value="1">-->
                            <input type="hidden" name="productId" value="${detail.id}">
                            <input type="hidden" name="shoe_item" value="${detail.name}">
                            <input type="hidden" name="price" value="${detail.price}">
                            <input type="hidden" name="amount" value="1">
                            <input type="submit" value="Buy Item">
                            <!--                                    <input type="submit" name="submit" value="Add to cart" class="button add">
                            
                                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>-->
                        </form>

                    </div>




                    <ul class="social-nav model-3d-0 footer-social social single_page">
                        <li class="share">Share On : </li>
                        <li>
                            <a href="#" class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="twitter">
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            </a>
                        </li>
                    </ul>

                </div>
                <div class="clearfix"> </div>
                <!--/tabs-->
                <div class="responsive_tabs">
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li>Description</li>
                            <li>Reviews</li>
                            <li>Information</li>
                        </ul>
                        <div class="resp-tabs-container">
                            <!--/tab_one-->
                            <div class="tab1">

                                <div class="single_page">

                                    <p class="para">${detail.description}.</p>
                                </div>
                            </div>
                            <!--//tab_one-->
                            <div class="tab2">

                                <div class="single_page">
                                    <div class="bootstrap-tab-text-grids">
                                        <div class="bootstrap-tab-text-grid">
                                            <div class="bootstrap-tab-text-grid-left">
                                                <img src="images/t1.jpg" alt=" " class="img-responsive">
                                            </div>
                                            <div class="bootstrap-tab-text-grid-right">
                                                <ul>
                                                    <li><a href="#">Admin</a></li>
                                                    <li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam,
                                                    quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
                                                    autem vel eum iure reprehenderit.</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                        <div class="add-review">
                                            <h4>add a review</h4>
                                            <form action="#" method="post">
                                                <input type="text" name="Name" required="Name">
                                                <input type="email" name="Email" required="Email">
                                                <textarea name="Message" required=""></textarea>
                                                <input type="submit" value="SEND">
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab3">

                                <div class="single_page">
                                    <h6>Shoe Rock Vision(SRV) Sneakers (Blue)</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                        blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                        ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                        magna aliqua.</p>
                                    <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                        blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                        ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                        magna aliqua.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//tabs-->
                <!-- /new_arrivals -->

                <!--//new_arrivals-->


            </div>
        </div>
        <!-- //top products -->
        <div class="mid_slider_w3lsagile">
            <div class="col-md-3 mid_slider_text">
                <h5>Some More Shoes</h5>
            </div>
            <div class="col-md-9 mid_slider_info">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
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
                        <div class="item active">
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
        <!-- /newsletter-->
        <div class="newsletter_w3layouts_agile">
            <div class="col-sm-6 newsleft">
                <h3>Sign up for Newsletter !</h3>
            </div>
            <div class="col-sm-6 newsright">
                <form action="#" method="post">
                    <input type="email" placeholder="Enter your email..." name="email" required="">
                    <input type="submit" value="Submit">
                </form>
            </div>

            <div class="clearfix"></div>
        </div>
        <!-- //newsletter-->
        <!-- footer -->
        <div class="footer_agileinfo_w3">
            <div class="footer_inner_info_w3ls_agileits">
                <div class="col-md-3 footer-left">
                    <h2><a href="index.jsp"><span>D</span>owny Shoes </a></h2>
                    <p>Lorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>
                    <ul class="social-nav model-3d-0 footer-social social two">
                        <li>
                            <a href="#" class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="twitter">
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-9 footer-right">
                    <div class="sign-grds">
                        <div class="col-md-4 sign-gd">
                            <h4>Our <span>Information</span> </h4>
                            <ul>
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="404.html">Services</a></li>
                                <li><a href="404.html">Short Codes</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-md-5 sign-gd-two">
                            <h4>Store <span>Information</span></h4>
                            <div class="address">
                                <div class="address-grid">
                                    <div class="address-left">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="address-right">
                                        <h6>Phone Number</h6>
                                        <p>+1 234 567 8901</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="address-grid">
                                    <div class="address-left">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <div class="address-right">
                                        <h6>Email Address</h6>
                                        <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="address-grid">
                                    <div class="address-left">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <div class="address-right">
                                        <h6>Location</h6>
                                        <p>Broome St, NY 10002,California, USA.

                                        </p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 sign-gd flickr-post">
                            <h4>Flickr <span>Posts</span></h4>
                            <ul>
                                <li><a href="single.jsp"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                                <li><a href="single.jsp"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <p class="copy-right-w3ls-agileits">&copy 2018 Downy Shoes. All rights reserved | Design by <a href="http://w3layouts.com/">w3layouts</a></p>
            </div>
        </div>
    </div>
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
    <!-- single -->
    <script src="js/imagezoom.js"></script>
    <!-- single -->
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
    <!-- FlexSlider -->
    <script src="js/jquery.flexslider.js"></script>
    <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
    </script>
    <!-- //FlexSlider-->

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