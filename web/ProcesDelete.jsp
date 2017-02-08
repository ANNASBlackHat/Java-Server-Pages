<%-- 
    Document   : ProcessDelete
    Created on : Feb 8, 2017, 11:24:11 AM
    Author     : amikom
--%>

<%@page import="entitas.Jurusan"%>
<%@page import="implement.JurusanImplement"%>
<%
    JurusanImplement ji = new JurusanImplement();
    Jurusan  j = new Jurusan();
    j.setId(Long.parseLong(request.getParameter("id")));
    ji.delete(j);
%>
    