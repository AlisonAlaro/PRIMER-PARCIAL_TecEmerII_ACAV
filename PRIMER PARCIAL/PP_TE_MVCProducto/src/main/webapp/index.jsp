<%-- 
    Document   : index
    Created on : 05-04-2022
    Author     : Alison Cielo Alaro Vino
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listaper");   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
     <style>
        .bor {
            margin-left: 36%;
            margin-right: 36%;
            border: black 2px solid;
            padding-left: 50px;

        }
    </style>
    
    <body>
        <div class="bor" style="text-align: left;"  >
            <h3>    PRIMER PARCIAL TEM - 742</h3>
            <h4>    Nombre : Alison Cielo Alaro Vino</h4>
            <h4>    Carnet : 9173259 L.P.</h4>
        </div> 
    <center>

        <h2><center>PRODUCTOS</center></h2>
        <right>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <br>
        <br>
         <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoría</th>
                
                <th>Editar</th>
                <th>Eliminar</th>
               
            </tr>
            <%
                if (lista != null) {
                        for (Producto item : lista) {
                    
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick='return confirm("Esta Seguro de Eliminar el Registro");' >Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </right>
        </center> 
    </body>
 </html>
