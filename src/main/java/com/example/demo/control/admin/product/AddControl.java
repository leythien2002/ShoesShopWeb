/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control.admin.product;

import com.example.demo.entity.Product;
import com.example.demo.loaddata.LoadData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Asus
 */
@WebServlet(name = "AddControl", urlPatterns = {"/add"})
public class AddControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mess="";
        String alert;
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String nid = request.getParameter("id");
        String nname = request.getParameter("name");
        String nimage1 = request.getParameter("image1");
        String nimage2 = request.getParameter("image2");
        String nimage3 = request.getParameter("image3");

        String nprice = request.getParameter("price");
        String nsize = request.getParameter("size");
        String ndescription = request.getParameter("description");
        String ntype = request.getParameter("type");

        LoadData load = new LoadData();
        Product tmp=load.getProductByID(nid);
        if(tmp!=null){
            mess="Add Error";
            alert="warning";
        }
        else{

            Boolean tmp1=load.insertProduct(nid, nname, nprice, ntype, nsize, nimage1,nimage2,nimage3, ndescription);
            if(tmp1){
                mess="Add Success";
                alert="success";
            }
            else{
                mess="Add Error";
                alert="warning";
            }

        }
        request.setAttribute("message", mess);
        request.setAttribute("type", alert);
        System.out.println(alert);
        request.getRequestDispatcher("admincontrol").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
