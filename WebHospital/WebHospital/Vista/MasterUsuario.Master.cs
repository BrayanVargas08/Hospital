using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHospital.Vista
{
    public partial class MasterUsuario : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            Response.Write("<script>alert('"+Session["usuario"]+".');</script>");
            //lblUsuario.Text = Session["usuario"].ToString();
        }
    }
}