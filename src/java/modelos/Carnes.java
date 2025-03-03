/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Stiven
 */
public class Carnes extends VERDURAS_FRUTAS {
    protected String tipo_corte;
    
    public ResultSet obtenerCarnes() {
    String query = "SELECT id_producto, ref, nombre, id_proveedor, precio_compra, precio_venta, peso, tipo_verdura_fruta, tipo_corte  FROM productos";
    try {
        Connection con = Conexion.conectar();
        PreparedStatement ps = con.prepareStatement(query);
        return ps.executeQuery();
    } catch (SQLException ex) {
        ex.printStackTrace();
        return null;
    }
    }
    
    public void insertarP(String ref, String nombre, int id_proveedor, double precio_compra, double precio_venta, double peso, String tipo, String tipo_corte){
        String query = "INSERT INTO productos (ref, nombre, id_proveedor, precio_compra, precio_venta, peso, tipo_verdura_fruta, tipo_corte) values (?,?,?,?,?,?,?,?)";
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
            ps.setString(8, tipo_corte);
            
            ps.executeUpdate();
            System.out.println("Dato insertado con exito");
        } catch (SQLException ex) {
            System.out.println("error al insertar dato");
            ex.printStackTrace();
        }
    }
}
