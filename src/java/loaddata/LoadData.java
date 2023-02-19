/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package loaddata;

/**
 *
 * @author Asus
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.Product;
import java.util.*;
import datacon.DataBaseConnection;
import entity.Cart;
import entity.LineItem;
import entity.Type;
import entity.User;
import java.sql.SQLException;
import java.time.LocalDate;

public class LoadData {

    Connection conn = null;
    PreparedStatement ps, ps1, ps2, ps3 = null;
    ResultSet rs = null;

    public Product getProduct(String a) {
        Product p = new Product();
        String query = "select * from Product where ID_P='" + a + "'";
        System.out.println(query);
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            //ps.setString(1,a) gan string cho a
            while (rs.next()) {
                p = new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        System.out.println(p.getId());
        return p;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public List<Type> getAllType() {
        List<Type> list = new ArrayList<>();
        String query = "SELECT DISTINCT Type FROM Product";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Type(rs.getString(1)));
            }
            Set<Type> set = new HashSet<>(list);
            list.clear();
            list.addAll(set);
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public List<Product> get3LastProduct() {
        List<Product> list = new ArrayList<>();

        String query = "select * from Product ORDER by ID_P DESC LIMIT 3";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public List<Product> getProductByType(String type) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Product where Type=?";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, type);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "SELECT * FROM Product WHERE ID_P = ?";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public List<Product> getProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `Product` WHERE Name_P LIKE ?";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
//    public static void main(String[] args)
//            {
//                LoadData load = new LoadData(); 
//                List<Product> list = load.getAllProduct();
//                for (Product o : list)
//                {
//                System.out.println(o);
//                }
//            }
    //Checkout( thanh toan)

    public void addInvoice(User u, Cart cart, String phoneNumber, String address) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add INvoice
            String query = "insert into Invoice (Date,UID,TotalMoney,Phone,Address) values(?,?,?,?,?)";
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, u.getUserName());
            ps.setDouble(3, cart.getTotalMoney());
            ps.setString(4, phoneNumber);
            ps.setString(5, address);
            ps.executeUpdate();

            //sau khi add vao invoice thi tiep tuc lay cai invoice moi add vao de add vao detail
            //get ID invoice
//            String query1="select top(1) ID_In from Invoice order by ID_In desc";
            String query1 = "select * from Invoice order by ID_In desc Limit 1";
//            conn1 = new DataBaseConnection().getConnection();
            ps1 = conn.prepareStatement(query1);
            rs = ps1.executeQuery();
            //add bang Detail_In
            if (rs.next()) {
                int invoiceid = rs.getInt("ID_In");
                for (LineItem i : cart.getItems()) {
                    String query2 = "insert into Detail_In (ID_In,ID_P,Amount)value(?,?,?)";
                    ps2 = conn.prepareStatement(query2);
                    ps2.setInt(1, invoiceid);
                    ps2.setString(2, i.getProduct().getId());
                    ps2.setInt(3, i.getAmount());
//                    ps2.setDouble(4, i.getProduct().getPrice());//lay gia tien san pham
                    ps2.executeUpdate();
                }
            }
            //ban di roi thi can cap nhat lai so luon trong kho
//            String query3="update Product set Amount=Amount-? where ID_P=?";
//            ps3=conn.prepareStatement(query3);
//            for(LineItem i:cart.getItems()){
//                ps3.setInt(1, i.getAmount());
//                ps3.setString(2, i.getProduct().getId());
//                ps3.executeUpdate();
//            }

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //ADMIN 
    public void deleteProductByID(String pid) {

        String query = "DELETE FROM Product WHERE ID_P =?";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public void insertProduct(String id, String name, String price, String type, String size, String image1, String image2, String image3, String description) {

        String query = "INSERT INTO Product (ID_P, Name_P, Price, Type, Size, Image1,Image2,Image3, Description) VALUES (?, ?, ?, ?, ?, ?, ?,?,?)";

        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, price);
            ps.setString(4, type);
            ps.setString(5, size);
            ps.setString(6, image1);
            ps.setString(7, image2);
            ps.setString(8, image3);
            ps.setString(9, description);
            ps.executeUpdate();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void editProduct(String id, String name, String price, String type, String size, String image1, String image2, String image3, String description) {

        String query = "UPDATE Product SET "
                + "Name_P =?, "
                + "Price =?, "
                + "Type =?, "
                + "Size =?, "
                + "Image1 =?, "
                + "Image2 =?, "
                + "Image3 =?, "
                + "Description=? "
                + "WHERE Product.ID_P = ?";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, type);
            ps.setString(4, size);
            ps.setString(6, image1);
            ps.setString(7, image2);
            ps.setString(8, image3);
            ps.setString(6, description);
            ps.setString(7, id);

            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //USER HISTORY 
    public List<Product> getUSerBuy(String username) {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select *  From product pro1 \n"
                    + "Where pro1.ID_P in \n"
                    + "(select distinct pro.ID_P as proid\n"
                    + "From Invoice inv, detail_in dinv, product pro \n"
                    + "WHERE inv.UID=? and dinv.ID_In= inv.ID_In and pro.ID_P= dinv.ID_P)";

            conn = new DataBaseConnection().getConnection();

            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
//            if (rs.next()) {
//                int invoiceid = rs.getInt("ID_In");
//                String query1 = "select * from Detail_In WHERE ID_In=?";
//                ps1 = conn.prepareStatement(query1);
//                ps1.setInt(1, invoiceid);
//                ResultSet rs1 = ps1.executeQuery();
//                while (rs1.next()) {
//                    String productID = rs1.getString("ID_P");
//                    String query3 = "select * from Product WHERE ID_P=?";
//                    ps2 = conn.prepareStatement(query3);
//                    ps2.setString(1, productID);
//                    ResultSet rs2 = ps2.executeQuery();
//                    if (rs2.next()) {
//                        list.add(new Product(rs2.getString(1),
//                                rs2.getString(2),
//                                rs2.getInt(3),
//                                rs2.getString(4),
//                                rs2.getInt(5),
//                                rs2.getString(6),
//                                rs2.getString(7)));
//                    }
//                }
//            }
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    //PAGE INDEXING
    public int getAmountProduct() {
        String query = "select count(*) from Product";
        int i = 0;
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return i;
    }

    public List<Product> getProductByPage(int index) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Product ORDER BY ID_P limit ?,9";
        try {
            conn = new DataBaseConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
