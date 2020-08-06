using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Vista.Template
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadPaciente objEPaciente = new clEntidadPaciente();
            objEPaciente.Nombre = txtNombre.Text;
            objEPaciente.Apellido = txtApellido.Text;
            objEPaciente.Documento = txtDocumento.Text;
            objEPaciente.email = txtUsuario.Text;
            objEPaciente.Direccion = txtDireccion.Text;
            objEPaciente.Telefono = txtTelefono.Text;
            objEPaciente.FechaNacimiento = txtFecha.
            

            clPaciente objUsuario = new clPaciente();
            int resultsql = objUsuario.mtdRegistrar(objEPaciente);
        }
    }
}