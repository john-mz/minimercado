<%-- 
    Document   : index
    Created on : 11/02/2025, 12:44:20 p. m.
    Author     : docente
--%>
<%@ page import="modelos.Conexion" %>
<%@ page import="modelos.usuarios" %>
<%@ page import="modelos.PRODUCTOS" %>
<%@ page import="modelos.VERDURAS_FRUTAS" %>
<%@ page import="modelos.Carnes" %>
<%@ page import="modelos.Granos" %>
<%@ page import="modelos.Aseo" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
//       
        Connection con = Conexion.conectar();
        if (con != null) {
            out.println("<h2>Database Connection Successful!</h2>");
        } else {
            out.println("<h2>Database Connection Failed!</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
        e.printStackTrace();
    }

//    ORDEN INSERTAR USUARIO
//    try{
//        usuarios operaciones = new usuarios();
//        operaciones.insertarUsuario("Juan", "123", "juan@gmail.com", "cajero");
//    } catch(Exception e){
//        out.println("<h2>Error: " + e.getMessage() + "</h2>");
//        e.printStackTrace();
//    }
//    
//    ORDEN EDITAR USUARIO
//    try{
//        usuarios operaciones = new usuarios();
//        operaciones.editarUsuario(6, "daniela", "12333", "kevin@gmail.com", "cajero");
//    } catch(Exception e){
//        out.println("<h2>Error: " + e.getMessage() + "</h2>");
//        e.printStackTrace();
//    }
//    ORDEN ELIMINAR USUARIO
//    try {
//        usuarios operaciones = new usuarios();
//        operaciones.eliminarUsuario(5);  
//    } catch (Exception e) {
//        out.println("<h2>Error: " + e.getMessage() + "</h2>");
//        e.printStackTrace();
//    }
//    ORDEN INSERTAR PRODUCTO
//      try {
//        PRODUCTOS operaciones = new PRODUCTOS();
//        operaciones.insertarProducto("ALS32", "mouse model N", 7, 9000.0, 9900.0);
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }
//     ORDEN EDITAR PRODUCTO
//      try {
//        PRODUCTOS operaciones = new PRODUCTOS();
//        operaciones.editarProducto(12, "LAL322", "mouse m801plusx", 7, 10003.0, 20003.0);
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }
//     ORDEN BORRAR PRODUCTO
//      try {
//        PRODUCTOS operaciones = new PRODUCTOS();
//        operaciones.eliminarProducto(13);
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }
//        VERDURAS_FRUTAS fruta = new VERDURAS_FRUTAS("001", "Manzana", 123, 5.0, 7.0, 1.2, "Fruta");
//        fruta.mostrar();




//    INSERTAR VERDURAS_FRUTA
//      try {
//        VERDURAS_FRUTAS fruta = new VERDURAS_FRUTAS();
//        fruta.insertarP("3214", "AAS", 2, 4.0, 4.0, 2.0, "fruta");
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }

//      INSERTAR Carnes
//      try {
//        Carnes carne = new Carnes();
//        carne.insertarP("ASDF32","solomito",5,3,3,2,"no aplica","pierna de la vaca");
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }

//      INSERTAR Granos
//        try {
//        Granos grano = new Granos();
//        grano.insertarP("ALA", "Lentejas", 4, 300.00, 400.0, 3, "LentejasSaborC", 300, "2025-03-24", "LOTEPRUEBA", "BARRASPREUBA");
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }

//      INSERTAR ASEO
//        try {
//        Aseo aseo = new Aseo();
//        aseo.insertarP("ASDAF", "PATOJITO", 4, 300.00, 400.0, 3, "ASEO", 300, "2025-03-25", "LOTEPRUEBA3", "BARRASPREUBA3","rico", "oloroso");
//      } catch (Exception e) {
//            out.println("<h2>Error: " + e.getMessage() + "</h2>");
//            e.printStackTrace();
//      }
//        

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JaaaaSP Page</title>
    </head>
    <body>
        <h1>Hello World! fjadhuw</h1>
        <%  
            usuarios operaciones = new usuarios();
            ResultSet rs = operaciones.obtenerUsuarios();
            
            VERDURAS_FRUTAS oper = new VERDURAS_FRUTAS();
            ResultSet rx = oper.obtenerVERDURAS_FRUTA();
            
            Carnes op = new Carnes();
            ResultSet rz = op.obtenerCarnes();
            
            Granos gal = new Granos();
            ResultSet rzk = gal.obtenerGranos();
            
            Aseo aseo = new Aseo();
            ResultSet rzl = aseo.obtenerAseo();
        %>

        <h1>TABLA USUARIOS</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Email</th>
                <th>Rol</th>
            </tr>
            <%
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id_usuario")%></td>
                <td><%= rs.getString("nombre")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("rol")%></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1>TABLA VERDURAS_FRUTA</h1>
        <table border="1">
            <tr>
                <th>id_producto</th>
                <th>ref</th>
                <th>nombre</th>
                <th>id_proveedor</th>
                <th>precio_compra</th>
                <th>precio_venta</th>
                <th>peso</th>
                <th>tipo_verdura_fruta</th>
                
            </tr>
            <%
                while (rx.next()) {
            %>
            <tr>
                <td><%= rx.getInt("id_producto")%></td>
                <td><%= rx.getString("ref")%></td>
                <td><%= rx.getString("nombre")%></td>
                <td><%= rx.getInt("id_proveedor")%></td>
                <td><%= rx.getDouble("precio_compra")%></td>
                <td><%= rx.getDouble("precio_venta")%></td>
                <td><%= rx.getInt("peso")%></td>
                <td><%= rx.getString("tipo_verdura_fruta")%></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1>TABLA CARNES</h1>
        <table border="1">
            <tr>
                <th>id_producto</th>
                <th>ref</th>
                <th>nombre</th>
                <th>id_proveedor</th>
                <th>precio_compra</th>
                <th>precio_venta</th>
                <th>peso</th>
                <th>tipo_verdura_fruta</th>
                <th>tipo_corte</th>
                
            </tr>
            <%
                while (rz.next()) {
            %>
            <tr>
                <td><%= rz.getInt("id_producto")%></td>
                <td><%= rz.getString("ref")%></td>
                <td><%= rz.getString("nombre")%></td>
                <td><%= rz.getInt("id_proveedor")%></td>
                <td><%= rz.getDouble("precio_compra")%></td>
                <td><%= rz.getDouble("precio_venta")%></td>
                <td><%= rz.getInt("peso")%></td>
                <td><%= rz.getString("tipo_verdura_fruta")%></td>
                <td><%= rz.getString("tipo_corte")%></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1>TABLA Granos</h1>
        <table border="1">
            <tr>
                <th>id_producto</th>
                <th>ref</th>
                <th>nombre</th>
                <th>id_proveedor</th>
                <th>precio_compra</th>
                <th>precio_venta</th>
                <th>stock</th>
                <th>marca</th>
                <th>tamano</th>
                <th>fecha vencimiento</th>
                <th>lote</th>
                <th>codigo barras</th>
                
            </tr>
            <%
                while (rzk.next()) {
            %>
            <tr>
                <td><%= rzk.getInt("id_producto")%></td>
                <td><%= rzk.getString("ref")%></td>
                <td><%= rzk.getString("nombre")%></td>
                <td><%= rzk.getInt("id_proveedor")%></td>
                <td><%= rzk.getDouble("precio_compra")%></td>
                <td><%= rzk.getDouble("precio_venta")%></td>
                <td><%= rzk.getInt("stock")%></td>
                <td><%= rzk.getString("marca")%></td>
                <td><%= rzk.getInt("tamano")%></td>
                <td><%= rzk.getString("fecha_vencimiento")%></td>
                <td><%= rzk.getString("lote")%></td>
                <td><%= rzk.getString("codigo_barras")%></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1>TABLA Aseo</h1>
        <table border="1">
            <tr>
                <th>id_producto</th>
                <th>ref</th>
                <th>nombre</th>
                <th>id_proveedor</th>
                <th>precio_compra</th>
                <th>precio_venta</th>
                <th>stock</th>
                <th>marca</th>
                <th>tamano</th>
                <th>fecha vencimiento</th>
                <th>lote</th>
                <th>codigo barras</th>
                <th>Olor</th>
                <th>tipo aseo</th>
                
            </tr>
            <%
                while (rzl.next()) {
            %>
            <tr>
                <td><%= rzl.getInt("id_producto")%></td>
                <td><%= rzl.getString("ref")%></td>
                <td><%= rzl.getString("nombre")%></td>
                <td><%= rzl.getInt("id_proveedor")%></td>
                <td><%= rzl.getDouble("precio_compra")%></td>
                <td><%= rzl.getDouble("precio_venta")%></td>
                <td><%= rzl.getInt("stock")%></td>
                <td><%= rzl.getString("marca")%></td>
                <td><%= rzl.getInt("tamano")%></td>
                <td><%= rzl.getString("fecha_vencimiento")%></td>
                <td><%= rzl.getString("lote")%></td>
                <td><%= rzl.getString("codigo_barras")%></td>
                <td><%= rzl.getString("olor")%></td>
                <td><%= rzl.getString("tipo_aseo")%></td>
            </tr>
            <%
                }
            %>
        </table>
        
    
</body>
</html>



