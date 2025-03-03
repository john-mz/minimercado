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
public class Granos extends PRODUCTOS{
    protected int stock;
    protected String marca;
    protected double tamano;
    protected String fecha_vencimiento;
    protected String lote;
    protected String codigo_barras;
    
    public ResultSet obtenerGranos() {
    String query = "SELECT id_producto, ref, nombre, id_proveedor, precio_compra, precio_venta, stock, marca, tamano, fecha_vencimiento, lote, codigo_barras FROM productos";
    try {
        Connection con = Conexion.conectar();
        PreparedStatement ps = con.prepareStatement(query);
        return ps.executeQuery();
    } catch (SQLException ex) {
        ex.printStackTrace();
        return null;
    }
    }
    
    public void insertarP(String ref, String nombre, int id_proveedor, double precio_compra, double precio_venta, int stock, String marca, int tamano, String fecha_vencimiento, String lote, String codigo_barras){
        String query = "INSERT INTO productos (ref, nombre, id_proveedor, precio_compra, precio_venta, stock, marca, tamano, fecha_vencimiento, lote, codigo_barras) values (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ref);
            ps.setString(2, nombre);
            ps.setInt(3, id_proveedor);
            ps.setDouble(4, precio_compra);
            ps.setDouble(5, precio_venta);
            ps.setInt(6, stock);
            ps.setString(7, marca);
            ps.setInt(8, tamano);
            ps.setString(9, fecha_vencimiento);
            ps.setString(10, lote);
            ps.setString(11, codigo_barras);
            
            ps.executeUpdate();
            System.out.println("Dato insertado con exito");
        } catch (SQLException ex) {
            System.out.println("error al insertar dato");
            ex.printStackTrace();
        }
    }
}   
