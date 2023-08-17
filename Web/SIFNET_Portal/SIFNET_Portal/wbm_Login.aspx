<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wbm_Login.aspx.cs" Inherits="SIFNET_Portal.wbm_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<body style="background-image:url('Imagenes/Fundasal_50_full.jpg')" >
    <div class="container col-auto" style="background-image:url('Imagenes/Fundasal_50_full.jpg');height:700px">
        <div class="row">
          <div class="col-6 offset-2">
            <div class="card border-secondary" style="width: 20rem; margin:110px ; height:24rem; top:1rem">   
            <div class="card-header text-primary text-center" style="font-family: Consolas">
                <h3>Ingreso al sistema</h3> 
            </div> 

            <div class="card-body text-center"> 
                <p class="card-text"> 
                    <div class="input-group-text alert-info"><i class="fa fa-user fa-lg text-info"></i>
                        <div class="col-lg-12">
                            <asp:TextBox CssClass="form-control" ID="Login_tbx_Usuario_m" placeholder="Usuario" autocenter="true" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <p></p>
                    <div class="input-group-text alert-info"><i class="fa fa-lock fa-lg text-info"></i>
                        <div class="col-lg-12">
                            <asp:TextBox CssClass="form-control" ID="Login_tbx_Password_m" placeholder="Contraseña"  runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <p></p>   
                        <asp:button cssclass="btn btn-lg btn-primary btn-sm offset-1 mb-0" id="btnLogin_m" Style="font-size:12pt; width:90px; font-family:Consolas" onclick="btnLogin_m_Click" runat="server" Text="Ingresar">
                        </asp:button>
                </p> 
            </div> 
            <div class="card-footer text-center">
                <div class="input-group-text alert-light"><i class="fa fa-key fa-lg text-warning offset-7"></i>
                    <div class="col-lg-4">
                        <asp:button cssclass="btn btn-lg btn-secondary btn-sm" id="btn_change_pwd" Style="font-size:8pt; width:95px; font-family:Consolas" onclick="btnLogin_m_Click" runat="server" Text="Cambiar Clave">
                        </asp:button>
                    </div>
                </div>
            </div> 
          </div>
    </div> 
        </div>
    </div>
</body>
</asp:Content>
