<%-- 
    Document   : InsertMahasiswa
    Created on : Feb 8, 2017, 1:36:33 PM
    Author     : amikom
--%>

<%@page import="implement.JurusanImplement"%>
<%@page import="entitas.Jurusan"%>
<%@page import="entitas.Mahasiswa"%>
<%@page import="implement.MahasiswaImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Jurusan jurusan = new JurusanImplement().getById(Long.parseLong(request.getParameter("jurusan")));
    Mahasiswa mhs = new Mahasiswa(request.getParameter("nim"), request.getParameter("nama"),
          jurusan);
  new MahasiswaImplement().insert(mhs);
%>
<html>
    <body>
        </br>
        Berhasil DiSimpan...
    </body>
</html>