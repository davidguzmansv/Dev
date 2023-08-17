<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="wbm_Selecc.aspx.cs" Inherits="SIFNET_Portal.wbm_Selecc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  


    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: -2px;
            top: 0px;
            padding-left: 0.75rem;
            padding-right: 0.75rem;
        }
    </style>
  


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
   
<body >
  
    <div class="container" style="background-image:url('Imagenes/Fundasal_50_full.jpg')">
  <div class="row">
   
    <div class="auto-style1">
      <div class="card mt-3 tab-card border-info shadow" style="width: 58rem; margin:250px ; height:30rem; top:10rem">
        <div class="card-header tab-card-header">
          <ul class="nav nav-tabs card-header-tabs border-info" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link " id="one-tab" data-toggle="tab" href="#one" role="tab" style="font-family:Consolas;font-size:11pt; background-color:whitesmoke; border-color:deepskyblue; width:125px" aria-controls="One" aria-selected="true">Instancia</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab" style="font-family:Consolas;font-size:11pt; background-color:lightgrey; border-color:deepskyblue; width:125px" aria-controls="Two" aria-selected="false">Proyecto</a>
            </li>
            <li class="nav-item">

                <a class="nav-link" id="three-tab" data-toggle="tab" href="#three" role="tab" style="font-family:Consolas;font-size:11pt ; background-color:whitesmoke; border-color:deepskyblue; width:125px" aria-controls="Three" aria-selected="false">Bodega</a>
            </li>
          </ul>
        </div>

        <div class="tab-content" id="myTabContent" style="background-color:whitesmoke">

                <div class="tab-pane fade active in p-3" id="one" style="background-color:whitesmoke" role="tabpanel" aria-labelledby="one-tab">
                    <h5 class="card-title text-primary" style="text-decoration-line:underline; font-family: Consolas; font-size:12pt">Selección</h5>
                    <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Departamento o Unidad</p>
                  
                    <div class="input-group-text alert-info mb-3" style="width:550px"><i class="fa fa-sitemap fa-2x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList   CssClass="form-control" ID="Selecc_ddl_Instancia_m" runat="server" AutoPostBack ="True" 
                                 DataTextField="nom_ins" DataValueField="cod_ins" AppendDataBoundItems="true"
                                 OnSelectedIndexChanged  ="Selecc_ddl_Instancia_m_SelectedIndexChanged" 
                                 style="font-family:Consolas; 
                                        font-size:10pt; 
                                        width:497px; 
                                        height:32px"  >
                                 <asp:ListItem Value ="0">--Seleccionar--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                     <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Sección</p>
                    <div class="input-group-text alert-info mb-2" style="width:550px">
                        <i class="fa fa-address-card fa-2x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList CssClass="form-control" ID="Selecc_ddl_Seccion_m" runat="server" AppendDataBoundItems="true"
                                 DataTextField="nom_sec" DataValueField="cod_sec" AutoPostBack="true"
                                 onselectedindexchanged="Selecc_ddl_Seccion_m_SelectedIndexChanged"
                                 style="font-family:Consolas;
                                        font-size:10pt; 
                                        width:498px; 
                                        height:32px" >
                                <asp:ListItem Value ="0">--Seleccionar--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <a href="#" class="btn btn-primary offset-5">Ingresar</a>        
                </div>


                <div class="tab-pane fade p-3" id="two" style="background-color:lightgray" role="tabpanel" aria-labelledby="two-tab">
                    <h5 class="card-title text-primary" style="text-decoration-line:underline; font-family: Consolas; font-size:12pt">Selección</h5>
                    <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Proyecto</p>  
                    
                    <div class="input-group-text alert-info mb-4" style="width:550px"><i class="fa fa-cogs fa-2x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList CssClass="form-control" ID="Selecc_ddl_Proyecto_m" runat="server" 
                                 DataTextField="nom_proy" DataValueField="cod_proy" AppendDataBoundItems="true" 
                                 OnSelectedIndexChanged  ="Selecc_ddl_Proyecto_m_SelectedIndexChanged" 
                                 style="font-family:Consolas;
                                        font-size:10pt;
                                        width:497px; 
                                        height:32px"  >
                            </asp:DropDownList>
                        </div>
                    </div>
                    <a href="#" class="btn btn-primary offset-5">Ingresar</a>        
                </div>


                <div class="tab-pane fade p-3" id="three" role="tabpanel" aria-labelledby="three-tab">
                    <h5 class="card-title text-primary" style="text-decoration-line:underline; font-family: Consolas; font-size:12pt">Selección</h5>
                    <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Proyecto</p>
                  
                    <div class="input-group-text alert-info mb-3" style="width:550px"><i class="fa fa-cogs fa-2x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList CssClass="form-control" ID="Selecc_ddl_Proyectobod_m" runat="server" AutoPostBack ="True"
                                DataTextField="nom_proy" DataValueField="cod_proy" AppendDataBoundItems="true"
                                OnSelectedIndexChanged  ="Selecc_ddl_Proyectobod_m_SelectedIndexChanged"
                                style="font-family:Consolas;
                                font-size:10pt; 
                                width:496px; 
                                height:32px"   >
                            </asp:DropDownList>
                        </div>
                    </div>
                     <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Bodega</p>
                    <div class="input-group-text alert-info mb-2" style="width:550px"><i class="fa fa-barcode fa-3x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList CssClass="form-control" ID="Selecc_ddl_Bodega_m" runat="server" 
                                DataTextField="nom_bod" DataValueField="cod_bod" AppendDataBoundItems="true"
                                OnSelectedIndexChanged  ="Selecc_ddl_Bodega_m_SelectedIndexChanged" 
                                style="font-family:Consolas;
                                font-size:10pt; 
                                width:492px; 
                                height:32px" >
                            </asp:DropDownList>
                        </div>
                    </div>
                    <a href="#" class="btn btn-primary offset-5">Ingresar</a>

                </div>

        </div>
      </div>
    </div>
  </div>
</div>

   <%-- <div class="container">
  <div class="row">
    <div class="col-12 col-sm-8 col-md-6 col-lg-4">
      <div class="card">
        <div class="card-header">
          <ul class="nav nav-tabs card-header-tabs" id="bologna-list" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
            </li>
            <li class="nav-item">
              <a class="nav-link"  href="#history" role="tab" aria-controls="history" aria-selected="false">History</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#deals" role="tab" aria-controls="deals" aria-selected="false">Deals</a>
            </li>
          </ul>
        </div>
        <div class="card-body">
          <h4 class="card-title">Bologna</h4>
          <h6 class="card-subtitle mb-2">Emilia-Romagna Region, Italy</h6>
          
           <div class="tab-content mt-3">
            <div class="tab-pane active" id="description" role="tabpanel">
              <p class="card-text">It is the seventh most populous city in Italy, at the heart of a metropolitan area of about one million people. </p>
              <a href="#" class="card-link text-danger">Read more</a>
            </div>
             
            <div class="tab-pane" id="history" role="tabpanel" aria-labelledby="history-tab">  
              <p class="card-text">First settled around 1000 BCE and then founded as the Etruscan Felsina about 500 BCE, it was occupied by the Boii in the 4th century BCE and became a Roman colony and municipium with the name of Bononia in 196 BCE. </p>
              <a href="#" class="card-link text-danger">Read more</a>
            </div>
             
            <div class="tab-pane" id="deals" role="tabpanel" aria-labelledby="deals-tab">
              <p class="card-text">Immerse yourself in the colours, aromas and traditions of Emilia-Romagna with a holiday in Bologna, and discover the city's rich artistic heritage.</p>
              <a href="#" class="btn btn-danger btn-sm">Get Deals</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>--%>


</body>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
