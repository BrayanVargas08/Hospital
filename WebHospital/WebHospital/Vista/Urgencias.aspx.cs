﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Vista
{
   
    public partial class Urgencias : System.Web.UI.Page
    {
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz.mdf;Integrated Security=True";

        protected void Page_Init(object sender, EventArgs e)
        {
            List<clEntidadTriage> ListaTrieges = new List<clEntidadTriage>();
            clTriage objTriege = new clTriage();
            ListaTrieges = objTriege.mtdListar();
            cmdtriage.DataSource = ListaTrieges;
            cmdtriage.DataTextField = "Tipo";
            cmdtriage.DataValueField = "IdTriage";
            cmdtriage.DataBind();
  ;


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<clEntidadEspecialidad> listaEspecialidad = new List<clEntidadEspecialidad>();
                clEspecialidad objEspecialidad = new clEspecialidad();
                listaEspecialidad = objEspecialidad.mtdListarEspecialidad();

                dropEspecialidad.DataSource = listaEspecialidad;
                dropEspecialidad.DataTextField = "Especialidad";
                dropEspecialidad.DataValueField = "IdEspecialidad";
                dropEspecialidad.DataBind();

            }

        }
        protected void EspecialidadSeleccionada(object sender, EventArgs e)
        {
            List<clEntidadMedico> listaMedicos = new List<clEntidadMedico>();
            clMedico objMedico = new clMedico();
            int IdEspecialista = int.Parse(dropEspecialidad.SelectedValue.ToString());
            listaMedicos = objMedico.mtdListar(IdEspecialista);

            dropEspecialista.DataSource = listaMedicos;
            dropEspecialista.DataTextField = "Nombre";
            dropEspecialista.DataValueField = "IdMedico";
            dropEspecialista.DataBind();
        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadUrgencias objEUrgencias = new clEntidadUrgencias();
            objEUrgencias.FechaHIngreso = DateTime.Parse(txtfechaingreso.Text);
            objEUrgencias.FechaHSalida = DateTime.Parse(txtfechasalida.Text);
            objEUrgencias.Motivo = Textmotivo.Text;
            objEUrgencias.Descripcion = Textdescripcion.Text;
            objEUrgencias.IdTriage = int.Parse(cmdtriage.SelectedValue.ToString());
            objEUrgencias.Documento = TxtPaciente.Text;
            objEUrgencias.IdMedico = int.Parse(dropEspecialista.SelectedValue.ToString());
            int idTri = int.Parse(cmdtriage.SelectedValue.ToString());
            int idMe = int.Parse(dropEspecialista.SelectedValue.ToString());

            
            clUgencias objUrgencia = new clUgencias();
            int resultSql = objUrgencia.mtdRegistrar(objEUrgencias);

            Response.Write("<script>alert('Urgencia Registrada');</script>");

            this.txtfechaingreso.Text = "";
            this.txtfechasalida.Text = "";
            this.Textmotivo.Text = "";
            this.Textdescripcion.Text = "";
            this.TxtPaciente.Text = "";


        }
        public void BuscarPaciente()
        {


        }

        protected void butonBuscar_Click(object sender, EventArgs e)
        {
            //capturamos nuestro datapter
            try
            {
                //declaramos nuestro 
                SqlDataAdapter da = new SqlDataAdapter("select * from Paciente where Documento like '" + txtbuscar.Text + "%'", conn);
                //contenerdor de datos
                DataTable dt = new DataTable();
                //llneaamos datatable
                da.Fill(dt);
                //agregamos al gribview
                this.gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
                this.txtbuscar.Text = "";
            }

            catch (Exception ex)
            {
                throw ex;
            }
           


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtPaciente.Text = GridView1.SelectedRow.Cells[3].Text;
        }
    }
}
    