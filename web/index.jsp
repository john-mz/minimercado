<%-- 
    Document   : index
    Created on : 11/02/2025, 12:44:20 p. m.
    Author     : docente
--%>
<%@ page import="modelos.Conexion" %>
<%@ page import="modelos.usuarios" %>
<%@ page import="modelos.PRODUCTOS" %>
<%@ page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
//       
        Connection con = Conexion.conectar();
        if (con != null) {
            out.println("<h2>Database Connection Successful!</h2>");
        } else {
            out.println("<h2>Database Connection Failed!</h2>");
        }
    } catch (Exception e){
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
//        operaciones.insertarProducto("ALS32", "mouse model O", 7, 9000.0, 9900.0);
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
        
    



%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JaaaaSP Page</title>
    </head>
    <body>
        <h1>Hello World! fjadhuw</h1>
    </body>
</html>



