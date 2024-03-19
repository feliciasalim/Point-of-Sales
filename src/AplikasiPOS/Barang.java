package AplikasiPOS;

import java.beans.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Barang {
    public String kode;
    public float harga;
    public String nama;
    
    ArrayList<Barang> daftarBarang;
    public static void loadBarangFromDB (){
        try {
            Statement stmt = (Statement) DBConnector.connection.createStatement();
            String sql = "SELECT * FROM barang";
        }
        catch (Exception ex){
            System.out.println(ex);
        }
        
    }
}
