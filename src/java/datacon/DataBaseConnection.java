            /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package datacon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnection {

    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
 /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    public Connection getConnection() throws Exception {
        // get a connection
        String url = "jdbc:mysql://" + serverName + ":" + portNumber + dbName;

        Class.forName("com.mysql.jdbc.Driver");
//                String dbURL = "jdbc:mysql://remotemysql.com:3306/gMUWtf0kJX";
//                String dbname = "gMUWtf0kJX";
//                String dbpass = "rK84XX7IGb";
        return DriverManager.getConnection(url, userID, password);
//        return DriverManager.getConnection(
//                dbURL, dbname, dbpass);
    }
    //Heroku database
    private final String serverName = "us-cdbr-east-06.cleardb.net";
    private final String dbName = "/heroku_2ea8db703bf726c";
    private final String portNumber = "3306";
    private final String userID = "bf7b3f0d3d8a3d";
    private final String password = "6c52e97b";
      
    //Local database
//    
//    private final String serverName = "localhost";
//    private final String dbName = "/gMUWtf0kJX";
//    private final String portNumber = "3306";
//    private final String userID = "root";
//    private final String password = "vietanh123";
//    
    //Remotemysql database

//    private final String serverName = "remotemysql.com";
//    private final String dbName = "/gMUWtf0kJX";
//    private final String portNumber = "3306";
//    private final String userID = "gMUWtf0kJX";
//    private final String password = "rK84XX7IGb";
    /*Insert your other code right after this comment*/
}
