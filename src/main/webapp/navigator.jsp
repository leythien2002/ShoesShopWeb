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
<ul>
    <li><a href="index.jsp" class="active">Home</a></li>
    <li><a href="about.jsp">About</a></li>
        <c:if test = "${sessionScope.acc.perMiss==1}">
        <li><a href="admincontrol">Manage Product</a></li>
        <li><a href="admin_user_control">Manage User</a></li>
        <li><a href="admin_invoice_control">Manage Invoice</a></li>
        <li><a href="revenue.jsp">Revenue</a></li>
        </c:if>
        <c:if test = "${sessionScope.acc.perMiss!=null}">
        <li><a href="userhistorycontrol?userid=${sessionScope.acc.userName}">Buy History </a></li>
        </c:if>	
    <li><a href="productload">Shop Now</a></li>
        <c:if test="${sessionScope.acc==null}">
        <li>  <a href="login.jsp">Login ${sessionScope.acc.perMiss}</a>  </li>          
        </c:if>
        <c:if test="${sessionScope.acc!=null}">
        <label>Hello:</label>                                                       
        <span>${sessionScope.acc.email}</span><br>
        <li><a href="logout">Logout</a></li>
    </c:if>
</ul>

