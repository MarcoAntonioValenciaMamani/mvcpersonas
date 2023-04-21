<%-- 
    Document   : editar
    Created on : 4 abr. 2023, 20:12:22
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE DATOS</h1>
        <<form action="MainController" method="post">
            
            <label>ID</label>
            <input type="text" name="id">
            <br>
            <label>NOMBRE</label>
            <input type="text" name="nombre"><!-- comment -->
            
            <label>APELLIDO</label>
            <input type="text" name="apellidos">
            
            <label>EDAD</label>
            <input type="text" name="edad">
            <br>
            <input type="submit" value="ENVIA">
        </form>
    </body>
</html>
