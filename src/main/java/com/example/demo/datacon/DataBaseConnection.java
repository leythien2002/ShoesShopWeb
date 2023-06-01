            /*
             * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
             * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
             */
            package com.example.demo.datacon;

            import java.sql.Connection;
            import java.sql.DriverManager;

            public class DataBaseConnection {

                /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
                /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
                public static Connection getConnection() throws Exception {
                    // get a connection
                    String url = "jdbc:mysql://localhost:3306/websneaker";
                    Class.forName("com.mysql.jdbc.Driver");
                    return DriverManager.getConnection(url, "root", "leythien");
                }

                private final String serverName = "localhost";
                private final String dbName = "/websneaker";
                private final String portNumber = "3306";
                private final String userID = "root";
                private final String password = "vietanh123";

            }
