/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AplikasiPOS;

import java.beans.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
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
    
    static ArrayList<Barang> daftarBarang;
    public static void loadBarangFromDB (){
        
        daftarBarang = new ArrayList<Barang>();
        Barang barang;
        try {
            Statement stmt = (Statement) DBConnector.connection.createStatement();
            String sql = "SELECT * FROM barang";
            
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next())
            {
                barang = new Barang();
                barang.kode = Integer.toString (rs.getInt("kode"));
                barang.nama = rs.getString ("nama");
                barang.harga = rs.getFloat ("harga");
                
                daftarBarang.add(barang);
            }
        }
        catch (Exception ex){
            System.out.println(ex);
        }
        
    }
}
