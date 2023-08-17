<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="SIFNET_Portal.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<%--<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Image1.ImageUrl = "~/Images/RedFlower.jpg";
            Image2.ImageUrl = "~/Images/Sky.jpg";
        }
    }    
</script>--%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<%--<head id="Head1" runat="server">--%>
 <%--   <title>How to use TabContainer in asp.net ajax</title>--%>
<%--</head>--%>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
        <h2 style="color:DarkBlue; font-style:italic;">Ajax Control Toolkit Example: Using TabContainer</h2>
        <hr width="500" align="left" color="CornFlowerBlue" />
        <br /><br />
        <%--<asp:ScriptManager 
            ID="ScriptManager1"
            runat="server"
            >
        </asp:ScriptManager>--%>
        <cc1:TabContainer ID="TabContainer1" runat="server" Width="600">
            <cc1:TabPanel ID="TabPanel1" runat="server">
                <HeaderTemplate>
                    Red Flower
                </HeaderTemplate>
                <ContentTemplate>

                       <%--<div class="tab-pane fade active  p-3" id="one" style="background-color:whitesmoke" role="tabpanel" aria-labelledby="one-tab">
                  <%--  <h5 class="card-title text-primary" style="text-decoration-line:underline; font-family: Consolas; font-size:12pt">Selección</h5>--%>
                    <cc1:ComboBox ID="Selecc_ddl_Instancia_m" runat="server" AutoPostBack ="False" DropDownStyle="DropDownList" DataSourceID="GetProyecto" DataTextField="Title" 
                        DataValueField="Id"  AutoCompleteMode="SuggestAppend" CaseSensitive="false" >
                                <%-- DataTextField="nom_ins" DataValueField="cod_ins" AppendDataBoundItems="true"
                                 OnSelectedIndexChanged  ="Selecc_ddl_Instancia_m_SelectedIndexChanged" --%>
                      <%--  <asp:DropDownList   CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack ="True" 
                                 DataTextField="nom_ins" DataValueField="cod_ins" AppendDataBoundItems="true"
                                 OnSelectedIndexChanged  ="Selecc_ddl_Instancia_m_SelectedIndexChanged" 
                                 style="font-family:Consolas; 
                                        font-size:10pt; 
                                        width:497px; 
                                        height:32px"  >
                                 <asp:ListItem Value ="0">--Seleccionar--</asp:ListItem>
                            </asp:DropDownList>--%>
                    </cc1:ComboBox>
                    <%--<asp:SqlDataSource ID="GetProyecto()" runat="server"></asp:SqlDataSource> --%>

                    <p class="card-text mb-0" style="font-family: Consolas; font-size:12pt">Departamento o Unidad</p>--%>
                           
                    <div class="input-group-text alert-info mb-3" style="width:550px"><i class="fa fa-sitemap fa-2x fa-lg text-primary"></i>
                        <div class="col-lg-12">
                            <asp:DropDownList   CssClass="form-control" ID="Selecc_ddl_Instancia2_m" runat="server" AutoPostBack ="True" 
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




                    <asp:Image ID="Image1" runat="server" />
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel2" runat="server">
                <HeaderTemplate>
                    Color List
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:CheckBoxList 
                        ID="CheckBoxList1"
                        runat="server"
                        BorderColor="DeepPink"
                        ForeColor="Snow"
                        BackColor="Crimson"
                        BorderWidth="1"
                        RepeatColumns="2"
                        Width="500"
                        >
                        <asp:ListItem>Crimson</asp:ListItem>
                        <asp:ListItem>RosyBrown</asp:ListItem>
                        <asp:ListItem>DodgerBlue</asp:ListItem>
                        <asp:ListItem>Salmon</asp:ListItem>
                        <asp:ListItem>DeepPink</asp:ListItem>
                        <asp:ListItem>HotPink</asp:ListItem>
                        <asp:ListItem>Violet</asp:ListItem>
                    </asp:CheckBoxList>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel3" runat="server">
                <HeaderTemplate>
                    Sky Image
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Image ID="Image2" runat="server" />
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
    <%--</form>--%>
</body>
</html>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
