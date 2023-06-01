package com.example.demo.loaddata;

import com.example.demo.datacon.DataBaseConnection;
import com.example.demo.entity.User;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
public class PaymentDao {
    private static Connection connection;
    public PaymentDao() {
        try {
            connection = DataBaseConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean addPay(String uid,double ttmoney,String phone, String address ) throws SQLException {
        LocalDate today = LocalDate.now();
        boolean mess = false;
        String sql = "insert into invoice(Date,UID,TotalMoney,Phone,Address) values(?,?,?,?,?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setDate(1, Date.valueOf(today));
            statement.setString(2, uid);
            statement.setDouble(3, ttmoney);
            statement.setString(4, phone);
            statement.setString(5, address);
            statement.executeUpdate();
            mess = true;
        }
        return mess;
    }
}
