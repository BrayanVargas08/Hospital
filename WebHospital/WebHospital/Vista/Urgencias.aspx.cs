using System;
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
            //
           // List<clEntidadPaciente> ListaEPaciente = new List<clEntidadPaciente>();
            //clPaciente objPaciente = new clPaciente();
            //ListaEPaciente = objPaciente.mtdListar();
            //cmbpaciente.DataSource = ListaEPaciente;
            //cmbpaciente.DataTextField = "Nombre";
            //cmbpaciente.DataValueField = "IdPaciente";
            //cmbpaciente.DataBind();
            //
            List<clEntidadMedico> ListaEMedico = new List<clEntidadMedico>();
            clMedico objMedico = new clMedico();
            ListaEMedico = objMedico.mtdListar();
            cmbMedico.DataSource = ListaEMedico;
            cmbMedico.DataTextField = "Nombre";
            cmbMedico.DataValueField = "IdMedico";
            cmbMedico.DataBind();


        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadUrgencias objEUrgencias = new clEntidadUrgencias();
            objEUrgencias.FechaHIngreso = DateTime.Parse(txtfechaingreso.Text);
            objEUrgencias.FechaHSalida = DateTime.Parse(txtfechaingreso.Text);
            objEUrgencias.Motivo = Textmotivo.Text;
            objEUrgencias.Descripcion = Textdescripcion.Text;
            objEUrgencias.IdTriage = int.Parse(cmdtriage.SelectedValue.ToString());
            int idTri = int.Parse(cmdtriage.SelectedValue.ToString());
            objEUrgencias.Idpaciente = int.Parse(TxtPaciente.ToString());
            objEUrgencias.Idmedico = int.Parse(cmbMedico.SelectedValue.ToString());
            int idMe = int.Parse(cmbMedico.SelectedValue.ToString());


            clUgencias objUrgencia = new clUgencias();
            int resultSql = objUrgencia.mtdRegistrar(objEUrgencias);


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
    