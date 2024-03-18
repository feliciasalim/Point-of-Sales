/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utspbo;

import java.beans.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class Barang {
    public String kode;
    public float harga;
    public String nama;
    
    ArrayList<Barang> daftarBarang;
    public static void loadBarangFromDB (){
        try {
            Statement stmt = DBConnector.connection.createStatement();
            String sql = "SELECT * FROM barang";
        }
        catch (Exception ex){
            System.out.println(ex);
        }
        
    }
}
