package com.example.demo.loaddata;

import com.example.demo.datacon.DataBaseConnection;
import com.example.demo.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDao {
    private static Connection connection;
    public UserDao() {
        try {
            connection = DataBaseConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static boolean checkUserByEmailAndUname(String email, String Uname) throws SQLException{
        boolean userExists = true;
        String sql = "SELECT * FROM user WHERE Email=? or Username=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.setString(2,Uname);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    userExists = false;
                }
            }
        }
        return userExists;
    }

    public static boolean checklogin(String Uname, String pwp) throws SQLException{
        boolean check = false;
        String sql = "SELECT * FROM user WHERE Username=? and Password=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, Uname);
            statement.setString(2,pwp);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    check = true;
                }
            }
        }
        return check;
    }
    public static User getlogin(String Uname, String pwp) throws SQLException{
        User userExists = new User();
        String sql = "SELECT * FROM user WHERE Username=? and Password=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, Uname);
            statement.setString(2,pwp);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    userExists.setEmail(resultSet.getString("Email"));
                    userExists.setName(resultSet.getString("Name"));
                    userExists.setPerMiss(resultSet.getInt("perMiss"));
                    userExists.setUserName(Uname);
                    userExists.setPassWord(pwp);
                }
            }
        }
        return userExists;
    }
    public static boolean checkEmail(String email) throws SQLException{
        boolean userExists = true;
        String sql = "SELECT * FROM user WHERE Email=? ";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    userExists = false;
                }
            }
        }
        return userExists;
    }

    public boolean addUser(User user) throws SQLException {
        boolean mess = false;
        boolean checkex = checkUserByEmailAndUname(user.getEmail(),user.getUserName());
        if(checkex) {
            String sql = "insert into User(Username,Password,Name,Email,perMiss) values(?,?,?,?,?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, user.getUserName());
                statement.setString(2, user.getPassWord());
                statement.setString(3, user.getName());
                statement.setString(4, user.getEmail());
                statement.setInt(5, user.getPerMiss());
                statement.executeUpdate();
                mess = true;
            }
        }
        return mess;
    }

    public boolean updatePwP(String pwp, String email) throws SQLException {
        boolean mess = false;

        String sql = "UPDATE user SET Password = ? WHERE Email = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, pwp);
            statement.setString(2, email);

            // Thực thi câu lệnh SQL
            int rowsUpdated = statement.executeUpdate();

            // Kiểm tra số bản ghi được cập nhật thành công
            if (rowsUpdated > 0) {
                System.out.println("Cập nhật thông tin thành công!");
            }
            mess = true;
        }
        return mess;
    }

}
