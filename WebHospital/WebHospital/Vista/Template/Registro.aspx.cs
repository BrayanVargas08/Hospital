﻿using System;
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
            clEntidadPaciente objEUsuario = new clEntidadPaciente();
            objEUsuario.Nombre = txtNombre.Text;
            objEUsuario.Apellido = txtApellido.Text;
            objEUsuario.Documento = txtDocumento.Text;
            objEUsuario.email = txtUsuario.Text;
            objEUsuario.Password = txtContraseña.Text;
            objEUsuario.Genero = RadioButtonGenero.SelectedValue;
            objEUsuario.IdEps = 0;

            clPaciente objUsuario = new clPaciente();
            int resultsql = objUsuario.mtdRegistrar(objEUsuario);
        }
    }
}