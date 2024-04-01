package AplikasiPOS;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ActivityLog {
    public String Waktu;
    public String ID;
    public String Username;
    public String Aktivitas;
    public String id;
    
    static ArrayList<ActivityLog> daftarLog;
    public static void loadLogFromDB (){
        
        daftarLog = new ArrayList<ActivityLog>();
        ActivityLog activityLog;
        try {
            Statement stmt = (Statement) DBConnector.connection.createStatement();
            String sql = "SELECT * FROM detail_login_logout";
            
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next())
            {
                activityLog = new ActivityLog();
                activityLog.Waktu = rs.getString("tanggal");
                activityLog.ID = rs.getString ("prefix" + " - " + String.valueOf(rs.getInt("log_id")));
                activityLog.Username = rs.getString ("username");
                activityLog.Aktivitas = rs.getString ("log_activity");
                daftarLog.add(activityLog);
            }
        }
        catch (Exception ex){
            System.out.println(ex);
        }
        
    }
}
