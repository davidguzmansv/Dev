<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wbf_Menu.aspx.cs" Inherits="SIFNET_Portal.Pages.wbf_Menu" %>

<!DOCTYPE html>

<link href="Content/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<%--<link href="Content/font-awesome.css" rel="stylesheet" id="font-awesome-css">--%>

<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/jquery-3.3.1.min.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>

<body style="background-image:url('Imagenes/Menu_Back.jpg')" >
    <h1 class="text-center login-title">Proyecto SIFNET</h1>
    <form id="form1" runat="server">   
        <div class="container col-lg-12">
           <div class="row">     
              <div class="col-lg-3">
                  <%--Container Left--%>
                  <img src="Imagenes/Logo_Fundasal_50.jpg" />
                  <img src="Imagenes/Logo_Fundasal_50.jpg" />
                  <%-- <img src="Imagenes/Logo_Fundasal_50.jpg" />--%>
                 
                </div>
               <div class="col-lg-9">
                  <img src="Imagenes/Logo_Fundasal_50.jpg" />
                  <img src="Imagenes/Logo_Fundasal_50.jpg" />
                  
                   <div class="col-md-12">
                       <button type="button" class="btn btn-labeled btn-success">
                        <span class="btn-label"><i class="glyphicon glyphicon-ok"></i></span>Success</button>
                   </div>
                 Container Right
                </div>
            </div>
         </div>
    </form>
</body>
</html>
