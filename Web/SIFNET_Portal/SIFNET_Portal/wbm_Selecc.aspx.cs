using SIFNET_Portal.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIFNET_Portal
{
    public partial class wbm_Selecc : System.Web.UI.Page
    {
        string codigoInstancia, codigoProyecto;
        
        ConexionDB cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ConexionDB cn;
                cn = new ConexionDB();

                Selecc_ddl_Proyecto_m.DataSource = cn.GetProyecto();
                Selecc_ddl_Proyecto_m.DataBind();
                Selecc_ddl_Proyecto_m.ForeColor = Color.Red;

                Selecc_ddl_Instancia_m.DataSource = cn.GetInstancias();
                Selecc_ddl_Instancia_m.DataBind();
                Selecc_ddl_Instancia_m.ForeColor = Color.Red;

                Selecc_ddl_Proyectobod_m.DataSource = cn.GetProyecto();
                Selecc_ddl_Proyectobod_m.DataBind();
                Selecc_ddl_Proyectobod_m.ForeColor = Color.Red;
            }
         
        }

        protected void Selecc_ddl_Instancia_m_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn = new ConexionDB();

            Selecc_ddl_Seccion_m.Items.Clear();
            Selecc_ddl_Seccion_m.Items.Add("..Seleccionar..");
            codigoInstancia = Selecc_ddl_Instancia_m.DataValueField;
            Selecc_ddl_Seccion_m.DataSource = cn.GetSeccion(Selecc_ddl_Instancia_m.SelectedValue);
            Selecc_ddl_Seccion_m.DataBind();
            Selecc_ddl_Seccion_m.ForeColor      = Color.Red;
        }

        protected void Selecc_ddl_Seccion_m_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn = new ConexionDB();

            codigoInstancia = Selecc_ddl_Instancia_m.SelectedValue;
            Selecc_ddl_Seccion_m.DataSource = cn.GetSeccion(Selecc_ddl_Instancia_m.SelectedValue);
            Selecc_ddl_Seccion_m.DataBind();
            Selecc_ddl_Seccion_m.ForeColor = Color.Red;
        }

        protected void Selecc_ddl_Proyecto_m_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cn = new ConexionDB();

            //codigoInstancia = Selecc_ddl_Instancia_m.SelectedValue;
            //Selecc_ddl_Seccion_m.DataSource = cn.GetSeccion(Selecc_ddl_Instancia_m.SelectedValue);
            //Selecc_ddl_Seccion_m.DataBind();
            //Selecc_ddl_Seccion_m.ForeColor = Color.Red;
        }

        protected void Selecc_ddl_Proyectobod_m_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn = new ConexionDB();

            Selecc_ddl_Bodega_m.Items.Clear();
            Selecc_ddl_Bodega_m.Items.Add("..Seleccionar..");
            codigoProyecto = Selecc_ddl_Proyectobod_m.DataValueField;
            Selecc_ddl_Bodega_m.DataSource = cn.GetBodega(Selecc_ddl_Proyectobod_m.SelectedValue);
            Selecc_ddl_Bodega_m.DataBind();
            Selecc_ddl_Bodega_m.ForeColor = Color.Red;
            
        }

        protected void Selecc_ddl_Bodega_m_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn = new ConexionDB();

            codigoProyecto = Selecc_ddl_Proyectobod_m.SelectedValue;
            Selecc_ddl_Bodega_m.DataSource = cn.GetBodega(Selecc_ddl_Proyectobod_m.SelectedValue);
            Selecc_ddl_Bodega_m.DataBind();
            Selecc_ddl_Bodega_m.ForeColor = Color.Red;
        }
    }
}