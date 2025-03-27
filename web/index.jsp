<%-- 
    Document   : index
    Created on : 11/02/2025, 12:44:20 p. m.
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
        <title>Minimercado - Sistema de Gestión</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
            :root {
                --color-primary: #2E7D32;
                --color-secondary: #4CAF50;
                --color-accent: #81C784;
                --color-background: #F1F8E9;
                --color-text: #1B5E20;
            }
            
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Montserrat', sans-serif;
            }
            
            body {
                background-color: var(--color-background);
                color: var(--color-text);
                line-height: 1.6;
                padding: 2rem;
            }
            
            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 0 1rem;
            }
            
            h1 {
                color: var(--color-primary);
                font-weight: 600;
                margin: 2rem 0;
                font-size: 2rem;
                text-align: center;
            }
            
            .table-container {
                background: white;
                border-radius: 10px;
                padding: 1.5rem;
                margin-bottom: 2rem;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 1rem 0;
                background: white;
            }
            
            th {
                background-color: var(--color-primary);
                color: white;
                font-weight: 500;
                text-align: left;
                padding: 1rem;
            }
            
            td {
                padding: 0.8rem 1rem;
                border-bottom: 1px solid var(--color-accent);
            }
            
            tr:hover {
                background-color: var(--color-background);
            }
            
            .status-connection {
                text-align: center;
                padding: 1rem;
                background: var(--color-accent);
                color: white;
                border-radius: 5px;
                margin-bottom: 1rem;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="status-connection">
                <%
                    try {
                        Connection con = Conexion.conectar();
                        if (con != null) {
                            out.println("✓ Conexión a la base de datos exitosa");
                        } else {
                            out.println("✗ Error en la conexión a la base de datos");
                        }
                    } catch (Exception e) {
                        out.println("✗ Error: " + e.getMessage());
                    }
                %>
            </div>

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

            <div class="table-container">
                <h1>Usuarios del Sistema</h1>
                <table>
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
            </div>
            
            <div class="table-container">
                <h1>Verduras y Frutas</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Referencia</th>
                        <th>Nombre</th>
                        <th>Proveedor ID</th>
                        <th>Precio Compra</th>
                        <th>Precio Venta</th>
                        <th>Peso</th>
                        <th>Tipo</th>
                    </tr>
                    <%
                        while (rx.next()) {
                    %>
                    <tr>
                        <td><%= rx.getInt("id_producto")%></td>
                        <td><%= rx.getString("ref")%></td>
                        <td><%= rx.getString("nombre")%></td>
                        <td><%= rx.getInt("id_proveedor")%></td>
                        <td>$<%= rx.getDouble("precio_compra")%></td>
                        <td>$<%= rx.getDouble("precio_venta")%></td>
                        <td><%= rx.getInt("peso")%> kg</td>
                        <td><%= rx.getString("tipo_verdura_fruta")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            
            <div class="table-container">
                <h1>Carnes</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Referencia</th>
                        <th>Nombre</th>
                        <th>Proveedor ID</th>
                        <th>Precio Compra</th>
                        <th>Precio Venta</th>
                        <th>Peso</th>
                        <th>Tipo</th>
                        <th>Tipo de Corte</th>
                    </tr>
                    <%
                        while (rz.next()) {
                    %>
                    <tr>
                        <td><%= rz.getInt("id_producto")%></td>
                        <td><%= rz.getString("ref")%></td>
                        <td><%= rz.getString("nombre")%></td>
                        <td><%= rz.getInt("id_proveedor")%></td>
                        <td>$<%= rz.getDouble("precio_compra")%></td>
                        <td>$<%= rz.getDouble("precio_venta")%></td>
                        <td><%= rz.getInt("peso")%> kg</td>
                        <td><%= rz.getString("tipo_verdura_fruta")%></td>
                        <td><%= rz.getString("tipo_corte")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            
            <div class="table-container">
                <h1>Granos</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Referencia</th>
                        <th>Nombre</th>
                        <th>Proveedor ID</th>
                        <th>Precio Compra</th>
                        <th>Precio Venta</th>
                        <th>Stock</th>
                        <th>Marca</th>
                        <th>Tamaño</th>
                        <th>Fecha de Vencimiento</th>
                        <th>Lote</th>
                        <th>Código de Barras</th>
                    </tr>
                    <%
                        while (rzk.next()) {
                    %>
                    <tr>
                        <td><%= rzk.getInt("id_producto")%></td>
                        <td><%= rzk.getString("ref")%></td>
                        <td><%= rzk.getString("nombre")%></td>
                        <td><%= rzk.getInt("id_proveedor")%></td>
                        <td>$<%= rzk.getDouble("precio_compra")%></td>
                        <td>$<%= rzk.getDouble("precio_venta")%></td>
                        <td><%= rzk.getInt("stock")%> kg</td>
                        <td><%= rzk.getString("marca")%></td>
                        <td><%= rzk.getInt("tamano")%> g</td>
                        <td><%= rzk.getString("fecha_vencimiento")%></td>
                        <td><%= rzk.getString("lote")%></td>
                        <td><%= rzk.getString("codigo_barras")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            
            <div class="table-container">
                <h1>Aseo</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Referencia</th>
                        <th>Nombre</th>
                        <th>Proveedor ID</th>
                        <th>Precio Compra</th>
                        <th>Precio Venta</th>
                        <th>Stock</th>
                        <th>Marca</th>
                        <th>Tamaño</th>
                        <th>Fecha de Vencimiento</th>
                        <th>Lote</th>
                        <th>Código de Barras</th>
                        <th>Olor</th>
                        <th>Tipo</th>
                    </tr>
                    <%
                        while (rzl.next()) {
                    %>
                    <tr>
                        <td><%= rzl.getInt("id_producto")%></td>
                        <td><%= rzl.getString("ref")%></td>
                        <td><%= rzl.getString("nombre")%></td>
                        <td><%= rzl.getInt("id_proveedor")%></td>
                        <td>$<%= rzl.getDouble("precio_compra")%></td>
                        <td>$<%= rzl.getDouble("precio_venta")%></td>
                        <td><%= rzl.getInt("stock")%> kg</td>
                        <td><%= rzl.getString("marca")%></td>
                        <td><%= rzl.getInt("tamano")%> g</td>
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
            </div>
        </div>
    </body>
</html>



