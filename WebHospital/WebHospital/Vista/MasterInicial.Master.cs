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

            List<clEntidadPaciente> ListaPaciete = new List<clEntidadPaciente>();
            clEntidadPaciente objEPaciente = new clEntidadPaciente();
            clLogin objLogin = new clLogin();
            string dd = rblUsuarios.SelectedItem.Text;

            if (dd == "Administrativos")
            {
                objEAdministrativo.email = txtemail.Text;
                objEAdministrativo.Password = txtPassword.Text;
                ListaAdmin = objLogin.mtdIngresoAdministrativo(objEAdministrativo);

                if (ListaAdmin.Count > 0)
                {
                    Session["usuario"] = ListaAdmin[0].Nombre +" "+ ListaAdmin[0].Apellido;
                    Session["rol"] = ListaAdmin[0].Rol;
                    if (Session["rol"].ToString() == "Administrador")
                    {
                        Response.Write("<script>alert('" + Session["usuario"] + "');</script>");
                    }
                    if (Session["rol"].ToString() == "Emfermero Jefe")
                    {
                        Response.Write("<script>alert('" + Session["usuario"] + "');</script>");
                    }
                    if (Session["rol"].ToString() == "Secretaria")
                    {
                        Response.Write("<script>alert('" + Session["usuario"] + "');</script>");
                    }
                }
               

            }
            else
            {
                if (rblUsuarios.SelectedItem.Text == "Paciente")
                {
                    objEPaciente.email = txtemail.Text;
                    objEPaciente.Password = txtPassword.Text;
                    ListaPaciete = objLogin.mtdValidarDatosPaciente(objEPaciente);

                    if (ListaPaciete.Count > 0)
                    {
                        Session["usuario"] = ListaPaciete[0].Nombre +" "+ ListaPaciete[0].Apellido;
                        Response.Write("<script>alert('" + Session["usuario"] + "');</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Error... Usuario no encontrado');</script>");
                }
            }



        }
    }
}