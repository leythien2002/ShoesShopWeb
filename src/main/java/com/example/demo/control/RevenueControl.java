/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control;

import com.example.demo.entity.Invoice;
import com.example.demo.entity.Product;
import com.example.demo.entity.Type;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.demo.loaddata.LoadData;

/**
 * @author Asus
 */
@WebServlet(name = "RevenueControl", urlPatterns = {"/revenue"})
public class RevenueControl extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String date = request.getParameter("date");
        System.out.println(date);
        LoadData load = new LoadData();
        List<Invoice> lstInvoice = load.getInvoiceByDate(date);
        double revenue = 0.0;
        for (Invoice inv : lstInvoice) {
            revenue += inv.getTotalMoney();
        }
        System.out.println(revenue);
        request.setAttribute("revenue", revenue);
        request.setAttribute("lstInvoice", lstInvoice);
        request.setAttribute("date",date);


        request.getRequestDispatcher("revenue.jsp").forward(request, response);
//        response.sendRedirect(request.getContextPath() + "/revenue?date="+date);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
