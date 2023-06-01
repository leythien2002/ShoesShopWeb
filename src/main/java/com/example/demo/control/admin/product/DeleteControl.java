/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control.admin.product;

import com.example.demo.entity.Detail_Invoice;
import com.example.demo.loaddata.LoadData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Asus
 */
@WebServlet(name = "DeleteControl", urlPatterns = {"/delete"})
public class DeleteControl extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String message = "";
        String type="";
        response.setContentType("text/html;charset=UTF-8");
        String delid = request.getParameter("delid");
        LoadData load = new LoadData();
        List<Detail_Invoice> lstInvoice = load.getDetailInvoiceByProductID(delid);
        if(lstInvoice.isEmpty()){
            load.deleteProductByID(delid);
            message="Delete Success";
            type="success";

        }
        else {
            message="Delete error because product is in invoices with ID: ";
            for (Detail_Invoice detailInv: lstInvoice) {
               message += String.valueOf(detailInv.getID_In()) ;
               message+=", ";
            }
            type="warning";
        }
        System.out.println(message);
        request.setAttribute("message", message);
        request.setAttribute("type", type);
        request.getRequestDispatcher("admincontrol").forward(request, response);
//        response.sendRedirect("admincontrol");
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">


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
