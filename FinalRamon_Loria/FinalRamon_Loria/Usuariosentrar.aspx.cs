using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalRamon_Loria
{
    public partial class Usuariosentrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void badmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consultas.aspx");
        }

        protected void bregular_Click(object sender, EventArgs e)
        {
            Response.Redirect("Regular.aspx");
        }
    }
}