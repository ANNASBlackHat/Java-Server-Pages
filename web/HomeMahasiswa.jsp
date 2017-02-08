<%-- 
    Document   : HomeJurusan
    Created on : Feb 8, 2017, 10:13:16 AM
    Author     : amikom
--%>

<%@page import="entitas.Mahasiswa"%>
<%@page import="implement.MahasiswaImplement"%>
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
                <td>NIM</td>
                <td>Nama</td>
                <td>Jurusan</td>
                <td>Action</td>
            </tr>
            <%
                MahasiswaImplement mi = new MahasiswaImplement();
                List<Mahasiswa> list = mi.select();
                for(Mahasiswa j : list){
            %>
            <tr>
                <td>
                    <%= j.getNim() %>
                </td>
                <td>
                     <%= j.getNama() %>
                </td>
                <td>
                     <%= j.getJurusan().getNamaJurusan() %>
                </td>
                <td><a href="ProcesDelete.jsp?id=<%= j.getNim() %>">DELETE</a> </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
