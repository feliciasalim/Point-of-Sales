/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AplikasiPOS;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.Timestamp;

public class UserActivityLog {
    static Connection connection;
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/pos_db";
    static final String USER = "root";
    static final String PASSWORD = "";
    
    // Method to log login activity
    public static void logLogin(String username) {
        String Username = username;
        String action = "Login";
        try {
            Class.forName(JDBC_DRIVER);
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);

            String query = "INSERT INTO detail_login_logout (username, tanggal, log_activity) VALUES ('"+username+"', '"+new Timestamp(System.currentTimeMillis())+"', '"+action+"')";
            Statement stmt = connection.createStatement();

            int rowsAffected = stmt.executeUpdate(query);
            if (rowsAffected>0){
                System.out.print("success");
            }
            else {
                System.out.print("error");
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    }





