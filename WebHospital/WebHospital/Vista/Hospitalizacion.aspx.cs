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


        protected void btnRegistroHospitalizacion_Click(object sender, EventArgs e)
        {
            clEntidadHopitalizacion objEHospitalizacion = new clEntidadHopitalizacion();
            objEHospitalizacion.FechaHIngreso = DateTime.Parse(txtFechaHingreso.Text);
            objEHospitalizacion.FechaHSalida = DateTime.Parse(txtFechaHSalida.Text);
            objEHospitalizacion.Motivo = TxtMotivo.Text;
            objEHospitalizacion.Descripcion = TxtDescripcion.Text;
            objEHospitalizacion.Observaciones = TxtObservaciones.Text;
            objEHospitalizacion.Idpaciente = int.Parse(TxtPaciente.Text);
            objEHospitalizacion.IdUrgencia = int.Parse(txturgencia.Text);




            clHospitalizacion objHospitalizacion = new clHospitalizacion();
            int resultSql = objHospitalizacion.mtdRegistrar(objEHospitalizacion);
        }

      
        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {
            TxtPaciente.Text = GridView1.SelectedRow.Cells[6].Text;
            txturgencia.Text = GridView1.SelectedRow.Cells[0].Text;
        }
    }
}