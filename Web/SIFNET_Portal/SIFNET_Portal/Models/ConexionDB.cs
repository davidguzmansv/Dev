using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
//using cls_Bas_Encriptamiento.cs;

namespace SIFNET_Portal.Models
{
    public class ConexionDB
    {
        private DataSet maDataSet;
        private SqlDataAdapter maAdapter;
        private SqlConnection cadConexion;
        private Seg_Usuarios loginSelected;
        private string Existe;
        private string urlImg;
        private string nomDepto;
        private string nomSeccion;
        private string nomJpg;
        private int usr_id;

        private Accesos accesosSelected;
        private Bodega bodegaSelected;
        private Instancias instanciasSelected; 
        private Proyecto proyectoSelected;
        private Seccion seccionSelected;

        private List<Accesos> lstAccesos = new List<Accesos>();
        private List<Bodega> lstBodega = new List<Bodega>();
        private List<Instancias> lstInstancias = new List<Instancias>();
        private List<Proyecto> lstProyecto = new List<Proyecto>();
        private List<Seccion> lstSeccion = new List<Seccion>();

        private void Conectar()
        
        {
            cadConexion = new SqlConnection(ConfigurationManager.ConnectionStrings["administracion"].ConnectionString);
        }

        public string Consulta_login(string login_usr, string psw_usr, int tipo)
        {
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            //string select =
            //    "SELECT SEG.ID_USUARIO AS ID_USUARIO,MST.COD_EMP AS COD_EMP, SEG.LOGIN AS LOGIN, SEG.PASSWORD AS PASSWORD, MST.CCOSTOS AS CCOSTOS, DEP.NOMDEPTOUNID AS DEPTO, SEC.NOMSECCION AS SECCION " +
            //    "FROM dbo_net.SEG_USUARIOS SEG, SIF_PRODUCCION.dbo.MSTR_PRSL MST, SIF_PRODUCCION.dbo.CTLG_DEPTOSYUNID DEP,SIF_PRODUCCION.dbo.CTLG_SECCIONES SEC " +
            //    "WHERE LOGIN = '" + login_usr + "' AND SEG.COD_EMP = MST.COD_EMP AND MST.CDGDEPTOUNID= DEP.CDGDEPTOUNID AND (DEP.CDGDEPTOUNID=SEC.CDGDEPTOUNID AND MST.CDGSECCION=SEC.CDGSECCION)";

            string select = "SELECT * FROM dbo_net.VW_SEG_ACCESO_EMPL WHERE LOGIN = '" + login_usr+ "'";

            SqlConnection cxn = new SqlConnection(strcxn);

            SqlCommand com = new SqlCommand(select, cxn);
            cxn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string loginSelected = dr["PASSWORD"].ToString();
                    urlImg = dr["FOTO_EMPL"].ToString();
                    nomDepto = dr["NOMBRE_INSTANCIA"].ToString();
                    nomSeccion = dr["NOMBRE_SECCION"].ToString();
                    nomJpg = dr["COD_EMP"].ToString() + ".jpg";
                    usr_id = Convert.ToInt32(dr["ID_USUARIO"]);
                    if (cls_Bas_Encriptamiento.Decrypt(loginSelected).Equals(psw_usr))
                    {
                        Existe = "1";
                    }
                    else { Existe = "0"; }                      
                    }
                var_global.gs_us_depto = nomDepto.Trim();
                var_global.gs_us_seccion = nomSeccion.Trim();
                var_global.gs_id_usuario = usr_id;
            }
            else
            { Existe = "0"; }
            cxn.Close();
            if (tipo == 2)
            {
                Existe = nomJpg;
            }
            return Existe;
        }

        public string Encriptar(string login, string psw, string psw_confirma)
        {
            string encriptado;
            if (login.ToString() != "" && psw.ToString() != "" && psw_confirma.ToString() != "")  //validating the fields whether the fields or empty or not  
            {
                if (psw.ToString().Trim().ToLower() == psw_confirma.ToString().Trim().ToLower()) //validating Password textbox and confirm password textbox is match or unmatch    
                {
                    string UserName = login;
                    string Password = cls_Bas_Encriptamiento.Encrypt(psw.ToString());   // Passing the Password to Encrypt method and the method will return encrypted string and stored in Password variable.                    
                    ConexionDB cn;
                    encriptado = "1";
                }
                else
                {
                    encriptado = "2";
                }
            }
            else
            {
                encriptado = "3";
            }
            return encriptado;
        }

        public class NetworkImageHandler : System.Web.IHttpHandler
        {
            // Folder where all images are stored, process must have read access
            private const string NETWORK_SHARE = @"\\Fundasal-dc\sif\FotosEmpleados\fotos\";

            public void ProcessRequest(HttpContext context)
            {
                string fileName = context.Request.QueryString["gg56.jpg"];
                string path = Path.Combine(NETWORK_SHARE, fileName);

                context.Response.ContentType = "image/jpg";
                context.Response.WriteFile(path, true);
            }

            public bool IsReusable { get { return false; } }
        }

        public List<Bodega> GetBodega(string cod_proy_s)
        {

            lstBodega.Clear();
            //maDataSet.Clear();
            string cadenaTruncada, cadena, cadenaTemp;
            char relleno;
            cadenaTruncada = cadena = cadenaTemp = "";
            relleno = Convert.ToChar(".");
            int pad, newPad;
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            string qrystring = "SELECT * FROM SIF_PRODUCCION.dbo.CTLG_BDGS WHERE ESTADO=1 AND COD_PROY='" + cod_proy_s + "' ORDER BY COD_BDG";

            SqlConnection cxn = new SqlConnection(strcxn);
            SqlCommand com = new SqlCommand(qrystring, cxn);
            SqlDataReader dr;
            cxn.Open();
            dr = com.ExecuteReader();
            if (dr.HasRows == true)
                while (dr.Read())
                {
                    bodegaSelected = new Bodega();
                    bodegaSelected.cod_bod = (dr["cod_bdg"].ToString());
                    bodegaSelected.nom_bod = dr["nom_bdga"].ToString();
                    cadena = dr["cod_bdg"].ToString() + " - " + (dr["nom_bdga"]).ToString();
                    pad = cadena.Length;
                    if (pad < 57)
                    {
                        newPad = 57 - pad;
                        cadenaTemp = cadena.PadRight(newPad, relleno);
                    }
                    else
                    {
                        cadenaTemp = cadena;
                    }

                    cadenaTruncada = cadenaTemp.Substring(0, 40);
                    bodegaSelected.nom_bod = cadenaTruncada;
                    lstBodega.Add(bodegaSelected);
                }
            return lstBodega;
        }

        public List<Instancias> GetInstancias()
        {

            lstInstancias.Clear();
            //maDataSet.Clear();
            string cadenaTruncada, cadena, cadenaTemp;
            char relleno;
            cadenaTruncada = cadena = cadenaTemp = "";
            relleno = Convert.ToChar(".");
            int pad, newPad;
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            string qrystring = "SELECT * FROM dbo_net.CTLG_INSTANCIAS WHERE ACTIVO=1 ORDER BY COD_INSTANCIA";

            SqlConnection cxn = new SqlConnection(strcxn);
            SqlCommand com = new SqlCommand(qrystring, cxn);
            SqlDataReader dr;
            cxn.Open();
            dr = com.ExecuteReader();
            if (dr.HasRows == true)
                while (dr.Read())
                {
                    instanciasSelected = new Instancias();
                    instanciasSelected.cod_ins = (dr["cod_instancia"].ToString());
                    instanciasSelected.nom_ins = dr["nombre_instancia"].ToString();
                    cadena = dr["cod_instancia"].ToString() + " - " + (dr["nombre_instancia"]).ToString();
                    pad = cadena.Length;
                    if (pad < 57)
                    {
                        newPad = 57 - pad;
                        cadenaTemp = cadena.PadRight(newPad, relleno);
                    }
                    else
                    {
                        cadenaTemp = cadena;
                    }

                    cadenaTruncada = cadenaTemp.Substring(0, 57);
                    instanciasSelected.nom_ins = cadenaTruncada;
                    lstInstancias.Add(instanciasSelected);
                }
            return lstInstancias;
        }

        public List<Seccion> GetSeccion(string codigo_inst)
        //public List<Seccion> GetSeccion()
        {

            lstSeccion.Clear();
            //maDataSet.Clear();
            string cadenaTruncada, cadena, cadenaTemp;
            char relleno;
            cadenaTruncada = cadena = cadenaTemp = "";
            relleno = Convert.ToChar(".");
            int pad, newPad;
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            //string qrystring = "SELECT * FROM dbo_net.CTLG_INSTANCIAS_SECCIONES WHERE COD_INSTANCIA = '"+ codigo_inst + "' AND ACTIVO=1 ORDER BY COD_SECCION";
            string qrystring = "SELECT * FROM dbo_net.CTLG_INSTANCIAS_SECCIONES WHERE COD_INSTANCIA = '"+ codigo_inst + "' AND ACTIVO=1 ORDER BY COD_SECCION";

            SqlConnection cxn = new SqlConnection(strcxn);
            SqlCommand com = new SqlCommand(qrystring, cxn);
            SqlDataReader dr;
            cxn.Open();
            dr = com.ExecuteReader();
            if (dr.HasRows == true)
                while (dr.Read())
                {
                    seccionSelected = new Seccion();
                    seccionSelected.cod_sec = (dr["cod_seccion"].ToString());
                    seccionSelected.nom_sec = dr["nombre_seccion"].ToString();
                    cadena = dr["cod_seccion"].ToString() + " - " + (dr["nombre_seccion"]).ToString();
                    pad = cadena.Length;
                    if (pad < 57)
                    {
                        newPad = 57 - pad;
                        cadenaTemp = cadena.PadRight(newPad, relleno);
                    }
                    else
                    {
                        cadenaTemp = cadena;
                    }

                    cadenaTruncada = cadenaTemp.Substring(0, 50);
                    seccionSelected.nom_sec = cadenaTruncada;
                    lstSeccion.Add(seccionSelected);
                }
            return lstSeccion;
        }

        public List<Proyecto> GetProyecto()
        {

            lstProyecto.Clear();
            //maDataSet.Clear();
            string cadenaTruncada, cadena, cadenaTemp;
            char relleno ;
            cadenaTruncada = cadena = cadenaTemp = "";
            relleno = Convert.ToChar(" ");
            int pad, newPad;
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            string qrystring = "SELECT * FROM dbo_net.PRS_PROYECTOS WHERE COD_PRG='100' AND ACTIVO=1 ORDER BY COD_PROY";

            SqlConnection cxn = new SqlConnection(strcxn);
            SqlCommand com = new SqlCommand(qrystring, cxn);
            SqlDataReader dr;
            cxn.Open();
            dr = com.ExecuteReader();
            if (dr.HasRows == true)
                 while (dr.Read())      
            {
                proyectoSelected = new Proyecto();
                proyectoSelected.cod_prg = (dr["cod_prg"].ToString());
                proyectoSelected.cod_proy = dr["cod_proy"].ToString();
                    cadena = dr["cod_proy"].ToString() + " - " + (dr["nom_proy"]).ToString();
                    pad = cadena.Length;
                    if (pad < 100)
                    {
                        newPad = 100 - pad;
                        cadenaTemp=cadena.PadRight(newPad, relleno); 
                    }
                    else
                    {
                        cadenaTemp = cadena;
                    }
                   
                    cadenaTruncada = cadenaTemp.Substring(0, 60);
                proyectoSelected.nom_proy = cadenaTruncada;
                lstProyecto.Add(proyectoSelected);
            }
            return lstProyecto;
        }

        public List<Accesos> GetAccesos(int  user_id)
        {

            lstAccesos.Clear();
            //maDataSet.Clear();

            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            string qrystring = "SELECT id_sistema, id_usuario  FROM SIF_PRODUCCION.dbo.SEG_PERFIL_USUARIO WHERE activo = 1 AND ID_USUARIO=" + user_id + " ORDER BY id_sistema";

            SqlConnection cxn = new SqlConnection(strcxn);
            SqlCommand com = new SqlCommand(qrystring, cxn);
            SqlDataReader dr;
            cxn.Open();
            dr = com.ExecuteReader();
            if (dr.HasRows == true)
                while (dr.Read())
                {
                    accesosSelected = new Accesos();
                    accesosSelected.User_Id = Convert.ToInt32(dr["id_usuario"]);
                    accesosSelected.Id_Sistema = Convert.ToInt32(dr["Id_sistema"]);
                
                    lstAccesos.Add(accesosSelected);
                }
            return lstAccesos;
        }

        public int Consulta_acceso(int user_id, int id_sist)
        {
            int Permitido = 0;
            string strcxn = ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            maDataSet = new DataSet();
            string qrystring = "SELECT id_usuario, Id_Sistema FROM dbo_net.SEG_PERFIL_USUARIO WHERE activo=1 and id_usuario=" + user_id + " and id_sistema= " + id_sist;
            maAdapter = new SqlDataAdapter(qrystring, strcxn);
            maAdapter.Fill(maDataSet, "SEG_USUARIOS_PF");
            foreach (DataRow drw in maDataSet.Tables["SEG_USUARIOS_PF"].Rows)
            {
                if (maDataSet.Tables["SEG_USUARIOS_PF"].Rows.Count > 0)
                {
                    accesosSelected = new Accesos();
                    accesosSelected.User_Id = Convert.ToInt32(drw["ID_USUARIO"]);
                    accesosSelected.Id_Sistema = Convert.ToInt32(drw["ID_SISTEMA"]);

                    Permitido = 1;
                   
                }
                else { Permitido = 0; }
            }
            return Permitido;
        }

        public static class var_global
        {
            public static string gs_usuario;
            public static int gs_sistema = 0;
            public static string gs_cn_usr = "sa";
            public static string gs_cn_psw = "sql#";
            public static string gs_cn_server = "192.168.1.2\\SQLSERVER";
            public static string gs_cn_database = "SIFNET_DESARROLLO";
            public static int gs_id_usuario;
            public static string gs_url_ok = "0";
            public static string gs_alr_c = "";
            public static string gs_msg_c = "";
            public static string gs_url_img = "";
            public static string gs_us_depto = "";
            public static string gs_us_seccion = "";
        }

    }
}