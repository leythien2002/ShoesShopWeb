<%@ page import="com.example.demo.control.UserController" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

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



            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-art-%7C-sneaker-design-template-c697277396638b25f349fafa0ba2f179_screen.jpg?ts=1646236180%22" alt="sing up image"></figure>

                            <!--                            <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>-->
<%--                            <a href="register.jsp" class="signup-image-link">Create an account</a>--%>
                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Sign In</h2>
                            <form method="post" class="register-form" action = "usercontroller" id="login-form">
<%--                                ${sessionScope.actionCode = 'login'}--%>
                                <div hidden>${sessionScope['actionCode'] = 'login'} </div>
                                <div class="form-group">
                                    <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="userName" id="your_name" placeholder="Your Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="passWord" id="your_pass" placeholder="Password"/>
                                </div>
                                <a href="forgotpwd.jsp" class="signup-image-link">Forgot password</a>
                                <div class="group-button">
                                    <div class="form-group form-button">
                                        <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                                    </div>
                                    <div class="form-group form-button">
                                        <a href="register.jsp" class="form-regis">Create an account</a>
                                    </div>
                                </div>
                                <a id="message"><%=UserController.message%></a>

                            </form>
                            <div class="social-login">
<%--                                <span class="social-label">Or login with</span>--%>
<%--                                <ul class="socials">--%>
<%--                                    <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>--%>
<%--                                </ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </body>
</html>