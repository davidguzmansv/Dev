using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static SIFNET_Portal.Models.ConexionDB;

namespace SIFNET_Portal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (var_global.gs_usuario=="David Guzman" && var_global.gs_url_ok=="0" )
            {
                Response.Redirect("Contact.aspx");
            }
        }
    }
}