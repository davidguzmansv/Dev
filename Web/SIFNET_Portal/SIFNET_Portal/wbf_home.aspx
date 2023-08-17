<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wbf_home.aspx.cs" Inherits="SIFNET_Portal.wbf_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <h1>My Master Page</h1>  --%>

    <body style="background-image:url('Imagenes/Menu_Back.jpg')" >
    <h1 class="text-center login-title">Proyecto SIFNET</h1>
    <%--<form id="form1" runat="server">   --%>
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
   <%-- </form>--%>
    </body>

</asp:Content>
