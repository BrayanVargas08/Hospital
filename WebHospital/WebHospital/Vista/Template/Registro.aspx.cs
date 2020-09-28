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

        protected void Page_Init(object sender, EventArgs e)
        {
            //List<clEntidadEps> listaEps = new List<clEntidadEps>();
            //clEps objEps = new clEps();
            //listaEps = objEps.mtdListar();
            //cmbEps.DataSource = listaEps;
            //cmbEps.DataTextField = "Nombre";
            //cmbEps.DataValueField = "IdEps";
            //cmbEps.DataBind();
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
            objEPaciente.FechaNacimiento = DateTime.Parse(txtFecha.Text);
            objEPaciente.Password = txtContraseña.Text;
            objEPaciente.Genero = RadioButtonGenero.SelectedValue;
            objEPaciente.IdEps = int.Parse(cmbEps.SelectedValue.ToString());
            int IdEps = int.Parse(cmbEps.SelectedValue.ToString());
            

            clPaciente objPaciente = new clPaciente();
            int resultsql = objPaciente.mtdRegistrar(objEPaciente);


        }
    }
}