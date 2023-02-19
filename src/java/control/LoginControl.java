package control;

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
import datacon.DataBaseConnection;

/**
 *
 * @author thien
 */
@WebServlet("/login")
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        //xu ly cookie
       
        String url = "/index.jsp";
        String mess;

//        System.out.println("Test Servlet Post:");
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
//        System.out.println(action);
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
//        if (userName == null || passWord == null || userName.isEmpty() || passWord.isEmpty()) {
//                  mess = "CMM dien het cho bo.";
//                  url = "/login.jsp";
//                } 
        if (action.equals("join")) {
            try {



                Connection con =  new DataBaseConnection().getConnection();
                PreparedStatement pst = con.prepareStatement("select * from User where Username = ? and Password = ?");
                pst.setString(1, userName);
                pst.setString(2, passWord);

                ResultSet rs = pst.executeQuery();

                

                if (rs.next()) {
                    // get parameters from the request
                   String email = rs.getString("Email");
                    String name = rs.getString("Name");
               
                    int per=rs.getInt("perMiss");
                    // store data in User object
                    User user = new User(email, name, userName, passWord,per);

                    // validate the parameters
                    mess = "";
                    url = "/index.jsp";

                    request.setAttribute("user", user);
                    request.setAttribute("message", mess);
                    System.out.println(email);
                    System.out.println(per);
                    System.out.println("Login success");
                    HttpSession session = request.getSession();
                    session.setAttribute("acc",user);
                    //cookie ?
                    Cookie u=new Cookie("userC",userName);
                    Cookie p=new Cookie("passC",passWord);
                    u.setMaxAge(60);
                    p.setMaxAge(60);
                    response.addCookie(u);
                    response.addCookie(p);
                } else {
                    PrintWriter out = response.getWriter();
                    out.print("Login Failed!");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } 
//        else if (action.equals("ff")) {
//            url = "/register.jsp";
//        }

//        if (b==1) {
//            
//        }
        
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
//    private String checkUser(HttpServletRequest request,
//            HttpServletResponse response) {
//
////        String productCode = request.getParameter("productCode");
//        HttpSession session = request.getSession();
////        session.setAttribute("productCode", productCode);
//        User user = (User) session.getAttribute("user");
//
//        String url;
//        // if User object doesn't exist, check email cookie
//        if (user == null) {
//            Cookie[] cookies = request.getCookies();
//            String emailAddress = 
//                Cookies.getCookieValue(cookies, "emailCookie");
//
//            // if cookie doesn't exist, go to Registration page
//            if (emailAddress == null || emailAddress.equals("")) {
//                url = "/register.jsp";
//            } 
//            // if cookie exists, create User object and go to Downloads page
//            else {
//                ServletContext sc = getServletContext();
//                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
////                user = UserIO.getUser(emailAddress, path);
//                session.setAttribute("user", user);
////                url = "/" + productCode + "_download.jsp";
//            }
//        } 
//        // if User object exists, go to Downloads page
//        else {
//            url = "/" + productCode + "_download.jsp";
//        }
//        return url;
//    }
}
