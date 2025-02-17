/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;
import java.sql.*;

/**
 *
 * @author Stiven
 */
public class Conexion {
     //que es una variable estatica??
    static String url = "jdbc:mysql://localhost:3306/minimercado";
    static String user = "root";
    static String pass = "";
    
                    //tipo 'Connection'
    public static Connection conectar(){
        Connection con = null;
        try {
            con = DriverManager.getConnection(url, user, pass); 
            System.out.println("Conexion exitosa");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return con;
            
        
                
    }
}
