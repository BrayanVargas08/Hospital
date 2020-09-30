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
    public partial class IndexUsuarios : System.Web.UI.Page
    {
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
                DataBind();

            }

            string consulta = "SELECT CitaMedica.FechaHIngreso, CitaMedica.Estado, Medico.Nombre AS [Nombre Medico], Medico.Apellido AS [Apellido Medico], Paciente.Nombre AS [Nombre Paciente], Paciente.Apellido AS [Apellido Paciente], Paciente.Documento " +
                "FROM CitaMedica INNER JOIN Medico ON CitaMedica.IdMedico = Medico.IdMedico " +
                "INNER JOIN Paciente ON CitaMedica.IdPaciente = Paciente.IdPaciente " +
                "WHERE (Paciente.Documento = "+Session["documento"]+")";
            SqlDataSource1.SelectCommand = consulta;
            gvCitas.DataSourceID = "SqlDataSource1";


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

        protected void btnRegistrarCita_Click(object sender, EventArgs e)
        {
            clEntidadCita objECita = new clEntidadCita();
            objECita.Documento = TxtDocumento.Text;
            objECita.FechaHIngreso = txtF.Text;
            objECita.IdMedico = int.Parse(dropEspecialista.SelectedValue.ToString());
            objECita.IdEspecialidad = int.Parse(dropEspecialidad.SelectedValue.ToString());
            clCita objCita = new clCita();
            int result = objCita.mtdRegistrarCita(objECita);
            Response.Write("<script>alert('Cita Registrada');</script>");
        }
    }
}