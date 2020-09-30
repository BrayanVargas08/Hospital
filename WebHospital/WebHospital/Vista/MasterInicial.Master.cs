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
            this.RadioButtonGenero.SelectedValue = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            List<clEntidadPersonalAdministrativo> ListaAdmin = new List<clEntidadPersonalAdministrativo>();
            clEntidadPersonalAdministrativo objEAdministrativo = new clEntidadPersonalAdministrativo();

            List<clEntidadMedico> ListaMedico = new List<clEntidadMedico>();
            clEntidadMedico objEMedico = new clEntidadMedico();

            List<clEntidadPaciente> ListaPaciente = new List<clEntidadPaciente>();
            clEntidadPaciente objEPaciente = new clEntidadPaciente();

            clLogin objLogin = new clLogin();
            string Tabla = rblUsuarios.SelectedValue;

            if (rblUsuarios.SelectedItem.Text == "Administrativos")
            {
                objEAdministrativo.email = txtemail.Text;
                objEAdministrativo.Password = txtPassword.Text;
                ListaAdmin = objLogin.mtdIngresoAdministrativo(objEAdministrativo);

                if (ListaAdmin.Count > 0)
                {

                    Session["rol"] = ListaAdmin[0].Rol;
                    if (Session["rol"].ToString() == "Administrador")
                    {
                        Session["usuario"] = ListaAdmin[0].Nombre + " " + ListaAdmin[0].Apellido; 
                        Response.Redirect("indexadministrador.aspx");
                        
                    }
                    if (Session["rol"].ToString() == "Emfermero Jefe")
                    {
                        Response.Redirect("indexadministrador.aspx");

                    }
                    if (Session["rol"].ToString() == "Secretaria")
                    {
                        Response.Redirect("indexadministrador.aspx");

                    }
                }


            }
            if (rblUsuarios.SelectedItem.Text == "Paciente")
            {
                objEPaciente.email = txtemail.Text;
                objEPaciente.Password = txtPassword.Text;
                ListaPaciente = objLogin.mtdValidarDatosPaciente(objEPaciente);

                if (ListaPaciente.Count > 0)
                {
                    Session["usuario"] = ListaPaciente[0].Nombre + " " + ListaPaciente[0].Apellido;
                    Response.Redirect("IndexUsuarios.aspx");
                    
                }
                else
                {
                    Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
                }
            }
            if (rblUsuarios.SelectedItem.Text == "Medico")
            {
                objEMedico.email = txtemail.Text;
                objEMedico.Password = txtPassword.Text;
                ListaMedico = objLogin.mtdValidarDatosMedico(objEMedico);

                if (ListaMedico.Count > 0)
                {
                    Session["usuario"] = ListaMedico[0].Nombre + " " + ListaMedico[0].Apellido;
                    Response.Redirect("indexMedico.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Por favor indique que tipo de Usuario que Ingresa.'"+Session["usuario"]+");</script>");

            }
        }
    }
}