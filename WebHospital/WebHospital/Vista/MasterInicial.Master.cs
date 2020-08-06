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
            objEAdministrativo.Password = txtPassword.Text;
            result = objLogin.mtdIngresoAdministrativo(objEAdministrativo);

            if (result.Count > 0)
            {


                Session["usuario"] = result[0].Nombre;
                Session["rol"] = result[0].Rol;
                if (Session["rol"].ToString() == "Administrador")
                {
                    Response.Write("<script>alert('Admin.');</script>");
                }
                if (Session["rol"].ToString() == "Emfermero Jefe")
                {
                    Response.Write("<script>alert('Emfermero.');</script>");
                }
                if (Session["rol"].ToString() == "Secretaria")
                {
                    Response.Write("<script>alert('Secretaria.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
            }
        }
    }
}