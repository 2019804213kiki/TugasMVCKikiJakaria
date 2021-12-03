<%-- 
    Document   : home
    Created on : Nov 25, 2021, 7:35:46 AM
    Author     : Kiki Jakaria
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@include file="include.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kas Bulanan</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
       <h1>Halaman Admin Kas</h1>
       <hr>
        <h2 align="center">Daftar Kas Bulanan</h2>
        <p>
        <table class="table table-striped table-bordered table-primary" >
            <tr style="background-color:black; color:white;">
                <th>ID</th>                   
                <th>Bulan</th>
                <th>saldo awal</th>
                <th>Pemasukan</th>
                <th>Pengeluaran</th>
                <th>Saldo akhir</th>
                <th>Aksi</th>
            </tr>
            <c:forEach items="${listKasbulanan}" var="kas">
                <tr>
                    <td>${kas.id}</td>                                 
                    <td>${kas.bulan}</td>
                    <td>${kas.saldoawal}</td>
                    <td>${kas.pemasukan}</td>
                    <td>${kas.pengeluaran}</td>
                    <td>${kas.saldoakhir}</td>
                    <td>
                        <button class="btn btn-primary" onclick="window.location.href='kasbulanan-form2.html?action=edit&id=${kas.id}'">Edit</button>
                        <button class="btn btn-danger" onclick="window.location.href='kasbulanan-form.html?action=delete&id=${kas.id}'">Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        </p>
        <p>
            <button class="btn btn-primary" onclick="window.location.href='kasbulanan-form.html'" >
                Masukan Kas baru
            </button>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/login.html">Keluar Aplikasi</a>
        </p>
        
    </body>
</html>
