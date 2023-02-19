<%-- 
    Document   : navigator
    Created on : Nov 30, 2022, 2:13:29 PM
    Author     : Asus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<!--            cart details -->
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


