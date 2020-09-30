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
    public partial class Hospitalizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        
       

        protected void btnRegistroHospitalizacion_Click(object sender, EventArgs e)
        {
            clEntidadHopitalizacion objEHospitalizacion = new clEntidadHopitalizacion();
            objEHospitalizacion.FechaHIngreso = DateTime.Parse(txtFechaHingreso.Text);
            objEHospitalizacion.FechaHSalida = DateTime.Parse(txtFechaHSalida.Text);
            objEHospitalizacion.Motivo = TxtMotivo.Text;
            objEHospitalizacion.Descripcion = TxtDescripcion.Text;
            objEHospitalizacion.Observaciones = TxtObservaciones.Text;
            objEHospitalizacion.Documento = TxtPaciente.Text;
            objEHospitalizacion.IdUrgencia = int.Parse(txturgencia.Text);

            clHospitalizacion objHospitalizacion = new clHospitalizacion();
            int resultSql = objHospitalizacion.mtdRegistrar(objEHospitalizacion);

            Response.Write("<script>alert('Hospitalizacion Registrada');</script>");

            this.txtFechaHingreso.Text = "";
            this.txtFechaHSalida.Text = "";
            this.TxtMotivo.Text = "";
            this.TxtObservaciones.Text = "";
            this.TxtDescripcion.Text = "";
            this.TxtPaciente.Text = "";
            this.txturgencia.Text = "";
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TxtPaciente.Text = GridView1.SelectedRow.Cells[8].Text;
            txturgencia.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}