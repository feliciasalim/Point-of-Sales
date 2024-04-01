package AplikasiPOS;

/**
 *
 * @author ASUS
 */
public class Session {
    private static String Username;
    private static String id;
    
    
    public static String get_Username() {
        return Username;
    }
    
    public static String get_id() {
        return id;
    }
    
    public static void set_id(String id) {
        Session.id = id;
    }
    
    public static void set_Username (String username){
        Session.Username = Username;
    }
   
}
