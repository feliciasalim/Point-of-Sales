package AplikasiAdmin;

import AplikasiPOS.*;
import java.util.UUID;

/**
 *
 * @author ASUS
 */
public class Session {
    private static String admin_username;
    private static String id;
    
    
    public static String get_Username() {
        return admin_username;
    }
    
    public static String get_id() {
        return id;
    }
    
    public static void set_id(String id) {
        Session.id = id;
    }
    
    public static void set_Username (String admin_username){
        Session.admin_username = admin_username;
    }
   
}
