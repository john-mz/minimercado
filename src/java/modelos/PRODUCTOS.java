/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

import java.util.Vector;
import java.sql.*;

/**
 *
 * @author docente
 */
//public abstract class PRODUCTOS {
public class PRODUCTOS {
    protected String ref, nombre;
    protected double precio_compra, precio_venta;
    protected int id_proveedor;
    
    public void insertarProducto(String ref, String nombre, int id_proveedor, double precio_compra, double precio_venta){
        String query = "INSERT INTO productos (ref, nombre, id_proveedor, precio_compra, precio_venta) values (?,?,?,?,?)";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ref);
            ps.setString(2, nombre);
            ps.setInt(3, id_proveedor);
            ps.setDouble(4, precio_compra);
            ps.setDouble(5, precio_venta);
            
            ps.executeUpdate();
            System.out.println("Dato insertado con exito");
        } catch (SQLException ex) {
            System.out.println("error al insertar dato");
            ex.printStackTrace();
        }
    }
    
    public void editarProducto(int id_producto, String ref, String nombre, int id_proveedor, double precio_compra, double precio_venta){
//        UPDATE productos SET ref = "new", nombre = "m801plus", id_proveedor = 7, precio_compra = 10000.0, precio_venta = 20000.0 WHERE id_producto = 12;
        String query = "UPDATE productos SET ref = ?, nombre = ?, id_proveedor = ?, precio_compra = ?, precio_venta = ? WHERE id_producto = ?";
        
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ref);
            ps.setString(2, nombre);
            ps.setInt(3, id_proveedor);
            ps.setDouble(4, precio_compra);
            ps.setDouble(5, precio_venta);
            ps.setInt(6, id_producto);
            
            ps.executeUpdate();
            System.out.println("Dato editado con exito");
        } catch (SQLException ex) {
            System.out.println("error al editar dato");
            ex.printStackTrace();
        }
    }
    
    public void eliminarProducto(int id_producto){
        String query = "DELETE from productos WHERE id_producto = ?";
        try {
            Connection con = Conexion.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id_producto);
     
            ps.executeUpdate();
            System.out.println("Dato eliminado con exito");
        } catch (SQLException ex) {
            System.out.println("error al editar dato");
            ex.printStackTrace();
        }
    }
    
    
    //public Vector listar_productos(){
        // es mejor fetch la data de la db en string y luego convertir los numeros a int xq java es fuertemente tipado
            //esto es un vector con vectores adentro tipo string i.e multidimensional array. 
        //Vector<Vector<String>> productos = new Vector<>();
        //return productos;
    //}
    
}
