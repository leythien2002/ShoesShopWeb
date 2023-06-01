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
    </style>
</head><!-- comment -->
<jsp:include page="navigator2.jsp"></jsp:include>

<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Buy <b>History</b></h2>
                </div>
                <div class="col-sm-6">

                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
                <span class="custom-checkbox">
                    <input type="checkbox" id="selectAll">
                    <label for="selectAll"></label>
                </span>
                </th>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Review</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${ListUH}" var="items">
                <tr>
                    <td>
                    <span class="custom-checkbox">
                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                        <label for="checkbox1"></label>
                    </span>
                    </td>
                    <td>${items.id}</td>
                    <td>${items.name}</td>
                    <td>
                        <img src="${items.image1}">
                    </td>
                    <td>${items.price}</td>
                    <td><a href="#addreview" target="_blank" class="edit" data-toggle="modal" data-product-id="${items.id}"><i
                            class="material-icons" data-toggle="tooltip" title="Review">&#xE254;</i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>


<!-- Edit Modal HTML -->
<div id="addreview" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addreview" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Review</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
<%--                        <label>${sessionScope.acc.userName}</label>--%>
                        <label>Product ID: </label>
                        <label id="productIdDisplay" ></label> <br>
                        <input type="hidden" name="productId" id="productIdInput"> <!-- Hidden input field for product ID -->
                        <label>Enter your review</label>
                        <textarea name="review" class="form-control" required></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add Review">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->

<!-- Delete Modal HTML -->

</a>
<script src="js/manager.js" type="text/javascript"></script>
<div class="newsletter_w3layouts_agile">
    <div class="col-sm-6 newsleft">
    </div>


    <div class="clearfix"></div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
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
</html>