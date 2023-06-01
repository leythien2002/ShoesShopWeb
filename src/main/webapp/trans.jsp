<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Payment Paypal</title>
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
    <link rel="stylesheet" type="text/css" href="css/trans.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
<jsp:include page = "navigator2.jsp"></jsp:include>
<script src="https://www.paypal.com/sdk/js?client-id=AUWfXUeBuIo-uiW1c-nYdbCoT77iWdyx93uB08lv0Xikfx3qANnIZLlTEVRCSscSpLGH6n1jHXBeY46X&currency=USD"></script>
<main class="main_payment">
    <div class="container">
        <div class="payment-row">
            <div class="row-left">
                <div class="p-4" style="width: 90%; text-align: center;">
                    <h1>SHIPMENT DETAILS</h1>
                    <form action="paymentController" class="flex flex-col gap-5 sm:gap-10 mt-4 py-2">
                        <div>
                            <div class="relative w-full">
                                <input label="Họ và Tên"
                                       class="py-3 px-4 border-b w-full focus:bg-none placeholder-transparent focus:outline-none peer relative"
                                       name="customerName" value="" /><label
                                    class="absolute capitalize left-2 -top-2.5 text-sm text-gray-400 transition-all bg-transparent peer-placeholder-shown:top-2.5 peer-focus:-top-2.5 peer-focus:text-sm">Họ
                                và Tên</label>
                            </div>
                        </div>
                        <div class="relative w-full" hidden>
                            <input label="Email"
                                   class="py-3 px-4 border-b w-full focus:bg-none placeholder-transparent focus:outline-none peer relative"
                                   name="customerEmail" /><label
                                class="absolute capitalize left-2 -top-2.5 text-sm text-gray-400 transition-all bg-transparent peer-placeholder-shown:top-2.5 peer-focus:-top-2.5 peer-focus:text-sm">Email</label>
                        </div>
                        <div>
                            <div class="relative w-full">
                                <input label="Số điện thoại"
                                       class="py-3 px-4 border-b w-full focus:bg-none placeholder-transparent focus:outline-none peer relative"
                                       name="customerPhone" /><label
                                    class="absolute capitalize left-2 -top-2.5 text-sm text-gray-400 transition-all bg-transparent peer-placeholder-shown:top-2.5 peer-focus:-top-2.5 peer-focus:text-sm">Số
                                điện thoại</label>
                            </div>
                        </div>
                        <div>
                            <div class="relative w-full">
                                <input label="Địa chỉ "
                                       class="py-3 px-4 border-b w-full focus:bg-none placeholder-transparent focus:outline-none peer relative"
                                       name="address" /><label
                                    class="absolute capitalize left-2 -top-2.5 text-sm text-gray-400 transition-all bg-transparent peer-placeholder-shown:top-2.5 peer-focus:-top-2.5 peer-focus:text-sm">Số
                                điện thoại</label>
                            </div>
                        </div>
                        <div class="content-right-payment">
                            <button>Continue to pay</button>
                        </div>
                        <div hidden>
                            ${sessionScope['actionCode'] = 'trans'}
                        </div>
                    </form>
                </div>
               
            </div>
            <div class="row-right">
                <div class="method-delivery">
                    <p style="font-weight: bold;">Method to delivery</p>
                    <div class="content-row-left">
                        <input name="method-payment1" type="radio"> <label >Fast delivery</label>
                    </div>
                </div>
                <div class="method-payment">
                    <p style="font-weight: bold;">Method to payment</p>
                    <p>All transactions are secure and encrypted. Credit card
                        information will not be saved.</p>

                    <div class="method-payment-left">
                        <input name="method-payment" type="radio"> <label >Pay at home (COD)</label>
                    </div>

                    <!--paypal-->
                    <p style="font-weight: bold; text-align: center;">Pay with
                        Paypal</p>
                    <script
                            src="https://www.paypal.com/sdk/js?client-id=AUWfXUeBuIo-uiW1c-nYdbCoT77iWdyx93uB08lv0Xikfx3qANnIZLlTEVRCSscSpLGH6n1jHXBeY46X&currency=USD"></script>
                    <!-- Set up a container element for the button -->
                    <div id="paypal-button-container"></div>
                    <!--scrip paypal-->
                    <script>
                        var totalMoney = <%= session.getAttribute("totalMoney") %>;
                        var exchangeRate = 23;
                        paypal.Buttons({
                            // Sets up the transaction when a payment button is clicked
                            createOrder: (data, actions) => {
                                return actions.order.create({
                                    purchase_units: [{
                                        amount: {
                                            value: (totalMoney / exchangeRate).toFixed(2),// dat tien vo day// in here
                                        }
                                    }]
                                });
                            },
                            // Finalize the transaction after payer approval
                            onApprove: (data, actions) => {
                                return actions.order.capture().then(function(orderData) {
                                    // Successful capture! For dev/demo purposes:
                                    console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                                    const transaction = orderData.status;
                                    alert(transaction `\n\n"Thank you for your payment!`);
                                    // When ready to go live, remove the alert and show a success message within this page. For example:
                                    const element = document.getElementById('paypal-button-container');
                                    element.innerHTML = '<h3>Thank you for your payment!</h3>';
                                    // Or go to another URL:  actions.redirect('thank_you.html');
                                    $.ajax({
                                        url: "paymentController",
                                        type: 'POST',
                                        data: {statusTrans: transaction},
                                        success: function(response) {
                                            alert(response);
                                            const element = document.getElementById('paypal-button-container');
                                            element.innerHTML = '<h3>Thank you for your payment!</h3>';
                                        },
                                        error: function(error) {
                                            console.log(error);
                                        }
                                    });
                                });
                            }
                        }).render('#paypal-button-container');
                    </script>

                    <script>
                        createOrder: (data, actions) => {
                            return actions.order.create({
                                "purchase_units": [{
                                    "amount": {
                                        "currency_code": "USD",
                                        "value": "100",
                                        "breakdown": {
                                            "item_total": {  /* Required when including the items array */
                                                "currency_code": "USD",
                                                "value": "100"
                                            }
                                        }
                                    },
                                    "items": [
                                        {
                                            "name": "First Product Name", /* Shows within upper-right dropdown during payment approval */
                                            "description": "Optional descriptive text..", /* Item details will also be in the completed paypal.com transaction view */
                                            "unit_amount": {
                                                "currency_code": "USD",
                                                "value": "50"
                                            },
                                            "quantity": "2"
                                        },
                                    ]
                                }]
                            });
                        }
                    </script>

                </div>
            </div>

        </div>

    </div>

</main>
</body>

</html>