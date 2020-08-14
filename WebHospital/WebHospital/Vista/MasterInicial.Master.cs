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

            clLogin objLogin = new clLogin();
            string Tabla = rblUsuarios.SelectedValue;

            //if (rblUsuarios.SelectedItem.Text == "Administrativos")
            //{
            objEAdministrativo.email = txtemail.Text;
            objEAdministrativo.Password = txtPassword.Text;
            ListaAdmin = objLogin.mtdIngresoAdministrativo(objEAdministrativo);

            if (ListaAdmin.Count > 0)
            {
                Session["usuario"] = ListaAdmin[0].Nombre + " " + ListaAdmin[0].Apellido;

                Session["rol"] = ListaAdmin[0].Rol;
                if (Session["rol"].ToString() == "Administrador")
                {
                    Response.Redirect("indexadministrador.aspx");
                    Response.Write("<script>alert('Admin" + Session["usuario"] + "');</script>");
                }
                if (Session["rol"].ToString() == "Emfermero Jefe")
                {
                    Response.Write("<script>alert('Emfermero " + Session["usuario"] + "');</script>");
                }
                if (Session["rol"].ToString() == "Secretaria")
                {
                    Response.Write("<script>alert('Secretaria " + Session["usuario"] + "');</script>");
                }
            }


        }
        //            if (rblUsuarios.SelectedItem.Text == "Paciente")
        //            {
        //                objEPaciente.email = txtemail.Text;
        //                objEPaciente.Password = txtPassword.Text;
        //                ListaPaciete = objLogin.mtdValidarDatosPaciente(objEPaciente);

        //                if (ListaPaciete.Count > 0)
        //                {
        //                    Session["usuario"] = ListaPaciete[0].Nombre + " " + ListaPaciete[0].Apellido;
        //                    Response.Write("<script>alert('Paciente" + Session["usuario"] + "');</script>");

        //                }
        //                else
        //                {
        //                    Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
        //                }
        //            }
        //            if (rblUsuarios.SelectedItem.Text == "Medico")
        //            {
        //                objEMedico.email = txtemail.Text;
        //                objEMedico.Password = txtPassword.Text;
        //                ListaMedico = objLogin.mtdValidarDatosMedico(objEMedico);

        //                if (ListaMedico.Count > 0)
        //                {
        //                    Session["usuario"] = ListaMedico[0].Nombre + " " + ListaMedico[0].Apellido;
        //                    Response.Write("<script>alert('Medico " + Session["usuario"] + "');</script>");

        //                }
        //                else
        //                {
        //                    Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
        //                }
        //            }
        //            else
        //            {
        //                Response.Write("<script>alert('Por favor indique que tipo de Usuario Ingresa.');</script>");

        //}
    }
}