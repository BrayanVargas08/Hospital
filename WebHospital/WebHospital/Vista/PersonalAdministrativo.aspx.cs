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
    public partial class PersonalAdministrativo : System.Web.UI.Page
    {
        clPersonalAministrativo objPersonalAdmin = new clPersonalAministrativo();

        protected void Page_Load(object sender, EventArgs e)
        {

            List<clEntidadPersonalAdministrativo> listaRol = new List<clEntidadPersonalAdministrativo>();
            listaRol = objPersonalAdmin.mtdListaRol();
            rblAdministrativos.DataSource = listaRol;
            rblAdministrativos.DataTextField = "Rol";
            rblAdministrativos.DataValueField = "IdRol";

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadPersonalAdministrativo objEPersonalAdmin = new clEntidadPersonalAdministrativo();
            objEPersonalAdmin.Nombre = txtNombre.Text;
            objEPersonalAdmin.Apellido = txtApellido.Text;
            objEPersonalAdmin.Documento = txtDocumento.Text;
            objEPersonalAdmin.Telefono = txtTelefono.Text;
            objEPersonalAdmin.email = txtemail.Text;
            objEPersonalAdmin.Direccion = txtDireccion.Text;
            objEPersonalAdmin.Password = txtPassword.Text;
            objEPersonalAdmin.IdRol = int.Parse(rblAdministrativos.SelectedValue);


            int Resultado = objPersonalAdmin.mtdRegistroPersonalAdministrativo(objEPersonalAdmin);


        }
    }
}