package control;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import entity.Cart;
import entity.LineItem;
import entity.Product;
import entity.Type;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import loaddata.LoadData;

/**
 *
 * @author Asus
 */
@WebServlet(urlPatterns = {"/productload"})
public class ProductControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        LoadData load = new LoadData();
        List<Product> list = load.getAllProduct();

        System.out.print("SIZE: " + list.size());
        // for search
        List<Type> listT = load.getAllType();
        List<Product> last3P = load.get3LastProduct();

        //Page indexing
        int count = load.getAmountProduct();
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }
        System.out.println("Endpage at: " + endPage);
        System.out.println("count at: " + count);
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        List<Product> listProductIndex = load.getProductByPage(index);
        
        request.setAttribute("activeIndex", index);

        request.setAttribute("endP", endPage);
//        request.setAttribute("ListP", list);
        request.setAttribute("ListP", listProductIndex);

        //vi khi nguoi dung quay lai mua tiep se can cookie nen can lay cookie o day
        //cart
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
        //nếu có sẵn 1 giỏ hàng, thì sẽ cần có số lượng tổng để hiện thị
        int n;
        if (listItem != null) {
            n = listItem.size();
        } else {
            n = 0;
        }
        request.setAttribute("size", n);
        //for search
        request.setAttribute("ListT", listT);
        request.setAttribute("Last3P", last3P);

        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
