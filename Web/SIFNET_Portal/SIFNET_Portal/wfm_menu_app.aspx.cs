using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using SIFNET_Portal.Models;
using System.Data.SqlClient;
using static SIFNET_Portal.Models.ConexionDB;

namespace SIFNET_Portal
{
    public partial class wfm_menu_app : System.Web.UI.Page
    {
        int Habilita_Pres, Habilita_Plan, Habilita_Cont, Habilita_Rrhh, Habilita_Tesr, Habilita_Reqc, Habilita_Comp;
        int Habilita_Invt, Habilita_Credc, Habilita_Cntr, Habilita_Impr,               Habilita_Acfj, Habilita_Vehc;
        ConexionDB cn1;
        SqlConnection cxn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn1 = new ConexionDB();
           
            int id_sist_i;
            cmd.Connection = cxn;

            id_sist_i = 2;
            Habilita_Pres = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Pres == 1)
            {
                btnPres_m.BackColor = Color.DarkBlue;
                btnPres_m.Text = "Ingresar";
            }
            else
            {
                btnPres_m.BackColor = Color.OrangeRed;
                btnPres_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Plan = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Plan == 1)
            {
                btnPlan_m.BackColor = Color.DarkBlue;
                btnPlan_m.Text = "Ingresar";
            }
            else
            {
                btnPlan_m.BackColor = Color.OrangeRed;
                btnPlan_m.Text = "Sin Asignar";
            }
            id_sist_i = 2;
            Habilita_Cont = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Cont == 1)
            {
                btnCont_m.BackColor = Color.DarkBlue;
                btnCont_m.Text = "Ingresar";
            }
            else
            {
                btnCont_m.BackColor = Color.OrangeRed;
                btnCont_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Rrhh = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Rrhh == 1)
            {
                btnRrhh_m.BackColor = Color.DarkBlue;
                btnRrhh_m.Text = "Ingresar";
            }
            else
            {
                btnRrhh_m.BackColor = Color.OrangeRed;
                btnRrhh_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Tesr = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Tesr == 1)
            {
                btnTesr_m.BackColor = Color.DarkBlue;
                btnTesr_m.Text = "Ingresar";
            }
            else
            {
                btnTesr_m.BackColor = Color.OrangeRed;
                btnTesr_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Reqc= cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Reqc == 1)
            {
                btnReqc_m.BackColor = Color.DarkBlue;
                btnReqc_m.Text = "Ingresar";
            }
            else
            {
                btnReqc_m.BackColor = Color.OrangeRed;
                btnReqc_m.Text = "Sin Asignar";
            }
            id_sist_i = 2;
            Habilita_Comp = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Comp == 1)
            {
                btnComp_m.BackColor = Color.DarkBlue;
                btnComp_m.Text = "Ingresar";
            }
            else
            {
                btnComp_m.BackColor = Color.OrangeRed;
                btnComp_m.Text = "Sin Asignar";
            }

            id_sist_i = 1;
            Habilita_Invt = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Invt == 1)
            {
                btnInvt_m.BackColor = Color.DarkBlue;
                btnInvt_m.Text = "Ingresar";
            }
            else
            {
                btnInvt_m.BackColor = Color.OrangeRed;
                btnInvt_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Credc = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Credc == 1)
            {
                btnCredc_m.BackColor = Color.DarkBlue;
                btnCredc_m.Text = "Ingresar";
            }
            else
            {
                btnCredc_m.BackColor = Color.OrangeRed;
                btnCredc_m.Text = "Sin Asignar";
            }
            id_sist_i = 2;
            Habilita_Cont = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Cont == 1)
            {
                btnCont_m.BackColor = Color.DarkBlue;
                btnCont_m.Text = "Ingresar";
            }
            else
            {
                btnCont_m.BackColor = Color.OrangeRed;
                btnCont_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Rrhh = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Rrhh == 1)
            {
                btnRrhh_m.BackColor = Color.DarkBlue;
                btnRrhh_m.Text = "Ingresar";
            }
            else
            {
                btnRrhh_m.BackColor = Color.OrangeRed;
                btnRrhh_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Tesr = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Tesr == 1)
            {
                btnTesr_m.BackColor = Color.DarkBlue;
                btnTesr_m.Text = "Ingresar";
            }
            else
            {
                btnTesr_m.BackColor = Color.OrangeRed;
                btnTesr_m.Text = "Sin Asignar";
            }
            id_sist_i = 1;
            Habilita_Reqc = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Reqc == 1)
            {
                btnReqc_m.BackColor = Color.DarkBlue;
                btnReqc_m.Text = "Ingresar";
            }
            else
            {
                btnReqc_m.BackColor = Color.OrangeRed;
                btnReqc_m.Text = "Sin Asignar";
            }
            id_sist_i = 2;
            Habilita_Comp = cn1.Consulta_acceso(var_global.gs_id_usuario, id_sist_i);
            if (Habilita_Comp == 1)
            {
                btnComp_m.BackColor = Color.DarkBlue;
                btnComp_m.Text = "Ingresar";
            }
            else
            {
                btnComp_m.BackColor = Color.OrangeRed;
                btnComp_m.Text = "Sin Asignar";
            }

        }

        protected void btnPres_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Pres == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnPlan_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Plan == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnRed_m_Click(object sender, EventArgs e)
        {

        }

        protected void btnYellow_m_Click(object sender, EventArgs e)
        {

        }

        protected void btnGreen_m_Click(object sender, EventArgs e)
        {

        }

        protected void btnCont_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Cont == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnRrhh_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Rrhh == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnTesr_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Tesr == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnReqc_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Reqc == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnComp_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Comp == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnInvt_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Invt == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnCredc_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Credc == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnCntr_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Cntr == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnImpr_m_Click(object sender, EventArgs e)
         {
            if (Habilita_Impr == 2)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnAcfj_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Acfj == 1)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

        protected void btnVehc_m_Click(object sender, EventArgs e)
        {
            if (Habilita_Vehc == 2)
            {
                Response.Redirect("Default.aspx");
                //Response.Redirect("wfm_menu_app.aspx");
            }
            else { Response.Redirect("wfm_403.aspx"); }
        }

    }

}