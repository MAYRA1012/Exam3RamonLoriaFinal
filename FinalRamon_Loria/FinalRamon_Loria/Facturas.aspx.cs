using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FinalRamon_Loria
{
    public partial class Facturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


           
            CsUsuario.Nombre = tnombre.Text;
            CsUsuario.cedula = tcedula.Text;
            CsUsuario.apellido = tapellido.Text;
            CsUsuario.email = tcorreo.Text;
            CsUsuario.Clave = tclave.Text;
            CsUsuario.Direccion = tdireccion.Text;
            CsUsuario.telefono = ttelefono.Text;


            tnombre.Text = tipo.SelectedValue;

            tnombre.Text = tipo.SelectedValue;
            if (CsUsuario.RegistroPersona() > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ha sido registrado');", true);

                
            }
            else
            {
                
            }
            return;

            


        }

        protected void bregresa_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}