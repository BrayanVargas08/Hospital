using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;
using System.Globalization;

namespace WebHospital.Vista
{
    public partial class Ugencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            List<clEntidadTriage> ListaTrieges = new List<clEntidadTriage>();
            clTriage objTriege = new clTriage();
            ListaTrieges = objTriege.mtdListar();
            cmdtriage.DataSource = ListaTrieges;
            cmdtriage.DataTextField = "Nivel";
            cmdtriage.DataValueField = "IdTriage";
            cmdtriage.DataBind();
            //
            List<clEntidadPaciente> ListaEPaciente = new List<clEntidadPaciente>();
            clPaciente objPaciente = new clPaciente();
            ListaEPaciente = objPaciente.mtdListar();
            cmbpaciente.DataSource = ListaEPaciente;
            cmbpaciente.DataTextField = "Nombre";
            cmbpaciente.DataValueField = "IdPaciente";
            cmbpaciente.DataBind();
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
            objEUrgencias.FechaHIngreso = DateTime.Parse( txtfechaingreso.Text);
            objEUrgencias.FechaHSalida = DateTime.Parse( txtfechaingreso.Text);
            objEUrgencias.Motivo = Textmotivo.Text;
            objEUrgencias.Descripcion = Textdescripcion.Text;
            objEUrgencias.IdTriage = int.Parse(cmdtriage.SelectedValue.ToString());
            int idTri = int.Parse(cmdtriage.SelectedValue.ToString());
            objEUrgencias.Idpaciente = int.Parse(cmbpaciente.SelectedValue.ToString());
            int idPa = int.Parse(cmbpaciente.SelectedValue.ToString());
            objEUrgencias.Idmedico = int.Parse(cmbMedico.SelectedValue.ToString());
            int idMe = int.Parse(cmbMedico.SelectedValue.ToString());


            clUgencias objUrgencia = new clUgencias();
            int resultSql = objUrgencia.mtdRegistrar(objEUrgencias);


        }
    }
}