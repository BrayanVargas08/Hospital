using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
           // clEntidadHopitalizacion objEAmbulancias = new clEntidadHopitalizacion();
             //objEAmbulancias.codigo = txtCodigo.Text;
            // objEAmbulancias.Placa = TxtPlaca.Text;
            //  objEAmbulancias.Conductor = TxtConductor.Text;
            //  objEAmbulancias.Estado = RdbEstado.SelectedValue.ToString();



              //clAmbulancia objAmbu = new clAmbulancia();
            // int resultSql = objAmbu.mtdRegistrar(objEAmbulancias);
        }
    }
}