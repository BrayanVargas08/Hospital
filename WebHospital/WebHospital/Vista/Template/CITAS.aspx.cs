﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo.Entidad;



namespace WebHospital.Vista.Template
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarllenadodeDropDown();

            }

           

        }
        private void IniciarllenadodeDropDown()
        {

            dropEspecialidad.DataSource = Consultar("SELECT * FROM Especialidad");
            dropEspecialidad.DataTextField = "Especialidad";
            dropEspecialidad.DataValueField = "IdEspecialidad";
            dropEspecialidad.DataBind();
            dropEspecialidad.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
            dropEspecialista.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
        }
        protected void EspecialidadSeleccionada(object sender, EventArgs e)
        {
            int IdEspecialidad = Convert.ToInt32(dropEspecialidad.SelectedValue);
            dropEspecialista.DataSource = Consultar("SELECT * FROM Medico WHERE IdEspecialidad=" + IdEspecialidad);
            dropEspecialista.DataTextField = "Nombre";
            dropEspecialista.DataValueField = "IdMedico";
            dropEspecialista.DataBind();
            dropEspecialista.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
        }


        public DataSet Consultar(string strSQL)
        {
            string strconn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }



        protected void btnRegistrarCita_Click(object sender, EventArgs e)
        {
            clEntidadCita objECita = new clEntidadCita();
            objECita.Documento = TxtNombre.Text;
            objECita.FechaHIngreso = DateTime.Parse(TxtFecha.Text);
            objECita.IdMedico = int.Parse(dropEspecialista.SelectedValue.ToString());
            //objECita.IdPaciente = int.Parse(TxtNombre.Text);
            objECita.IdEspecialidad = int.Parse(dropEspecialidad.SelectedValue.ToString());
            clCita objCita = new clCita();
            int result = objCita.mtdRegistrarCita(objECita);

        }
    }
}
