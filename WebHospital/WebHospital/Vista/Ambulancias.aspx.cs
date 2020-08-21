using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebHospital.Vista
{
    public partial class Ambulancias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     
        }

        protected void btnRegistrarAmb_Click(object sender, EventArgs e)
        {

            clEntidadAmbulancias objEAmbulancias = new clEntidadAmbulancias();
            objEAmbulancias.codigo = txtCodigo.Text;
            objEAmbulancias.Placa = TxtPlaca.Text;
            objEAmbulancias.Conductor = TxtConductor.Text;
            objEAmbulancias.Estado = RdbEstado.SelectedValue.ToString();
           


            clAmbulancia objAmbu = new clAmbulancia();
            int resultSql = objAmbu.mtdRegistrar(objEAmbulancias);


        }
    }
}