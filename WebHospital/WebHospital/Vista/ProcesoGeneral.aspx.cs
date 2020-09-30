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
    public partial class ProcesoGeneral : System.Web.UI.Page
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
            clEntidadProcesoGeneral objEProceso = new clEntidadProcesoGeneral();
            objEProceso.Diagnostico = txtDiagnostico.Text;
            objEProceso.Valoracion = txtValoracion.Text;
            objEProceso.Documento = txtPaciente.Text;
            objEProceso.IdMedico = int.Parse(dropEspecialista.SelectedValue.ToString());

            clProcesoGeneral objProceso = new clProcesoGeneral();
            int resultSql = objProceso.mtdRegistrar(objEProceso);

            Response.Write("<script>alert('Proceso Registrado');</script>");

            this.txtDiagnostico.Text = "";
            this.txtValoracion.Text = "";
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtPaciente.Text = GridView1.SelectedRow.Cells[3].Text;
        }
    }
}