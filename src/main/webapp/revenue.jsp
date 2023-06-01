<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Buying History</title>
  <link rel="icon" type="image/x-icon"
        href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

  <jsp:include page="headShop.jsp"></jsp:include>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/manager.css" rel="stylesheet" type="text/css"/>
  <style>
    img {
      width: 200px;
      height: 120px;
    }
    .form-container {
      margin-top: 20px;

      display: flex;
      align-items: center;
    }
    .date-picker {
      margin-left: 10px;
      font-family: 'Roboto', sans-serif;
    }
    .date-picker label {
      font-weight: bold;
      margin-right: 10px;
      color: #000000;
    }
    .date-picker input[type="date"] {
      padding: 10px;
      border: none;
      border-radius: 4px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      background-color: #fff;
      color: #555;
      transition: border-color 0.3s ease;
    }
    .date-picker input[type="date"]:focus {
      outline: none;
      border-color: #4a90e2;
    }
    .date-picker .material-icons {
      color: #000000;
      font-size: 20px;
      vertical-align: middle;
      margin-right: 5px;
    }
    .button-container {
      margin-top: 10px;
      margin-left: 20px;
    }
  </style>
</head><!-- comment -->
<jsp:include page="navigator2.jsp"></jsp:include>

<body>

<div class="container">
  <form action="revenue?date=${date}" method="get" class="form-container">
    <div class="date-picker">
      <label for="datepicker"><i class="material-icons">date_range</i>Select Date:</label>
      <input type="date" id="datepicker" name="date" required>
    </div>
    <div class="button-container">
      <button type="submit" class="btn btn-primary">Check </button>
    </div>
  </form>
  <div class="table-wrapper">
    <div class="table-title">
      <div class="row">
        <div class="col-sm-6">
          <h2>Revenue: <b>${date}</b></h2>
        </div>
      </div>
    </div>
    <table class="table table-striped table-hover">
      <thead>
      <tr>
        <th>ID</th>
        <th>User Name</th>
        <th>Date</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Total Money</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${lstInvoice}" var="o">
        <tr>
          <td>${o.id_In}</td>
          <td>${o.uID}</td>
          <td>${o.date}</td>
          <td>${o.phone}</td>
          <td>${o.address}</td>
          <td>${o.totalMoney}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <div class="table-title">
      <div class="row">
        <div class="col-sm-6">
          <h2>Total Revenue: <b>${revenue}</b></h2>
        </div>
      </div>
    </div>
  </div>
</div>


<!-- Edit Modal HTML -->
<script src="js/manager.js" type="text/javascript"></script>
<div class="newsletter_w3layouts_agile">
  <div class="col-sm-6 newsleft">
  </div>
  <div class="clearfix"></div>
</div>
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover"
                                                                         style="opacity: 1;"> </span></a>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- /nav -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/demo1.js"></script>
<script>
  $(document).ready(function() {
    $(".edit").click(function() {
      var productId = $(this).data("product-id");
      $("#productID").val(productId);
      $("#productIdDisplay").text(productId); // Add this line to display the product ID in the form
      $("#productIdInput").val(productId); // Update the hidden input field value
    });
  });
</script>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>
