using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHospital.Vista
{
    public partial class MasterUsuarios : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["usuario"] == null)
            //{
            //    Response.Redirect("index.aspx");
            //}

            //lblUsuario.Text = Session["usuario"].ToString();
        }

        protected void lkbCerrar_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}