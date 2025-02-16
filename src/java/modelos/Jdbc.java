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
public class Jdbc {
    public static void main(String[] args) {
        String url = "jdbc:mysql:///minimercado";
        String username = "root";
        String password = "1234";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            System.out.println(con);
            
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }        
    
    }
}
