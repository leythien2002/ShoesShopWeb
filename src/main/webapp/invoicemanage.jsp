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
<jsp:include page="navigator2.jsp"></jsp:include>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage <b>Invoice</b></h2>
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

            <c:forEach items="${listInvoice}" var="o">
                <tr>
                    <td>${o.id_In}</td>
                    <td>${o.uID}</td>
                    <td>${o.date}</td>
                    <td>${o.phone}</td>
                    <td>${o.address}</td>
                    <td>${o.totalMoney}</td>
                    <td>
                        <a href="invoiceDetail?idInvoice=${o.id_In}" target="_blank" class="edit" data-toggle="modal"><i
                                class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <!--                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>-->
                        <form action="delete_invoice">
                            <input type="hidden" name="delInvoice" value="${o.id_In}"/>
                            <input type="submit" value="&#xE872;"
                                   onclick="return confirm('Are you sure you want to delete this user ${o.id_In}?')"
                                   class="material-icons" data-toggle="tooltip">
                        </form>

                    </td>
                </tr>
            </c:forEach>
            </tbody>

        </table>


    </div>
    <!--                <a href="index.jsp"> <button type="button" class="btn btn-primary">Back to home</button>-->

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