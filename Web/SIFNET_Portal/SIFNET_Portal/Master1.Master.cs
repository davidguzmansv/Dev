using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static SIFNET_Portal.Models.ConexionDB;

namespace SIFNET_Portal
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master_btnUser_m.Text = var_global.gs_usuario;
            Master_btnUser_m.Height = 30; 
            Master_btn_Alert_m.Text = var_global.gs_alr_c;
            Master_btnMsg_m.Text = var_global.gs_msg_c;
            Master_imgUrl_m.ImageUrl = Request.ApplicationPath + "//fundasal-dc/Images/"+ var_global.gs_url_img;
            //Master_img001_m.ImageUrl = Request.ApplicationPath + "//fundasal-dc/Images/" + var_global.gs_url_img;
            Master_btnDepto_m.Text = "Instancia:  " + var_global.gs_us_depto + " /  Seccion:  " + var_global.gs_us_seccion;
            Master_btnDepto_m.Style["font-size"] = "10px";
        }

        protected void btnUser_m_Click(object sender, EventArgs e)
        {

        }

        protected void btnAlert_m_Click(object sender, EventArgs e)
        {
            //alertsDropdown.Visible = true;
        }

        protected void btnAlert_m_LostFocus(object sender, EventArgs e)
        {
            //alertsDropdown.Visible = false;
        }

        protected void btnMsg_m_Click(object sender, EventArgs e)
        {

        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            //string message = "Selected Item: " + DropDownList1.SelectedItem.Text;
            //ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", "alert('" + message + "');", true);
        }

        protected void btnDepto_m_Click(object sender, EventArgs e)
        {

        }
    }
}