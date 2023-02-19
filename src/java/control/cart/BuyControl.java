/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control.cart;

import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import loaddata.LoadData;
import entity.*;
import javax.servlet.ServletContext;

/**
 *
 * @author thien
 */
@WebServlet("/buy")//dung cho thao tac click buy
public class BuyControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] arr=request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
//                    o.setMaxAge(0); // xem lai cho nay 8 9p
//                    response.addCookie(o);
                }
            }
        }
        String amount = request.getParameter("amount");
        int quantity = Integer.parseInt(amount);
//        int quantity;
//        try {
//            
//            if (quantity < 0) {
//                quantity = 1;
//            }
//        } catch (NumberFormatException nfe) {
//            quantity = 1;
//        }
        String id = request.getParameter("productId");
        if (txt.isEmpty()) {
            txt = id + ":" + quantity;
        } else {
            txt = txt + "/" + id + ":" + quantity;
        }
        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(60 * 60);//luon co setMaxAge ko co se bi loi~ ?
        response.addCookie(c);
        System.out.println("buycontrol control:" + txt);
        System.out.println("Success buycontrol");

//        request.getRequestDispatcher("productload").forward(request, response);
        response.sendRedirect("productload");
        //de no khong nhay sang trang khac khi click mua
    }
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
       
    }
    
}
