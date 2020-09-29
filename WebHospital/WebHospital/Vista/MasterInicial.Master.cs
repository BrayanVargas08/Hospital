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
                    Session["usuario"] = ListaAdmin[0].Nombre + " " + ListaAdmin[0].Apellido;

                    Session["rol"] = ListaAdmin[0].Rol;
                    if (Session["rol"].ToString() == "Administrador")
                    {
                        Response.Write("<script>alert('Admin" + Session["usuario"] + "');</script>");
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
                    Response.Redirect("indexUsuario.aspx");

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