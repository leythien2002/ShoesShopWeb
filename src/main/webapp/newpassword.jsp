<%@ page import="com.example.demo.control.UserController" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Verify your email</title>
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/register.css">

        <script>
            function clearMessage() {
                var message = document.getElementById("message");
                message.innerHTML = "";
            }
            setTimeout(clearMessage, 5000); // Xoá giá trị của biến sau 30 giây
        </script>
    </head>
    <body>
        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Input new password </h2>
                            <form class="register-form" action="usercontroller"method="post">
                                ${sessionScope['actionCode'] = 'resetpassword'}
                                <div class="form-group">
                                    <label ><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="passWord"  placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <label ><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="repassWord"  placeholder="Password"/>
                                </div>
                                <div class="form-group form-button">
                                    <!--                                    <input type="hidden" name="perMiss" value="0">-->
                                    <input type="submit"   class="form-submit" value="Verify"/>
                                </div>
                                    <a id="message"><%= UserController.message%></a>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759" alt="sing up image"></figure>
                            <!--                            <a href="login.jsp" class="signup-image-link">I am already member</a>-->
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>