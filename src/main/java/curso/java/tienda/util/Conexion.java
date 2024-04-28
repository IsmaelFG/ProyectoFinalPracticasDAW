package curso.java.tienda.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    
	static String bd = "tienda_alvaro_cordero";
	static String login = "root";
	static String password = "";
	static String host = "127.0.0.1"; 
        
//  static String bd = "tienda_curso_serbatic";
//	static String login = "adminsql";
//	static String password = "paso";
//	static String host = "192.168.1.233"; //localhost
	
	static String url = "jdbc:mysql://";
	static Connection conexion; //atributo para  guardar el objeto Connection
        
        
	
    public static Connection getConexion() {
	   //SINGLETON
    	if (conexion == null) {
	    	crearConexion();
	    }
	    return conexion;
    }
    
    // devuelve true si se ha creado correctamente
    public static boolean crearConexion() {
	    try {
	        //cargo el driver
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        conexion = DriverManager.getConnection(url + host + "/"+ bd, login, password);    
               
            conexion.setAutoCommit(true);
	        
	    } catch (SQLException e) {
	    	return false;
	    }
	    catch (Exception e) {
	    	return false;
	    }
	    return true;
    }

    public static void desconectar(){
    	try {
            conexion.close();
            conexion = null;
            System.out.println("La conexion a la  base de datos " + bd + " ha terminado");
    	
    	} catch (SQLException e) {
    		System.out.println("Error al cerrar la conexion");
        }
    }
   
}