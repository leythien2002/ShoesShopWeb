<%@ page import="com.example.demo.control.admin.product.DeleteControl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="headShop.jsp"></jsp:include>
    <title>Administrator Page</title>
    <link rel="icon" type="image/x-icon"
          href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

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

</head>
<body>

<jsp:include page="navigator2.jsp"></jsp:include>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage <b>Product</b></h2>
                </div>

                <div class="col-sm-6">
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                        <span>Add New Product</span></a>
                </div>
            </div>
        </div>

        <table class="table table-striped table-hover">
            <div class="alert alert-${type}" role="alert">
                ${message}
            </div>
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
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${adminListP}" var="o">
                <tr>
                    <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                    <label for="checkbox1"></label>
                                </span>
                    </td>
                    <td>${o.id}</td>
                    <td>${o.name}</td>
                    <td>
                        <img src="${o.image1}">
                    </td>
                    <td>${o.price}</td>
                    <td>
                        <a href="adminDetail?pid=${o.id}" target="_blank" class="edit" data-toggle="modal"><i
                                class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <form action="delete" method="post">
                            <input type="hidden" name="delid" value="${o.id}"/>
                            <input type="submit" value="&#xE872;"
                                   onclick="return confirm('Are you sure you want to delete product ${o.id}?')"
                                   class="material-icons" data-toggle="tooltip">
                        </form>

                    </td>
                </tr>
            </c:forEach>

            </tbody>

        </table>

        <div class="clearfix">
            <ul class="pagination">
                <c:forEach begin="1" end="${endP}" var="i">
                    <!-- <li class="page-item active"><a href="productload?index=${i}" class="page-link">${i}</a></li>-->
                    <li class="page-item ${activeIndex==i?"active":""}"><a href="admincontrol?index=${i}"
                                                                           class="page-link">${i}</a></li>
                </c:forEach>

            </ul>
        </div>

    </div>
    <!--                <a href="index.jsp"> <button type="button" class="btn btn-primary">Back to home</button>-->

</div>
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Add Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <input name="id" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Image1</label>
                        <input name="image1" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Image2</label>
                        <input name="image2" type="text" class="form-control" required>
                    </div><!-- comment -->
                    <div class="form-group">
                        <label>Image3</label>
                        <input name="image3" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input name="price" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Size</label>
                        <input name="size" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control" required></textarea>
                    </div>
                    <div class="form-group1">
                        <label>Category</label>
                        <select name="type" class="form-select" aria-label="Default select example">
                            <c:forEach items="${adminListT}" var="o">
                                <option value="${o.type}">${o.type}</option>
                            </c:forEach>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Edit Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>



<!-- Delete Modal HTML -->

</a>
<script src="js/manager.js" type="text/javascript"></script>


<div class="newsletter_w3layouts_agile">
    <div class="col-sm-6 newsleft">
    </div>
    <div class="clearfix"></div>
</div>
</body>

<script>
    var message='${message}';
    if(message){
        $('.alert').addClass("show");
        setTimeout(function () {
            $('.alert').removeClass("show");
            $('.alert').addClass("hide");
        }, 5000);
    } else {
        $('.alert').addClass("hide");
    };
</script>

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
</html>