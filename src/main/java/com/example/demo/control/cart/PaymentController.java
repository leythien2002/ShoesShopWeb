package com.example.demo.control.cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

import com.example.demo.loaddata.PaymentDao;

@WebServlet("/paymentController")
public class PaymentController extends HttpServlet {
    private PaymentDao paymentDao;

    public void init() {
        paymentDao = new PaymentDao();
    }
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String action = "";
        String url ="";
        if (action == null) {
            action = "join";  // default action
        }

        HttpSession session = request.getSession();
        String accode = (String) session.getAttribute("actionCode");
        String statusTrans = request.getParameter("statusTrans");
        String Useruser = (String) session.getAttribute("UNAME");
//        String UID = (String) session.getAttribute("userName");
        double totall = (double) session.getAttribute("totalMoney");
        String userphone = request.getParameter("customerPhone");
        String address = request.getParameter("address");

        switch (accode) {
            case "trans":
                try {
                    boolean mess = paymentDao.addPay(Useruser,totall,userphone,address);
                    if(mess){
                        System.out.println("susscess");
                        response.sendRedirect("index.jsp");
                    }
                    else {
                        System.out.println("error");
                        response.sendRedirect("trans.jsp");
                    }
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:

                break;
        }

    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public static String message = "";
}
