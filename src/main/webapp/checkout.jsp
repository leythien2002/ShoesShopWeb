<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Your Cart</title>
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
        <!-- Owl-carousel-CSS -->
        <link rel="stylesheet" type="text/css" href="css/checkout.css">
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

        <jsp:include page = "navigator2.jsp"></jsp:include>
            <!-- //banner -->
            <!-- top Products -->
            <div class="ads-grid_shop">
                <div class="shop_inner_inf">
                    <div class="privacy about">
                        <h3>Check<span>out</span></h3>
                        <div class="checkout-right">
                            <h4>Your shopping cart contains: <span>${size} Products</span></h4>
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>SL No.</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Product Name</th>

                                    <th>Price</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="o" value="${requestScope.cart}"/>

                                <c:forEach var="item" items="${o.items}">
                                    <tr class="rem1">
                                        <td class="invert">1</td>
                                        <td class="invert-image" width="400px"><a href="detail?pid=${item.product.id}"><img src="${item.product.image1}" alt=" " class="img-responsive"></a></td>
                                        <td class="invert">
                                            <div class="quantity">
                                                <div class="quantity-select">
                                                    <button><a href="process?amount=-1&productId=${item.product.id}">-</a></button>${item.amount}
                                                    <button><a href="process?amount=1&productId=${item.product.id}">+</a></button>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="invert">${item.product.name}</td>

                                        <td class="invert">${item.product.price}</td>

                                        <td class="description">

                                            <form action="process" method="post">
                                                <input type="hidden" name="productId" value="${item.product.id}"/>
                                                <input type="submit" value="Remove"/>
                                            </form>
                                         </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">

                        <div class="col-md-4 checkout-left-basket">
                            <a href ="trans.jsp">Continue to basket</a>
                            <ul>
                                <c:forEach var="item" items="${o.items}">

                                    <li>${item.product.name} <i>-</i> <span>${item.product.price}</span></li>
                                </c:forEach>
                              </ul>
                            <h4>Total <i>-</i> <fmt:formatNumber type = "number" groupingUsed = "false" value="${o.totalMoney}"/>VND</h4>
                            <div>
                                <h4>
                                    ${sessionScope['totalMoney'] = o.totalMoney}
                                </h4>
                            </div>
                        </div>

                        <div  class="col-md-8 address_form" hidden>
                            <h4>Add a new Details</h4>
                            <form action="payment" method="post" class="creditly-card-form agileinfo_form">
                                <section class="creditly-wrapper wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">Full name: </label>
                                                <input class="billing-address-name form-control" type="text" name="fullname" placeholder="Full name" required >
                                            </div>
                                            <div class="card_number_grids">
                                                <div class="card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">Mobile number:</label>
                                                        <input class="form-control" type="text" name ="phone" placeholder="Mobile number" required>
                                                    </div>
                                                </div>
                                                <div class="card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">Address: </label>
                                                        <input class="form-control" type="text" name="address" placeholder="Address" required >
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                        </div>
                                        <c:if test ="${o.totalMoney > 0}">
                                        <button class="submit check_out">Delivery to this Address</button>
                                        </c:if>
                                    </div>
                                </section>
                            </form>
                            <div class="checkout-right-basket">
                                <!--                                <a href="payment">Make a Payment </a>-->
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
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
                    <form action="#" method="post">

                    </form>
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
            <!-- /nav -->
            <script src="js/modernizr-2.6.2.min.js"></script>
            <script src="js/classie.js"></script>
            <script src="js/demo1.js"></script>
            <!-- //nav -->
            <script>
                $(document).ready(function (c) {
                    $('.close1').on('click', function (c) {
                        $('.rem1').fadeOut('slow', function (c) {
                            $('.rem1').remove();
                        });
                    });
                });
            </script>
            <script>
                $(document).ready(function (c) {
                    $('.close2').on('click', function (c) {
                        $('.rem2').fadeOut('slow', function (c) {
                            $('.rem2').remove();
                        });
                    });
                });
            </script>
            <script>
                $(document).ready(function (c) {
                    $('.close3').on('click', function (c) {
                        $('.rem3').fadeOut('slow', function (c) {
                            $('.rem3').remove();
                        });
                    });
                });
            </script>

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