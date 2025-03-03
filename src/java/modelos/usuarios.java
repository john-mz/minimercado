/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;
//primero importamos la libreria sql
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Stiven
 */
public class usuarios {
    public void insertarUsuario(String nombre, String email, String clave, String rol){
        String query = "INSERT INTO usuarios (nombre, email, clave, rol) values (?,?,?,?)";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, email);
            ps.setString(3, clave);
            ps.setString(4, rol);
            
            ps.executeUpdate();
            System.out.println("Dato insertado con exito");
        } catch (SQLException ex) {
            System.out.println("error al insertar dato");
            ex.printStackTrace();
        }
    }
    public void editarUsuario(int id_usuario, String nombre, String email, String clave, String rol){
        String query = "UPDATE usuarios SET nombre = ?, email = ?, clave = ?, rol = ? WHERE id_usuario = ?";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, email);
            ps.setString(3, clave);
            ps.setString(4, rol);
            ps.setInt(5, id_usuario);
            
            ps.executeUpdate();
            System.out.println("Dato editado con exito");
        } catch (SQLException ex) {
            System.out.println("error al editar dato");
            ex.printStackTrace();
        }
    }
    
    public void eliminarUsuario(int id_usuario){
        String query = "DELETE from usuarios WHERE id_usuario = ?";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id_usuario);
     
            ps.executeUpdate();
            System.out.println("Dato eliminado con exito");
        } catch (SQLException ex) {
            System.out.println("error al editar dato");
            ex.printStackTrace();
        }
    }
    
    public ResultSet obtenerUsuarios() {
    String query = "SELECT * FROM usuarios";
    try {
        Connection con = Conexion.conectar();
        PreparedStatement ps = con.prepareStatement(query);
        return ps.executeQuery();
    } catch (SQLException ex) {
        ex.printStackTrace();
        return null;
    }
}


    
}
