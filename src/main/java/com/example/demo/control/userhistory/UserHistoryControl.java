/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control.userhistory;

import com.example.demo.entity.Product;
import com.example.demo.entity.User;
import com.example.demo.loaddata.LoadData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Asus
 */
@WebServlet(name = "UserHistoryControl", urlPatterns = {"/userhistorycontrol", "/addreview"})
public class UserHistoryControl extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String useruserid = request.getParameter("userid");
        LoadData load = new LoadData();
        List<Product> list = load.getUSerBuy(useruserid);
        request.setAttribute("ListUH", list);
        request.getRequestDispatcher("buyhistory.jsp").forward(request, response);
        }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String review = request.getParameter("review");
        String productId = request.getParameter("productId");
        User user = new User();
        HttpSession session = request.getSession();
        user = (User) session.getAttribute("acc");
        LoadData load = new LoadData();
        load.saveReview(productId,user.getUserName(), review);
        response.sendRedirect(request.getContextPath() + "/userhistorycontrol?userid="+user.getUserName());
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
