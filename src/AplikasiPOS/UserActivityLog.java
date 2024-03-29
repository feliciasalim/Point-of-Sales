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
    
    
    // Method to log login activity
    public static void logLogin(String username) {
        DBConnector.initDBConnection();
        String Username = username;
        String action = "Login";
        try {
            String query = "INSERT INTO detail_login_logout (username, tanggal, log_activity) VALUES ('"+username+"','"+new Timestamp(System.currentTimeMillis())+"','"+action+"')";
            Connection conn = DBConnector.connection;
            Statement stmt = conn.createStatement();

            int rowsAffected = stmt.executeUpdate(query);
            if (rowsAffected>0){
                System.out.print("success");
            }
            else {
                System.out.print("error");
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    }





