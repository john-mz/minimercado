<%-- 
    Document   : index
    Created on : 11/02/2025, 12:44:20 p. m.
    Author     : docente
--%>
<%@ page import="modelos.Conexion" %>
<%@ page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
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



