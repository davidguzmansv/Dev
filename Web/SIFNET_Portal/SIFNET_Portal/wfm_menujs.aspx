<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wfm_menujs.aspx.cs" Inherits="SIFNET_Portal.wfm_menujs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "<--http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
    <%--<html xmlns="<--http://www.w3.org/1999/xhtml">--%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<title>Dynamic Image Menu Example</title>--%>
        <link href="jquerymenu/jimgMenukwicks.css" rel="stylesheet" type="text/css"/>
     <%--   <link href=" " rel="stylesheet" type="text/css" />--%>
    
        <script type="text/javascript" src="jquerymenu/js/jquery.js"></script>
        <script type="text/javascript" src="jquerymenu/js/jquery-easing-1.3.pack.js"></script>
        <script type="text/javascript" src="jquerymenu/js/jquery-easing-compatibility.1.2.pack.js"></script>
        <script type="text/javascript" src="jquerymenu/js/jquery.kwicks-1.5.1.pack.js"></script>
        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
                color: #333;
                /*color: #EDEDED;*/
                font: normal 0.6em sans-serif,Arial;
                background-color: #EDEDED;
                /*background-color: #333;*/
                background-image: url(../img/bg1.jpg);
                background-repeat: repeat-x;
                background-attachment: fixed;
                background-position: center top;
                width: 100%;
            }
        </style>
        <style type="text/css">
            .description {
                padding-left: 40px;
            }

            h1 {
                padding-left: 10px;
                font: normal 18px Georgia, "Times New Roman", Times, serif;
            }
        </style>                           
             <script>
                 var var_usr=1
             </script>
       
            <script type="text/javascript">
                $().ready(function () {
                    $('.jimgMenu ul').kwicks({ max: 310, duration: 300, easing: 'easeOutQuad' });
                });
            </script>

    </head>

  
    <body>
        <h1></h1>
     <%--   <script>
             var var_usr=0
        </script>--%>
    <div class="container col-lg-12"> 
      <div class="row">
          <div class="container col-lg-8 offset-1">
              <div class="row">
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button14" Style="width:1x" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs1" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button1" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs2" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button2" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs3" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button3" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs4" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button15" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs5" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button4" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs6" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button5" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs7" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button6" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs8" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button16" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs9" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button7" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs10" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button8" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs11" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-0"><asp:button cssclass="btn btn-sm btn-default " id="Button9" Style="width:20px" runat="server" Text=""></asp:button></div>&nbsp;
                            <div class="col-auto mb-1"><asp:button cssclass="btn btn-sm btn-success " id="Master_btn_Accs12" Style="width:20px" runat="server" Text=""></asp:button></div>
                </div>   
          </div>
           
    
            <div class="row">
        <div class="jimgMenu">
            <ul>
                <li id="presupuesto"><a href="Default.aspx" onmouseover= "tooltip" title ="Módulo de Presupuestos. Se Utiliza para la cargas,
reprogramaciones , disminuciones y
Reportes de Presupuestos">Presupuesto</a></li>
                <li id="planificacion"><a href="#" >Planificación</a></li>
                <li id="contabilidad"><a href="#">Contabilidad</a></li>
                <li id="gestion_rrhh"><a href="#">Gestion_RRHH</a></li>
                <li id="tesoreria"><a href="#">Tesoreria</a></li>
                <li id="req_compras"><a href="#">Req_compras</a></li>
                <li id="compras"><a href="#">Compras</a></li>
                <li id="inventarios"><a href="#">Inventarios</a></li>
                <li id="contabilidad"><a href="#">Contabilidad</a></li>
                <li id="fotocopias"><a href="#">Fotocopias</a></li>
                <li id="gerencial"><a href="#">Gerencial</a></li>
                <li id="contratos"><a href="#">Contratos</a></li>
            </ul>
        </div>
     </div>
            <br style="clear:both" /><br />
            <div class="description">
                <!--<p>A dynamic Menu allowing you to easily navigate any content visually, with a Mootools like effect through the power of Jquery javascript.</p>-->
            </div>
            <hr style="width:92%;text-align:center;height:1px;border:1px;color:#e2e2e2;background-color:#e2e2e2;" />
              <!--<hr style="width:92%;text-align:center;height:1px;border:1px;color:#EDEDED;background-color:#EDEDED;" />-->
          

      </div>
    </div>
    <div class="container-fluid offset-2"> 
      <%--<div class="row">--%>
          <%--  <div class="container col-lg-2 ">--%>
               <div class="row" >
                        <!-- Presupuestos Card  -->
                   <div class="col-lg-2 col-sm-2 col-md-2 mb-0  py-0">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-60 ">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h6 mb-0 font-weight-bold text-dark">Manuales</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-address-book fa-2x text-success"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
              
            <%--</div>--%>
           <%-- <div class="container col-lg-2 ">--%>
                   <div class="col-lg-2 col-sm-2 col-md-2  mb-0 ">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-80 py-0">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center align-top">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h6 mb-0 font-weight-bold text-dark">Recursos</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-search fa-2x text-primary"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
           <%-- </div>--%>
           <%-- <div class="container col-lg-2 ">--%>
                   <div class="col-lg-2 col-sm-2 col-md-2  mb-0 ">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-80 py-0">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h6 mb-0 font-weight-bold text-dark">Procesos</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-file-alt fa-2x text-danger"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
           <%-- </div>--%>
                    </div>
      <%-- </div>--%>
    </div>
    </body>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <%--<img src="Imagenes/fundasal.bmp" />--%>
    <%--<form id="form12" runat="server">--%>
        <div class="container col-lg-12 col-sm-12 col-md-12">
            <div class="row">
                <div class="container col-lg-2 col-sm-2 col-md-2" style="border-right:none">
                        <label>.</label>
                        <div class="row">
                             <form class="form-inline"></form>
                                  <label>.</label>
                         </div>
                        <!-- Contenedor Izquierda -->
                   <div class="row" >
                        <!-- Presupuestos Card  -->
                        <div class="col-lg-6 col-sm-6 col-md-6 mb-0  py-0">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-80">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h7 mb-0 font-weight-bold text-dark">Manuales</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-address-book fa-2x text-success"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="row" >
                        <!-- Planificacion Card -->
                        <div class="col-lg-6 col-sm-6 col-md-6  mb-0 ">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-80 py-0">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center align-top">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h7 mb-0 font-weight-bold text-dark">Recursos</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-search fa-2x text-primary"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="row" >
                        <!-- Contabilidad Card -->
                        <div class="col-lg-6 col-sm-6 col-md-6  mb-0 ">
                            <div class="card bg-gradient-white text-primary border-left-secondary shadow h-80 py-0">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <a href="http://google.com">
                                                <div class="h7 mb-0 font-weight-bold text-dark">Procesos</div>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-file-alt fa-2x text-danger"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container col-lg-1 col-sm-1 col-md-1">           
                        <label>.</label>
                        <div class="row">
                             <form class="form-inline"></form>
                                  <label>.</label>
                        </div>
                        <!-- Contenedor Centro -->
                                 <!-- Semaforo  -->
                         <div class="row">
                            <form class="form-inline"></form>
                                  <label class="text-primary h-5">
                                      <h6>Alertas</h6>
                                  </label>
                        </div>
                        <div class="row" >
                                 <!-- Semaforo Rojo  -->
                              
                            <div class="col-lg-1 mb-3">
                                <asp:button cssclass="btn btn-lg btn-danger" id="btnRed_m" onclick="btnRed_m_Click" runat="server" Text="5">
                                </asp:button>
                            </div>
                        </div>
                        <div class="row">
                            <form class="form-inline"></form>
                                  <label class="text-primary h-5">     
                                      <h6>Advertencias</h6>
                                  </label>
                        </div>
                        <div class="row" >
                                 <!-- Semaforo Amarillo  -->
                            <div class="col-lg-1 mb-3">
                                <asp:button cssclass="btn btn-lg btn-warning" id="btnYellow_m" onclick="btnYellow_m_Click" runat="server" Text="3">
                                </asp:button>
                            </div>
                        </div>
                        <div class="row">
                            <form class="form-inline"></form>
                                  <label class="text-primary h-5">
                                      <h6>En linea</h6>
                                  </label>
                        </div>
                        <div class="row" >
                                 <!-- Semaforo Verde  -->
                            <div class="col-lg-1 mb-3">
                                <asp:button cssclass="btn btn-lg btn-success" id="btnGreen_m" onclick="btnGreen_m_Click" runat="server" Text="1">
                                </asp:button>
                            </div>
                        </div>
                 </div>
                  

                <div class="container col-lg-9 col-sm-9 col-md-9">
                        <div class="row">
                             <form class="form-inline"></form>
                                  <label>.</label>
                         </div> 
                        <!-- Contenedor Derecha -->
                             <%-- <textarea name="mytextarea" rows="25" cols="125">Aqui va el detalle de las notificaciones</textarea>--%>
                       <img src="Imagenes/cabecera1.JPG" />
                       <textarea id="TextArea1" cols="150" rows="25"  runat="server" >Aqui va el detalle de las notificaciones</textarea>
                            <style>   textarea 
                                      { 
                                          font-size: 10pt;
                                          color:dodgerblue;
                                          width: 737px;  
                                          height: 300px;   
                                          border: none;
                                          border-collapse:collapse;
                                          border-right: #000 1px solid;
                                          border-left: #000 1px solid;
                                          padding: 25px;
                                          resize: none;
                                      } 
                            </style>
                       <img src="Imagenes/Footer1.JPG" />               
                </div>
            </div>
            <div class="card weather-card col-lg-5">hello</div>
           
        </div>
   <%-- </form>--%>
</asp:Content>
