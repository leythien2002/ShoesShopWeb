package control;

import datacon.DataBaseConnection;
import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.User;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

/**
 *
 * @author thien
 */
@WebServlet("/register")
public class RegisterControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        String url = "/register.jsp";
        String mess;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("newuser");
//        String userName = request.getParameter("userName");
//        String passWord = request.getParameter("passWord");
//        String email = request.getParameter("email");
//        String name = request.getParameter("name");
//        String permiss = request.getParameter("perMiss");
        String userName = user.getUserName();
        String passWord = user.getPassWord();
        String email = user.getEmail();
        String name = user.getName();
        int per = user.getPerMiss();
//        if (permiss == null) {
//            permiss = "0";
//        }
//        int per = Integer.parseInt(permiss);
        System.out.println(userName);
        System.out.println(passWord);
        System.out.println(email);
        System.out.println(name);
        System.out.println(per);

        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            con = new DataBaseConnection().getConnection();

            PreparedStatement pst = con.prepareStatement("insert into User(Username,Password,Name,Email,perMiss) values(?,?,?,?,?)");
            pst.setString(1, userName);
            pst.setString(2, passWord);
            pst.setString(3, name);
            pst.setString(4, email);
            pst.setInt(5, per);

            int rowCount = pst.executeUpdate();
//                dispatcher = request.getRequestDispatcher("index.jsp");
            if (rowCount > 0) {                                                                             // store data in User object
//                User user = new User(email, name, userName, passWord, per);
                // validate the parameters
                mess = "";
                url = "/index.jsp";
                String action1 = "login";

                request.setAttribute("action", action1);
                request.setAttribute("user", user);
                request.setAttribute("message", mess);
                request.setAttribute("status", "success");
                session = request.getSession();
                session.setAttribute("acc", user);
                System.out.println("Register Sucess");
            } else {
                request.setAttribute("status", "failed");
            }
//                dispatcher.forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String message;
        message = "Test Servlet Get";
        request.setAttribute("message", message);
        doPost(request, response);
    }
}
