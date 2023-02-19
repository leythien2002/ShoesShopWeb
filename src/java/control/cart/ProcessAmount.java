/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control.cart;

import entity.Cart;
import entity.LineItem;
import entity.Product;
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
 * @author thien
 */
@WebServlet("/process")
public class ProcessAmount extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        //nay dung cho remove san pham
        Cookie[] arr = request.getCookies();
        LoadData load = new LoadData();
        List<Product> list = load.getAllProduct();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0); // xem lai cho nay 8 9p
                    response.addCookie(o);
                }
            }
        }
        //tao mot cai chuoi-->product nao trung thi dua vao temp-->con lai vao out
        //sau do add lai out vao cookie.
        String id=request.getParameter("productId");
        String[] temp=txt.split("/");
        String out="";
        for(int i=0;i<temp.length;i++){
            String[] s=temp[i].split(":");
            if(!s[0].equals(id)){
                if(out.isEmpty()){
                    out=temp[i];
                }else{
//                    txt+="/"+temp[i]; //xem lai 
                    out+="/"+temp[i];
                }
            }
        }
        if(!out.isEmpty()){
            Cookie c=new Cookie("cart",out);
//            c.setMaxAge(60*60);
            response.addCookie(c);
        }
        Cart cart=new Cart(out,list);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
   protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] arr = request.getCookies();
        LoadData load = new LoadData();
        List<Product> list = load.getAllProduct();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0); // xem lai cho nay 8 9p
                    response.addCookie(o);
                }
            }
        }
        Cart cart=new Cart(txt,list);
        String amount=request.getParameter("amount");
        String id=request.getParameter("productId");
        try{
            Product p=load.getProduct(id);
//            int numStore=d.getAmount(); //kiem tra so luong trong kho
            int num=Integer.parseInt(amount);
            //num =-1 la giam num=1 la + them
            if(num==-1&&(cart.getAmount(id)<=1)){
                cart.removeItem(id);
            }else{
//                if(num==1&&cart.getAmount(id)>=numStore)
                    double price=p.getPrice();
                    LineItem t= new LineItem(p,num);
                    cart.addItem(t);
            }
        }catch(NumberFormatException e){
       
        }
        List<LineItem> items = cart.getItems();
        txt = "";
        //kiem tra xem cai phan tu ma minh tang len co trong gio hang khogn
        if (items.size() > 0) {//sua lai file txt
            txt = items.get(0).getProduct().getId() + ":" + items.get(0).getAmount();//phan tu dau tien
            for (int i = 1; i < items.size(); i++) {//cac phan tu tiep theo
                txt += "/" + items.get(i).getProduct().getId() + ":" + items.get(i).getAmount();
            }
        }
        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(60 * 60);
        response.addCookie(c);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    

}
