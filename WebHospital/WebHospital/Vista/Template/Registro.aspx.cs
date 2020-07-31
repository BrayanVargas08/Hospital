using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;

namespace WebHospital.Vista.Template
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClEntidadUsuario objEUsuario = new ClEntidadUsuario();
            objEUsuario.Nombre = txtNombre.Text;
            objEUsuario.Apellido = txtApellido.Text;
            objEUsuario.Documento = txtDocumento.Text;
            objEUsuario.Usuario = txtUsuario.Text;
            objEUsuario.Contraseña = txtContraseña.Text;
            objEUsuario.Genero = RadioButtonGenero.SelectedValue;
            objEUsuario.IdEps = 0;
            objEUsuario.IdRol = 0;

            clUsuario objUsuario = new clUsuario();
            int resultsql = objUsuario.mtdRegistrar(objEUsuario);
        }
    }
}