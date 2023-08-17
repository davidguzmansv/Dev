<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wfm_menu_app.aspx.cs" Inherits="SIFNET_Portal.wfm_menu_app" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <link href=" " rel="stylesheet" type="text/css" />

  
    <body>
    <div class="container-fluid col-lg-12">
        <div class="row">      
             <div class="container col-lg-9">
                  <div class="row">
                       <div class="container col-lg-12"> 
                            <div class="row">
                                 <div class="container col-lg-12">      
                                 <div class="row">
                                      <div class="card-group">
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/Budget.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                    <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Presupuestos</h6>
                                                   <%-- <center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Ingresar</a> </center>--%>
                                                    <div class="col-lg-1 mb-3 text-center">
                                                         <asp:button cssclass="btn btn-lg btn-secondary" id="btnPres_m" onclick="btnPres_m_Click" runat="server" Text=btnPres_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                         </asp:button>
                                                    </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/Planner.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Planificación</h6>
                                                    <%--  <center> <a href="#" class="btn btn-danger" style="font-size: 13px;font-family: Consolas;">Sin Acceso</a> </center>--%>
                                                      <div class="col-lg-1 mb-3 text-center">
                                                           <asp:button cssclass="btn btn-lg btn-secondary" id="btnPlan_m" onclick="btnPlan_m_Click" runat="server" Text=btnPlan_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                           </asp:button>
                                                      </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem; height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/Accounting.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Contabilidad</h6>
                                                     <%-- <center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Ingresar</a> </center>--%>
                                                      <div class="col-lg-1 mb-3 text-center">
                                                           <asp:button cssclass="btn btn-lg btn-secondary" id="btnCont_m" onclick="btnCont_m_Click" runat="server" Text=btnCont_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                           </asp:button>
                                                      </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/HR.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Gestión RRHH</h6>
                                                     <%-- <center> <a href="#" class="btn btn-danger" style="font-size: 13px;font-family: Consolas;" >Sin Acceso</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnRrhh_m" onclick="btnRrhh_m_Click" runat="server" Text=btnRrhh_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/Check.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Tesorería</h6>
                                                      <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnTesr_m" onclick="btnTesr_m_Click" runat="server" Text=btnTesr_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/req_purchase.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Req.
                                                          Compras</h6>
                                                      <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                      <div class="col-lg-1 mb-3 text-center">
                                                           <asp:button cssclass="btn btn-lg btn-secondary" id="btnReqc_m" onclick="btnReqc_m_Click" runat="server" Text=btnReqc_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                           </asp:button>
                                                      </div>
                                                 </div>
                                            </div>
                                            <div class="card" style ="width: 12rem;height: 15rem;">
                                                 <img class="card-img-top"   src="Imagenes/Cards/Shopping.jpg" alt="Card image cap">
                                                 <div class ="card-body">
                                                      <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Compras</h6>
                                                      <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnComp_m" onclick="btnComp_m_Click" runat="server" Text=btnComp_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                 </div>
                                            </div>
                                      </div>
                                 </div>   
                            </div>
                            </div>

                       </div>
                     
                       <div class="container col-lg-12">
                           <div class="row">
                            <div class="container col-lg-12">
                                 <div class="row">    
                                      <div class="card-group">   
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Inventory.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Inventarios</h6>
                                                     <%--<center> <a href="#" class="btn btn-danger" style="font-size: 12px;font-family: Consolas;">N Acceso</a> </center>--%>
                                                    <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnInvt_m" onclick="btnInvt_m_Click" runat="server" Text=btnInvt_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Cashier.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Creditos  y C</h6>
                                                     <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                    <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnCredc_m" onclick="btnCredc_m_Click" runat="server" Text=btnCred_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Contratos.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Contratos</h6>
                                                     <%--<center> <a href="#" class="btn btn-danger" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btn_Cntr_m" onclick="btnCntr_m_Click" runat="server" Text=btnCntr_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Printing.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Impresiones</h6>
                                                     <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnImpr_m" onclick="btnImpr_m_Click" runat="server" Text=btnImpr_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Planner.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Planificación</h6>
                                                     <%--<center> <a href="#" class="btn btn-danger" style="font-size: 13px;font-family: Consolas;">Sin Acceso</a> </center>--%>
                                                    <%-- <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="Button5" onclick="btnComp_m_Click" runat="server" Text=btnComp_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>--%>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Assets.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Activos Fijos</h6>
                                                     <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnAcfj_m" onclick="btnAcfj_m_Click" runat="server" Text=btnAcfj_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                           <div class="card" style ="width: 12rem;height: 15rem;">
                                                <img class="card-img-top"   src="Imagenes/Cards/Vehicle.jpg" alt="Card image cap">
                                                <div class ="card-body">
                                                     <h6 class="card-title text-center text-primary" style="font-size: 14px;font-family: Consolas;">Vehículos</h6>
                                                     <%--<center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Habilitado</a> </center>--%>
                                                     <div class="col-lg-1 mb-3 text-center">
                                                          <asp:button cssclass="btn btn-lg btn-secondary" id="btnVehc_m" onclick="btnVehc_m_Click" runat="server" Text=btnVehc_m.Text  style="font-size: 12px;font-family: Consolas; width:125px">
                                                          </asp:button>
                                                     </div>
                                                </div>
                                           </div>
                                      </div>
                                 </div>
                            </div>
                       </div>
                      </div>
                  </div>
             </div>

             <div class="container col-lg-3">
                  <div class="row">
                       <div class="container col-lg-12">
                       <div class="row">
                            <div class="container col-lg-12">
                                 <div class="row">
                                      <div class="card-group">
                                           <div class="card" style ="width: 12rem;">
                                                     <img class="card-img-top"   src="Imagenes/Cards/Financial.jpg" alt="Card image cap">
                                                     <div class ="card-body">
                                                          <h6 class="card-title text-center text-primary" style="font-size: 13px;font-family: Consolas;">Gestión Presupuestaria</h6>
                                                          <center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Ingresar</a> </center>
                                                     </div>
                                                </div>
                                           <div class="card rounded-top rounded-bottom" style ="width: 12rem;">
                                                     <img class="card-img-top"   src="Imagenes/Cards/Budget.jpg" alt="Card image cap">
                                                     <div class ="card-body">
                                                          <h6 class="card-title text-center text-primary"  style="font-size: 13px;font-family: Consolas;">Formulacion de Presupuesto</h6>
                                                          <center> <a href="#" class="btn btn-primary" style="font-size: 13px;font-family: Consolas;">Ingresar</a> </center>
                                                     </div>
                                                </div>
                                      </div>  
                                 </div>
                            </div>
                      </div>
                      </div>



                       <div class="container col-lg-7">
                           <div class="col-lg-11 col-sm-11 col-md-11 mb-1  py-0">
                                <div class="card bg-gradient-secondary text-primary border-left-secondary shadow h-60 ">
                                     <div class="card-body">
                                          <div class="row no-gutters align-items-center">
                                               <div class="col mr-1">
                                                    <a href="http://google.com"> 
                                                       <div class="h6 mb-0 text-white" style="font-size: 12px;font-family: Consolas;">Manuales</div> </a>
                                               </div>
                                               <div class="col-auto">
                                                    <i class="fas fa-address-book fa-1x text-warning"></i>
                                               </div>
                                          </div>
                                     </div>
                                </div>
                           </div>
                           <div class="col-lg-11 col-sm-11 col-md-11  mb-1 ">
                                <div class="card bg-gradient-secondary text-primary border-left-secondary shadow h-60 py-0">
                                     <div class="card-body">
                                          <div class="row no-gutters align-items-center align-top">
                                               <div class="col mr-1">
                                                    <a href="http://google.com">
                                                       <div class="h6 mb-0 text-white" style="font-size: 12px;font-family: Consolas;">Recursos</div>
                                                    </a>
                                               </div>
                                               <div class="col-auto">
                                                    <i class="fas fa-search fa-1x text-success"></i>
                                               </div>
                                          </div>
                                     </div>
                                </div>
                           </div>
                           <div class="col-lg-11 col-sm-11 col-md-11  mb-1 ">
                                <div class="card bg-gradient-secondary text-primary border-left-secondary shadow h-80 py-0">
                                     <div class="card-body">
                                          <div class="row no-gutters align-items-center">
                                               <div class="col mr-1">
                                                    <a href="http://google.com">
                                                       <div class="h6 mb-0 text-white" style="font-size: 12px;font-family: Consolas;">Procesos</div>
                                                    </a>
                                               </div>
                                               <div class="col-auto">
                                                    <i class="fas fa-file-alt fa-1x text-info"></i>
                                               </div>
                                          </div>
                                     </div>
                                </div>
                           </div>
                      </div>
                      <div class="container col-lg-6">

                      

                      </div>
                  </div>    
             </div>
        </div>  
    </div>
     <div class="container col-lg-12">
                          <div class="row">
                            <p>.</p>
                          </div>
     </div>

    <div class="container-fluid col-lg-12">
        <div class="row">
         <div class="container col-lg-8 offset-1">
             <div class="card border-primary">
                  <div class="card-header bg-secondary text-white text-center"  style="font-size: 15px;font-family: Consolas;height :2rem" >Anuncios</div>
                  <div class="card-body text-primary">
                       <h6 class="card-title" style="font-size: 15px;font-family: Consolas;">Importante!</h6>
                       <p class="card-text text-dark" style="font-size: 12px;font-family: Consolas;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                  <div class="card-footer bg-gradient-secondary text-white text-center" style="font-size: 15px;font-family: Consolas;height :2rem" ></div>

             </div>
         </div>
         <div class="container col-lg-1">
              <div class="row">
                   <div class="card border-danger col-lg-12">


                        <div class="row">
                           <%--  <form class="form-inline"></form>--%>
                             <div class="col text-center">
                                  <label class="text-primary">
                                      <h6 class="card-title text-center text-primary" style="font-size: 13px;font-family: Consolas;">Alertas</h6>
                                  </label>
                             </div>
                        </div>
                         <div class="row" >
                                 <!-- Semaforo Rojo  -->                       
                              <div class="col-lg-2 text-center mb-3">
                                   <asp:button cssclass="btn btn-lg btn-danger rounded" id="btnRed_m" onclick="btnRed_m_Click" runat="server" Text="5" style="font-size: 12px;font-family: Consolas; width:50px; height:2rem">
                                   </asp:button>
                              </div>
                         </div>


                         <div class="row">
                              <%--<form class="form-inline"></form>--%>
                               <div class="col text-center mb-1">
                                    <label class="text-primary h-5" style="font-size: 10px;font-family: Consolas;">     
                                           <h6 class="card-title text-center text-primary" style="font-size: 13px;font-family: Consolas;">Advertencias</h6>
                                    </label>
                               </div>
                         </div>
                         <div class="row" >
                                 <!-- Semaforo Amarillo  -->
                              <div class="col-lg-1 mb-3">
                                   <asp:button cssclass="btn btn-lg btn-warning" id="btnYellow_m" onclick="btnYellow_m_Click" runat="server" Text="3" style="font-size: 12px;font-family: Consolas; width:50px; height:2rem ">
                                   </asp:button>
                              </div>
                         </div>


                         <div class="row">
                              <%--<form class="form-inline"></form>--%>
                              <div class="col text-center mb-1">
                                   <label class="text-primary h-5" style="font-size: 10px;font-family: Consolas;">
                                          <h6 class="card-title text-center text-primary" style="font-size: 13px;font-family: Consolas;">En linea</h6>
                                   </label>
                              </div>
                         </div>
                         <div class="row" >
                                 <!-- Semaforo Verde  -->
                              <div class="col-lg-1 mb-3">
                                   <asp:button cssclass="btn btn-lg btn-success" id="btnGreen_m" onclick="btnGreen_m_Click" runat="server" Text="1" style="font-size: 12px;font-family: Consolas; width:50px; height:2rem">
                                   </asp:button>
                              </div>
                         </div>


                   </div>
              </div>
             
         </div>
        </div>
    </div>
        
    <div class="container col-lg-12">
                          <div class="row">
                            <p>.</p>
                          </div>
     </div>




         






  
    </body>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
