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

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
             // clEntidadAmbulancias objEAmbulancias = new clEntidadAmbulancias();
            // objEAmbulancias.codigo = txtCodigo.Text;
            // objEAmbulancias.Placa = TxtPlaca.Text;
           //  objEAmbulancias.Conductor = TxtConductor.Text;
           //  objEAmbulancias.Estado = RdbEstado.SelectedValue.ToString();



            //   clAmbulancia objAmbu = new clAmbulancia();
            // int resultSql = objAmbu.mtdRegistrar(objEAmbulancias);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtPaciente.Text = GridView2.SelectedRow.Cells[3].Text;
        }

        protected void btnRegistroHospitalizacion_Click(object sender, EventArgs e)
        {
            clEntidadHopitalizacion objEHospitalizacion = new clEntidadHopitalizacion();
            objEHospitalizacion.FechaHIngreso = DateTime.Parse(txtFechaHingreso.Text);
            objEHospitalizacion.FechaHSalida = DateTime.Parse(txtFechaHSalida.Text);
            objEHospitalizacion.Motivo = TxtMotivo.Text;
            objEHospitalizacion.Descripcion = TxtDescripcion.Text;
            objEHospitalizacion.Observaciones = TxtObservaciones.Text;
            objEHospitalizacion.IdPaciente = int.Parse(TxtPaciente.Text);
            objEHospitalizacion.IdUrgencia = int.Parse(txturgencia.Text);

            clHospitalizacion objHospitalizacion = new clHospitalizacion();
            int resultSql = objHospitalizacion.mtdRegistrar(objEHospitalizacion);

            Response.Write("<script>alert('Hospitalizacion Registrada');</script>");

            this.txtFechaHingreso.Text = "";
            this.txtFechaHSalida.Text = "";
            this.TxtMotivo.Text = "";
            this.TxtObservaciones.Text = "";
        }
    }
}