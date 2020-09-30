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
    public partial class Medicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<clEntidadProcesoGeneral> ListaProceso = new List<clEntidadProcesoGeneral>();
            clProcesoGeneral objProceso = new clProcesoGeneral();
            ListaProceso = objProceso.mtdListar();
            cmdProcesoGeneral.DataSource = ListaProceso;
            cmdProcesoGeneral.DataTextField = "Diagnostico";
            cmdProcesoGeneral.DataValueField = "IdProcesoGeneral";
            cmdProcesoGeneral.DataBind();

            List<clEntidadProcedimiento> ListaProcedimiento = new List<clEntidadProcedimiento>();
            clProcedimiento objProcedimiento = new clProcedimiento();
            ListaProcedimiento = objProcedimiento.mtdListar();
            cmbProcedimiento.DataSource = ListaProcedimiento;
            cmbProcedimiento.DataTextField = "Descripcion";
            cmbProcedimiento.DataValueField = "IdProcedimiento";
            cmbProcedimiento.DataBind();

            List<clEntidadMedicamento> ListaMedicamento = new List<clEntidadMedicamento>();
            clMedicamento objMedicamento = new clMedicamento();
            ListaMedicamento = objMedicamento.mtdListar();
            cmbMedicamento.DataSource = ListaMedicamento;
            cmbMedicamento.DataTextField = "Nombre";
            cmbMedicamento.DataValueField = "IdMedicamento";
            cmbMedicamento.DataBind();
        }

        protected void btnRegistroMedicacion_Click(object sender, EventArgs e)
        {
            clEntidadMedicacion objEProcedimiento = new clEntidadMedicacion();
            objEProcedimiento.HoraMedicacion = txtHoraMedicacion.Text;
            objEProcedimiento.Cantidad = txtCantidad.Text;
            objEProcedimiento.MetodoAplicacion = txtMetodoAplicacion.Text;
            objEProcedimiento.IdProcesoGeneral = int.Parse(cmdProcesoGeneral.SelectedValue.ToString());
            objEProcedimiento.IdMedicamento = int.Parse(cmbMedicamento.Text);
            objEProcedimiento.IdProcedimiento = int.Parse(cmbProcedimiento.SelectedValue.ToString());
            objEProcedimiento.Nombre = txtPaciente.Text;


            clMedicacion objMedicacion = new clMedicacion();
            int resultSql = objMedicacion.mtdRegistrar(objEProcedimiento);

            Response.Write("<script>alert('Medicacion Registrada');</script>");

            this.txtHoraMedicacion.Text = "";
            this.txtCantidad.Text = "";
            this.txtMetodoAplicacion.Text = "";
            this.txtPaciente.Text = "";
        }

     

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPaciente.Text = GridView2.SelectedRow.Cells[1].Text;
        }
    }
}