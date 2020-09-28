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
    public partial class RegistroMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadMedico objEMedico = new clEntidadMedico();
            objEMedico.Nombre = txtNombre.Text;
            objEMedico.Apellido = txtApellido.Text;
            objEMedico.Documento = txtDocumento.Text;
            objEMedico.Telefono = txtTelefono.Text;
            objEMedico.email = txtUsuario.Text;
            objEMedico.Direccion = txtDireccion.Text;
            objEMedico.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);
            objEMedico.Password = txtContraseña.Text;
            objEMedico.IdEspecialidad = int.Parse(cmbEspecialidad.SelectedValue.ToString());
            int IdEspecialidad = int.Parse(cmbEspecialidad.SelectedValue.ToString());


            clMedico objMedico = new clMedico();
            int resultsql = objMedico.mtdRegistrar(objEMedico);
            Response.Write("<script>alert('Medico Registrado');</script>");
            

            this.txtNombre.Text = "";
            this.txtApellido.Text = "";
            this.txtDocumento.Text = "";
            this.txtTelefono.Text = "";
            this.txtUsuario.Text = "";
            this.txtDireccion.Text = "";
            this.txtFechaNacimiento.Text = "";
            this.txtContraseña.Text = "";


        }
        protected void Page_Init(object sender, EventArgs e)
        {
            List<clEntidadEspecialidad> listaEspecialidad = new List<clEntidadEspecialidad>();
            clEspecialidad objEspe = new clEspecialidad();
            listaEspecialidad = objEspe.mtdListarEspecialidad();
            cmbEspecialidad.DataSource = listaEspecialidad;
            cmbEspecialidad.DataTextField = "Especialidad";
            cmbEspecialidad.DataValueField = "IdEspecialidad";
            cmbEspecialidad.DataBind();
        }
    }
}