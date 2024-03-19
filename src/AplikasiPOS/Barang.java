package AplikasiPOS;

import java.beans.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;


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
