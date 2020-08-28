using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Vista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarEps_Click(object sender, EventArgs e)
        {
            clEntidadEps objEps = new clEntidadEps();
            objEps.Nombre= txtNombreEps.Text;
            objEps.Ciudad = txtCiudadEps.Text;
           

            clEps objEpss= new clEps();
            int result = objEpss.mtdRegistrarEps(objEps);
        }
    }
}