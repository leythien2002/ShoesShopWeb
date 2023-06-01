/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author thien
 */
@WebServlet(name = "BeforeLogin", urlPatterns = {"/beforelogin"})
public class BeforeLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] arr=request.getCookies();
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("userC")) {
                    request.setAttribute("userName", o.getValue());
                }
                if (o.getName().equals("passC")) {
                    request.setAttribute("passWord", o.getValue());
                }
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
//        String message;
//        message = "Test Servlet Get";
//        request.setAttribute("message", message);
        doPost(request, response);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         
    }

    

}
