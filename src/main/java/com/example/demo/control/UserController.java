package com.example.demo.control;

import com.example.demo.loaddata.UserDao;
import com.example.demo.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/usercontroller")
public class UserController extends HttpServlet{
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String action =  "";
        String url ="";
        if (action == null) {
            action = "join";  // default action
        }
        HttpSession session = request.getSession();
        String accode = (String) session.getAttribute("actionCode");

        switch (accode) {
            case "register":
                url = "/register.jsp";
                System.out.println("1");
                System.out.println(accode);
                System.out.println("1");
                User user = (User) session.getAttribute("newuser");
                try {
                    boolean mess = userDao.addUser(user);
                    url = "/index.jsp";
                    String action1 = "login";

                    request.setAttribute("action", action1);
                    request.setAttribute("user", user);
                    request.setAttribute("message", mess);
                    request.setAttribute("status", "success");
                    session = request.getSession();
                    session.setAttribute("acc", user);
                    System.out.println("Register Sucess");
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                getServletContext()
                        .getRequestDispatcher(url)
                        .forward(request, response);
                break;

            case "login":
                url = "/index.jsp";
                action = request.getParameter("action");
                if (action == null) {
                    action = "join";  // default action
                }
                String userName = request.getParameter("userName");
                String passWord = request.getParameter("passWord");
                try {
                    // store data in User object
                    boolean checkExits = UserDao.checklogin(userName,passWord);
                    if(checkExits)
                    {
                        user = UserDao.getlogin(userName,passWord);
                        // validate the parameters
                        url = "/index.jsp";
                        request.setAttribute("user", user);
                        System.out.println("Login success");
                        session = request.getSession();
                        session.setAttribute("acc",user);
                        //cookie ?
                        Cookie u=new Cookie("userC",userName);
                        Cookie p=new Cookie("passC",passWord);
                        u.setMaxAge(60);
                        p.setMaxAge(60);
                        response.addCookie(u);
                        response.addCookie(p);
                        getServletContext()
                                .getRequestDispatcher(url)
                                .forward(request, response);
                    }else {
                        System.out.println("Login Failed!");
                        message = "Please try again";
                        response.sendRedirect("login.jsp");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            case "resetpassword":
                url = "/index.jsp";
                action = request.getParameter("action");
                if (action == null) {
                    action = "join";  // default action
                }

                String passWord1 = request.getParameter("passWord");
                String passWord2 = request.getParameter("repassWord");
                if (action.equals("join")) {
                    try {
                        // store data in User object
                        if(passWord1.equals(passWord2))
                        {
                            String emailforgot = (String) session.getAttribute("emailforgot");
                            boolean mess = userDao.updatePwP(passWord1,emailforgot);
                            System.out.println("bang nhau");
                            if(mess){
                                url = "/login.jsp";
                                getServletContext()
                                        .getRequestDispatcher(url)
                                        .forward(request, response);
                            }else {
                                message = "Have error ";
                                response.sendRedirect("newpassword.jsp");
                            }

                        }else{
                            System.out.print("co nguoi");
                            message = "Please try again";
                            response.sendRedirect("newpassword.jsp");
                        }
                        // validate the parameters
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            default:

                break;
        }

    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public static String message = "";
}
