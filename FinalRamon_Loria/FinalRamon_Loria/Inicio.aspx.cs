using System;

using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;


namespace FinalRamon_Loria
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void bingresos_Click1(object sender, EventArgs e)
        {
            CsUsuario.Setnombre(tusuario.Text);
            CsUsuario.SetClave(tclave2.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["Prueba"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {

                conexion.Open();
                SqlCommand comando = new SqlCommand("select email, clave from usuario  " +
                    "where email =  '" + tusuario.Text + "'   and clave = '" + tclave2.Text + "'" , conexion);
                SqlDataReader registro = comando.ExecuteReader();



                if (registro.Read())
                {
                    Response.Redirect("Usuariosentrar.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no existe');", true);
                }
            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Reviar la conexion');", true);
            }
            finally
            {
                conexion.Close();
            }

        }

    }
    
}