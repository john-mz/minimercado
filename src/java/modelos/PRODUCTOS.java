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
public abstract class PRODUCTOS {
    protected String ref, nombre;
    protected double precio_compra, precio_venta;
    protected Vector<String> proveedor;

    public PRODUCTOS(String ref, String nombre, double precio_compra, double precio_venta, Vector<String> proveedor) {
        this.ref = ref;
        this.nombre = nombre;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
        this.proveedor = proveedor;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public Vector<String> getProveedor() {
        return proveedor;
    }

    public void setProveedor(Vector<String> proveedor) {
        this.proveedor = proveedor;
    }
    
    public void crear_producto() {
        
        
    }
    
    public String editar_producto(int id){
        String mensaje = "";
        return mensaje;
    }
    
    public String inactivar_producto(int id){
        String mensaje = "";
        return mensaje;
    }
    
    public Vector listar_productos(){
        // es mejor fetch la data de la db en string y luego convertir los numeros a int xq java es fuertemente tipado
            //esto es un vector con vectores adentro tipo string i.e multidimensional array. 
        Vector<Vector<String>> productos = new Vector<>();
        return productos;
    }
    
}
