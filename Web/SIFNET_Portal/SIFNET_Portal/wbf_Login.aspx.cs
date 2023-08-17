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
    public partial class wbf_Login : System.Web.UI.Page
    {
        ConexionDB cn;

        SqlConnection cxn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new ConexionDB();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd.Connection = cxn;
            string Username = "";
            string Password = "";
            Username = Login_tbx_Usuario.Text;
            Password = Login_tbx_Password.Text;
            var_global.gs_usuario = Login_tbx_Usuario.Text;

            string  valor = cn.Consulta_login(Username, Password,1);
            if (valor != "1")
            {
                //Response.Redirect("Default.aspx");
                Response.Redirect("wbf_Menu.aspx");

            }                     
        }
    }
}