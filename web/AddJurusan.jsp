<%-- 
    Document   : AddJurusan
    Created on : Feb 8, 2017, 1:09:55 PM
    Author     : amikom
--%>

<%@page import="implement.JurusanImplement"%>
<%@page import="entitas.Jurusan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Jurusan jurusan = new JurusanImplement().getById(Long.parseLong(request.getParameter("id")));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertJurusan.jsp" method="POST">
            <p>Jurusan</p> <input type="text" name="jurusan" value="<% request.getParameter("id"); %>">
            <br />
            <p>Akreditasi</p> <input type="text" name="akreditasi" />
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
