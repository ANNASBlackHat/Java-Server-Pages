<%-- 
    Document   : InsertJurusan
    Created on : Feb 8, 2017, 1:15:35 PM
    Author     : amikom
--%>

<%@page import="entitas.Jurusan"%>
<%@page import="implement.JurusanImplement"%>
<%
    JurusanImplement ji = new JurusanImplement();
    ji.insert(new Jurusan(request.getParameter("jurusan"), request.getParameter("akreditasi")));
%>
