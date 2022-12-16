
package org.gestion.controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionBD {
//    public static Connection getConnection(){
//
//      /*  String conexionURL = "jdbc:sqlserver://127.0.0.1:1433;database="
//                + "ProyGestionCambios;user=sa;password=123456;loginTimeout=30;";*/
//        try{
//            Thread.sleep(650000);
//            Connection con = DriverManager.getConnection(conexionURL);
//            return con;
//        }catch(SQLException ex){
//            System.out.println("ERROR: "+ex.toString());
//            throw new RuntimeException("ERROR: "+ex.toString());
//        } catch (InterruptedException ex) {
//            throw new RuntimeException("ERROR: "+ex.toString());
//        }
//    }
    
    //private static final String URL = "jdbc:h2:~/ProyGestionCambios;MODE=MSSQLServer;INIT=runscript from 'classpath:schema.sql'\\;runscript from 'classpath:import.sql';";
    private static final String URL = "jdbc:sqlserver://127.0.0.1:1433;user=root;password=root;database=ProyGestionCambios;encrypt=true;trustServerCertificate=true";

    private static Connection con = null;
  
  
    static
    {
//        String user = "root";
//        String pass = "root";
        try {

            con = DriverManager.getConnection(URL);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public static Connection getConnection()
    {
        return con;
    }
}
