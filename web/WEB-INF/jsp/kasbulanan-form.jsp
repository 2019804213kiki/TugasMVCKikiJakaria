<%-- 
    Document   : kasbulanan-form
    Created on : Nov 28, 2021, 2:58:37 AM
    Author     : Kiki Jakaria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kas Bulanan</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container" >
            <h2>Tambah Kas ${message}</h2>
            <div class="row">
                    <form action="kasbulanan-form.html" modelAttribute="kas" method="POST"  >                    
                        <div class="mb-3">
                            <label for="bulan" class="form-label" >Kas Bulan</label>
                            <input type="text" class="form-control" id="bulan" name="bulan" value="${kas.bulan}"/>
                        </div>
                         <div class="mb-3">
                              <label for="saldoawal" class="form-label" >Saldo Awal</label>
                              <input type="text" class="form-control" id="saldoawal" name="saldoawal" value="${kas.saldoawal}"/>
                        </div>
                         <div class="mb-3">
                              <label for="pemasukan" class="form-label" >Kas Masuk</label>
                              <input type="text" class="form-control" id="pemasukan" name="pemasukan" value="${kas.pemasukan}"/>
                        </div>
                        <div class="mb-3">
                             <label for="pengeluaran" class="form-label" >Pengeluaran</label>
                             <input type="text" class="form-control" id="pengeluaran" name="pengeluaran" value="${kas.pengeluaran}"/>
                        </div> 
                        <div class="mb-3">
                             <label for="saldoakhir" class="form-label" >Saldo Akhir</label>
                             <input type="text" class="form-control" id="saldoakhir" name="saldoakhir" value="${kas.saldoakhir}"/>
                        </div> 
                         <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Save</button>
                         </div>
                    </form>
                
            </div>
            <a href="${pageContext.request.contextPath}/home.html">Kembali ke List</a>
        </div>
    </body>
</html>
