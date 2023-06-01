/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control.email;

import com.example.demo.loaddata.UserDao;
import com.example.demo.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


/**
 *
 * @author Asus
 */
@WebServlet(name = "EmailVerify", urlPatterns = {"/EmailVerify"})
public class EmailVerifyControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String permiss = request.getParameter("perMiss");
        String func = request.getParameter("func");
        UserDao userDao = new UserDao();
        if(func.equals("register")){
            if(userName.equals("")|| passWord.equals("")||email.equals("")||name.equals("")){
                message = "Please input again";
                response.sendRedirect("register.jsp");
            } else {
                if (permiss == null) {
                    permiss = "0";
                }
                int per = Integer.parseInt(permiss);

                SendEmail sm = new SendEmail();
                String code = sm.getRandom();
                System.out.print(func);

                if(func.equals("register")){
                    try {
                        boolean checkexit = userDao.checkUserByEmailAndUname(email,userName);
                        if(checkexit){
//                        code="12345";
//                        boolean test =true;
                            User user = new User(email, name, userName, passWord, per, code);
                            boolean test = sm.sendCode(user);
                            if (test) {
                                HttpSession session = request.getSession();
                                session.setAttribute("authcode", user);
                                response.sendRedirect("verify.jsp");
                            } else{
                                System.out.print("fail1");
                            }
                        }else {
                            System.out.print("co nguoi");
                            message = "Please use another email or username, email or username is exist";
                            response.sendRedirect("register.jsp");
                        }
                    } catch (SQLException e) {
                        System.out.print("fail1");
                    }

                }
                else{
                    System.out.print("fail2");
                }
            }
        }else if (func.equals("forgot")) {
            try {
                if(!UserDao.checkEmail(email)){
                    SendEmail sm = new SendEmail();
                    String code = sm.getRandom();
                    boolean test = sm.sendCodeforgot(email, code);
                    if(test)
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("authcode", code);
                        session.setAttribute("emailforgot", email);
                        response.sendRedirect("verifyfogot.jsp");
                    }
                } else{

                    message = "Please use another email, email is not exist";
                    response.sendRedirect("forgotpwd.jsp");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }



        }


    }
    public static String message = "";

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
