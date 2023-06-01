<%@ page import="com.example.demo.control.email.EmailVerifyControl" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <title>Sign UP</title>
        <link rel="icon" type="image/x-icon" href="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759">

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
                            <h2 class="form-title">Sign up</h2>
                            <form class="register-form" action="EmailVerify"method="post">
                                <div class="form-group">
                                    <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="name"  placeholder="Your Name"/>
                                </div>
                                <div class="form-group">
                                    <label ><i class="zmdi zmdi-email"></i></label>
                                    <input type="email" name="email"  placeholder="Your Email"/>
                                </div>
                                <div class="form-group">
                                    <label ><i class="zmdi zmdi-globe-alt"></i></label>
                                    <input type="text" name="userName"  placeholder="UserName"/>
                                </div>
                                <div class="form-group">
                                    <label ><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="passWord"  placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="hidden" name="perMiss" value="0">
                                    <input type="hidden" name="func" value="register">
                                    <input type="submit"   class="form-submit" value="Register"/>
                                </div>
                            </form>
                            <a id="message"><%= EmailVerifyControl.message%></a>
                        </div>
                        <div class="signup-image">
                            <figure><img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneakers-logo-design-template-3ed6589433370a39aa9478060e557bfd_screen.jpg?ts=1646104759" alt="sing up image"></figure>
                            <a href="login.jsp" class="signup-image-link">I am already member</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>