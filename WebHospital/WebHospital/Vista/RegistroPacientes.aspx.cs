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
    public partial class RegistroPacientes : System.Web.UI.Page
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
            objEPaciente.FechaNacimiento = DateTime.Parse(txtFecha.Text);
            objEPaciente.Password = txtContraseña.Text;
            objEPaciente.Genero = RadioButtonGenero.SelectedValue;
            objEPaciente.IdEps = int.Parse(cmbEps.SelectedValue.ToString());
            int IdEps = int.Parse(cmbEps.SelectedValue.ToString());


            clPaciente objPaciente = new clPaciente();
            int resultsql = objPaciente.mtdRegistrar(objEPaciente);
            //if (!IsPostBack) { 
            //    btnRegistrar.Attributes.Add("onclick", "return confirm('are you sure');"); }
            Response.Write("<script>alert('Paciente Registrado');</script>");
            //if (!IsPostBack) { 
            //    btnRegistrar.Attributes.Add("onclick", "return swal('are you sure?');"); }

            this.txtNombre.Text = "";
            this.txtApellido.Text = "";
            this.txtDocumento.Text = "";
            this.txtUsuario.Text = "";
            this.txtDireccion.Text = "";
            this.txtTelefono.Text = "";
            this.txtFecha.Text = "";
            this.txtContraseña.Text = "";
            RadioButtonGenero.ClearSelection();





        }

        protected void Page_Init(object sender, EventArgs e)
        {
            List<clEntidadEps> listaEps = new List<clEntidadEps>();
            clEps objEps = new clEps();
            listaEps = objEps.mtdListar();
            cmbEps.DataSource = listaEps;
            cmbEps.DataTextField = "Nombre";
            cmbEps.DataValueField = "IdEps";
            cmbEps.DataBind();
        }
    }
}