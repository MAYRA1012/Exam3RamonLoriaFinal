using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalRamon_Loria
{
    public partial class Consultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresa_Click(object sender, EventArgs e)
        {
      
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calculos.Insert();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void bmodif_Click(object sender, EventArgs e)
        {
            Calculos.Update();
        }

        protected void bborra_Click(object sender, EventArgs e)
        {
            Calculos.Delete();
        }
    }
}