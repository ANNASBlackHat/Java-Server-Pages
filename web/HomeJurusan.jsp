<%-- 
    Document   : HomeJurusan
    Created on : Feb 8, 2017, 10:13:16 AM
    Author     : amikom
--%>

<%@page import="java.util.List"%>
<%@page import="entitas.Jurusan"%>
<%@page import="implement.JurusanImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border ="1">
            <tr>
                <td>id jurusan</td>
                <td>Nama jurusan</td>
                <td>Akreditasi jurusan</td>
                <td colspan="2">Action</td>
            </tr>
            <%
                JurusanImplement ji = new JurusanImplement();
                List<Jurusan> list = ji.select();
                for(Jurusan j : list){
            %>
            <tr>
                <td>
                    <%= j.getId() %>
                </td>
                <td>
                     <%= j.getNamaJurusan() %>
                </td>
                <td>
                     <%= j.getAkreditasi() %>
                </td>
                <td><a href="ProcesDelete.jsp?id=<%= j.getId() %>">DELETE</a> </td>
                <td><a href="AddJurusan.jsp?id=<%= j.getId() %>"> UPDATE</td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
