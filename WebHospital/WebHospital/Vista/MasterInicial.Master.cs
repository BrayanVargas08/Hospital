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
    public partial class MasterAdmi : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        List<clEntidadPersonalAdministrativo> result = new List<clEntidadPersonalAdministrativo>();
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            clEntidadPersonalAdministrativo objEAdministrativo = new clEntidadPersonalAdministrativo();
            clLogin objLogin = new clLogin();
            objEAdministrativo.email = txtemail.Text;
            objEAdministrativo.password = txtPassword.Text;
            result = objLogin.mtdIngresoAdministrativo(objEAdministrativo);

            if (result.Count > 0)
            {

                for (int i = 0; i < result.Count; i++)
                {
                    Session["usuario"] = result[i].Nombre;
                    Session["rol"] = result[i].IdRol;
                    if (Session["rol"].ToString() == "Administrator" )
                    {
                        Response.Write("<script>alert('Admin.');</script>");
                    }

                }

            }
        }
    }
}