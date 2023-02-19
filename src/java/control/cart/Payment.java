/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control.cart;

import control.email.SendEmail;
import entity.Cart;
import entity.Product;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import loaddata.LoadData;

/**
 *
 * @author thien
 */
@WebServlet(name = "Payment", urlPatterns = {"/payment"})
public class Payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        //Send Email
        String fullName = request.getParameter("fullname");
        String phoneNumber = request.getParameter("phone");
        String address = request.getParameter("address");

        HttpSession session = request.getSession();
        User a = (User) session.getAttribute("acc");

        System.out.println(fullName);
        System.out.println(phoneNumber);

        System.out.println(address);

        Cookie[] arr = request.getCookies();
        LoadData load = new LoadData();
        List<Product> list = load.getAllProduct();
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
        Cart cart = new Cart(txt, list);
//        HttpSession session = request.getSession();
//        User a = (User) session.getAttribute("acc");//lum cai acc
        if (a == null) {
            response.sendRedirect("login.jsp");
        } else {
            load.addInvoice(a, cart,phoneNumber, address);
            Cookie c = new Cookie("cart", "");
            c.setMaxAge(0);
            response.addCookie(c);

            //Send Bill
            String money = String.valueOf(cart.getTotalMoney());
            SendEmail sm = new SendEmail();
            boolean test = sm.sendBill(a, fullName, phoneNumber, address, money);

            request.getRequestDispatcher("productload").forward(request, response);

        }

    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
//        String message;
//  
//        request.setAttribute("message", message);
        doPost(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

}
