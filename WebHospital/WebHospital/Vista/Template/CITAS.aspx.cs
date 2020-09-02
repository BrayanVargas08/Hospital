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



namespace WebHospital.Vista.Template
{
    public partial class WebForm1 : System.Web.UI.Page
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
            objECita.FechaHIngreso = DateTime.Parse(txtF.Text);
            objECita.IdMedico = int.Parse(dropEspecialista.SelectedValue.ToString());
            objECita.IdEspecialidad = int.Parse(dropEspecialidad.SelectedValue.ToString());
            clCita objCita = new clCita();
            int result = objCita.mtdRegistrarCita(objECita);

        }
    }
}
