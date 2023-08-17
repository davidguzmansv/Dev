using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using static SIFNET_Portal.Models.ConexionDB;
using SIFNET_Portal.Models;

namespace SIFNET_Portal
{
    public partial class wbm_Login : System.Web.UI.Page
    {
        ConexionDB cn;

        SqlConnection cxn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new ConexionDB();
            //string Username = "";
            //string Password = "";
            //Login_tbx_Usuario.Text = Username;
            //Login_tbx_Password.Text = Password;
        }
        protected void btnLogin_m_Click(object sender, EventArgs e)
        {
            cmd.Connection = cxn;
            string Username = "";
            string Password = "";
            Username = Login_tbx_Usuario_m.Text;
            Password = Login_tbx_Password_m.Text;
            var_global.gs_usuario = Login_tbx_Usuario_m.Text;
            var_global.gs_url_ok = "1";
            var_global.gs_alr_c = "5+";
            var_global.gs_msg_c = "3";

            string valor = cn.Consulta_login(Username, Password, 1);
            var_global.gs_url_img = cn.Consulta_login(Username, Password, 1);


            if (valor != "0")
            {
                //Response.Redirect("Default.aspx");
                Response.Redirect("wfm_menu_app.aspx");
            }

        }
    }
}