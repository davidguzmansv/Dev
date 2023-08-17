<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wbf_Login.aspx.cs" Inherits="SIFNET_Portal.wbf_Login" %>

<!DOCTYPE html>

<link href="Content/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/jquery-3.3.1.min.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
   
<body style="background-image:url('Imagenes/Fundasal_50_full.jpg')" >
     <h1 class="text-center login-title">SIF.NET</h1>

    <form id="form1" runat="server">       
       <div class="container">
           <div class="row">     
              <div class="col-sm-6 col-md-4 col-md-offset-4">
                 <h1 class="text-center login-title"> </h1>

                 <img src="Imagenes/white_panel.png" />
                 <div class="account-wall col-lg-9 col-md-9, col-sm-9">
                     <h3 class="text-center login-title">Ingreso al sistema</h3>
                     <img src="Imagenes/padlock_web.png" />

                     <form class="form-signin">
                         <p></p>
                         <div class="input-group">
                             <div class="input-group-append">
                                 <div class="font"></div>
                             </div>
                        
                             <div class="form-group">
                                 <div class="col-lg-12 offset-1">
                                     <asp:TextBox CssClass="form-control" ID="Login_tbx_Usuario" placeholder="Usuario" autocenter="true" runat="server"></asp:TextBox>
                                 </div>
                             </div>
                             <p></p>
 
                             <div class="form-group">
                                 <div class="col-lg-12 offset-1">
                                     <asp:TextBox CssClass="form-control" ID="Login_tbx_Password" placeholder="Contraseña"  runat="server" TextMode="Password"></asp:TextBox>
                                 </div>
                             </div>
                       
                             <p></p>
                             <div class="form-group">
                                 <div class="col-lg-8 offset-2">
                                     <asp:button cssclass="btn btn-lg btn-primary btn-sm" id="btnLogin" onclick="btnLogin_Click" runat="server" Text="Ingresar">
                                     </asp:button>
                                 </div>
                             </div>
                             <p></p>
                         </div>
                     </form>
                    </div>
                    <a href="#" class="text-center new-account">Create an account </a>
                </div>
            </div>
         </div>

   </form>
</body>
</html>
