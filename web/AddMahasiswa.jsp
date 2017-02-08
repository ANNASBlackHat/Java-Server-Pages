<%-- 
    Document   : AddMahasiswa
    Created on : Feb 8, 2017, 1:23:00 PM
    Author     : amikom
--%>

<%@page import="entitas.Jurusan"%>
<%@page import="java.util.List"%>
<%@page import="implement.JurusanImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="InsertMahasiswa.jsp" method="GET">
            <p>NIM</p> <input type="text" name="nim">
            <br />
            <p>NAMA</p> <input type="text" name="nama" />
            <p>JURUSAN </p>
             <select name="jurusan">
                 <%
                     JurusanImplement ji = new JurusanImplement();
                     List<Jurusan> list = ji.select();
                     for(Jurusan j : list){
                        %>
                        <option value="<%= j.getId() %>"> <%= j.getNamaJurusan() %> </option>
                 <% } %>
                </select>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
