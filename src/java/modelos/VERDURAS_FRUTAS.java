/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
import java.sql.*;
import java.util.Vector;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author docente
 */
public class VERDURAS_FRUTAS extends PRODUCTOS {
    protected double peso;
    protected String tipo;
    
    public void insertarP(String ref, String nombre, int id_proveedor, double precio_compra, double precio_venta, double peso, String tipo){
        String query = "INSERT INTO productos (ref, nombre, id_proveedor, precio_compra, precio_venta, peso, tipo_verdura_fruta) values (?,?,?,?,?,?,?)";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ref);
            ps.setString(2, nombre);
            ps.setInt(3, id_proveedor);
            ps.setDouble(4, precio_compra);
            ps.setDouble(5, precio_venta);
            ps.setDouble(6, peso);
            ps.setString(7, tipo);
            
            ps.executeUpdate();
            System.out.println("Dato insertado con exito");
        } catch (SQLException ex) {
            System.out.println("error al insertar dato");
            ex.printStackTrace();
        }
    }
    
    public ResultSet obtenerVERDURAS_FRUTA() {
    String query = "SELECT id_producto, ref, nombre, id_proveedor, precio_compra, precio_venta, peso, tipo_verdura_fruta FROM productos";
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
