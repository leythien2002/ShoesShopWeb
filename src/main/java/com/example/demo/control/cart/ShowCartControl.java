/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.demo.control.cart;

import com.example.demo.entity.Cart;
import com.example.demo.entity.LineItem;
import com.example.demo.entity.Product;
import com.example.demo.loaddata.LoadData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author thien
 */
@WebServlet("/checkout")
public class ShowCartControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LoadData load = new LoadData();
        List<Product> list = load.getAllProduct();

        //vi khi nguoi dung quay lai mua tiep se can cookie nen can lay cookie o day
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                }
            }
        }
        Cart cart = new Cart(txt, list);
        List<LineItem> listItem = cart.getItems();

        int n;
        if (listItem != null) {
            n = listItem.size();
        } else {
            n = 0;
        }
        request.setAttribute("size", n);
        request.setAttribute("cart", cart);
        System.out.println("checkout control:" + txt);
        System.out.println("checkout control");
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
