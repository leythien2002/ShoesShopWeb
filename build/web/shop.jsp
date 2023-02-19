<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Sneaker Shop Website</title>
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">
        <link rel="stylesheet" type="text/css" href="css/checkout.css">
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
        <!--        <a href="checkout">Checkout</a>-->
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
                            <jsp:include page = "navigator.jsp"></jsp:include>
                            </nav>
                        </div>
                        <div class="mobile-nav-button">
                            <button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
                        </div>
                        
                        <div class="top_nav_right">
                            <div class="shoecart shoecart2 cart cart box_1">
                                <form action="checkout" method="post" class="last">
                                    <button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="clearfix"></div>
                <!-- /banner_inner -->
                <div class="services-breadcrumb_w3ls_agileinfo">
                    <div class="inner_breadcrumb_agileits_w3">
                        <ul class="short">
                            <li><a href="index.jsp">Home</a><i>|</i></li>
                            <li>Shop</li>
                        </ul>
                    </div>
                </div>
                <!-- //banner_inner -->
            </div>

            <!-- //banner -->
            <!-- top Products -->
            <div class="ads-grid_shop">
                <div class="shop_inner_inf">
                    <!-- tittle heading -->

                    <!-- //tittle heading -->
                    <!-- product left -->
                    <div class="side-bar col-md-3">
                        <div class="search-hotel">
                            <h3 class="agileits-sear-head">Search Here..</h3>
                            <form action="search" method="post">
                                <input value ="${valueSearch}"type="search" placeholder="Product name..." name="search" required="">
                            <input type="submit" value=" ">
                        </form>
                    </div>
                    <!-- price range -->

                    <!-- //price range -->
                    <!--preference -->
                    <div class="left-side">
                        <h3 class="agileits-sear-head">Brand</h3>

                            <ul>
                                <c:forEach items="${ListT}" var ="o">
                                    <li>                                                    
                                        <a href="category?type=${o.type}" >${o.type} </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- // preference -->

                        <!-- //reviews -->
                        <!-- deals -->
                        <div class="deal-leftmk left-side">
                            <h3 class="agileits-sear-head">Latest Product</h3>
                            <c:forEach items="${Last3P}" var ="o">
                                <div class="special-sec1">
                                    <div class="col-xs-4 img-deals">
                                        <img src="${o.image1}" alt="">
                                    </div>
                                    <div class="col-xs-8 img-deal1">
                                        <h3>${o.name}</h3>
                                        <a href="detail?pid=${o.id}">${o.price}</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>	
                            </c:forEach>
                        </div>
                        <!-- //deals -->

                    </div>
                    <!-- //product left -->
                    <!-- pro        duct right -->
                    <div class="left-ads-display col-md-9">
                        <C:forEach />
                        <div class="wrapper_top_shop">
                            <div class="col-md-6 shop_left">
                                <img src="images/banner3.jpg" alt="">
                                <h6>40% off</h6>
                            </div>
                            <div class="col-md-6 shop_right">
                                <img src="images/banner2.jpg" alt="">
                                <h6>50% off</h6>
                            </div>
                            <div class="clearfix"></div>
                            <!-- product-sec1 -->
                            <div class="product-sec1">
                                <!--/mens-->
                                <c:forEach items="${ListP}" var ="o">
                                    <div class="col-md-4 product-men">
                                        <div class="product-shoe-info shoe">
                                            <div class="men-pro-item">
                                                <div class="men-thumb-item" >
                                                    <img src="${o.image1}"alt="" width="180px" height=250px>
                                                    <div class="men-cart-pro">
                                                        <div class="inner-men-cart-pro">
                                                            <a href="detail?pid=${o.id}" class="link-product-add-cart">Quick View</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item-info-product">
                                                    <h4>
                                                        <a href="detail?pid=${o.id}">${o.name} </a>
                                                    </h4>
                                                    <div class="info-product-price">
                                                        <div class="grid_meta">
                                                            <div class="product_price">
                                                                <div class="grid-price ">
                                                                    <span class="money ">${o.price}</span>
                                                                </div>
                                                            </div>
                                                            <ul class="stars">
                                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                            </ul>
                                                        </div>
                                                        <div class ="shoe single-item ">
                                                            <form  action="buy"  method="post">
    <!--                                                                                                <input type="hidden" name="productId" value="${o.id}">
                                                                <input type="submit" value="Add To Cart">-->
                                                                <!--                                                                                                <input type="hidden" name="cmd" value="_cart">
                                                                                                                                                                <input type="hidden" name="add" value="1">-->
                                                                <input type="hidden" name="productId" value="${o.id}">
                                                                <input type="hidden" name="shoe_item" value=${o.name}>
                                                                <input type="hidden" name="price" value=${o.price}>
                                                                <input type="hidden" name="amount" value="1">
                                                                <div class ="description">
                                                                <input type ="submit" value="Buy" >
                                                                </div>
<!--                                                                <button type = "submit"class ="submit check_out">Buy</button>-->

                                                                <!--                                                            <input type="submit" class="submit check_out" value="Buy Item">-->
                                                                <!--                                                                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>
                                                                                                                                                                        <a href="#" data-toggle="modal" data-target="#myModal1"></a>-->
                                                            </form>

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>





                                <!-- //mens -->
                                <div class="clearfix"></div>

                            </div>
                            <div class="clearfix">
                                <ul class="pagination">
                                    <c:forEach begin ="1" end= "${endP}" var ="i"> 
    <!--                                        <li class="page-item active"><a href="productload?index=${i}" class="page-link">${i}</a></li>-->
                                        <li class="page-item ${activeIndex==i?"active":""}"><a href="productload?index=${i}" class="page-link">${i}</a></li>
                                        </c:forEach>

                                </ul>
                            </div>

                            <!-- //product-sec1 -->
                            <div class="col-md-6 shop_left shp">
                                <img src="images/banner4.jpg" alt="">
                                <h6>21% off</h6>
                            </div>
                            <div class="col-md-6 shop_right shp">
                                <img src="images/banner1.jpg" alt="">
                                <h6>31% off</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
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
            <!--search-bar-->
            <script src="js/search.js"></script>
            <!--//search-bar-->
            <!-- price range (top products) -->
            <script src="js/jquery-ui.js"></script>
            <script>
                //<![CDATA[ 
                $(window).load(function () {
                    $("#slider-range").slider({
                        range: true,
                        min: 0,
                        max: 9000,
                        values: [50, 6000],
                        slide: function (event, ui) {
                            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                        }
                    });
                    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                }); //]]>
            </script>
            <!-- //price range (top products) -->

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
<script type="text/javascript">
                function buy(id) {
                    document.f.action = "buy?id=" + id;
                    console.log(document.f.action);
                    document.f.submit();
                }
</script>