<%-- 
    Document   : index
    Created on : 4 abr. 2023, 19:00:05
    Author     : HP
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.persona"%>
<%
    ArrayList<persona> lista = (ArrayList<persona>)session.getAttribute("listaper");
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTADO DE PERSONAS</h1>
        <a href="MainController?op=nuevo">NUEVO</a>
        <table border = "1">
            <tr>
                <td>ID</td>
                <td>NOMBRES</td>
                <td>APELLIDOS</td>
                <td>EDAD</td>
                <td></td>
                <td></td>
            </tr>
            <%
                if (lista != null){
                for(persona item : lista){
                %>
             <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre() %></td>
                <td><%= item.getApellidos() %></td>
                <td><%= item.getEdad() %></td>
                <td>><a href="MainController?op=editar&id=<%= item.getId() %>">EDITAR</a></td>
                <td>><a href="MainController?op=eliminar&id=<%= item.getId() %>">ELIMINAR</a></td>
            </tr>
            <%
                 }
                }
                %>
        </table>
    </body>
</html>
