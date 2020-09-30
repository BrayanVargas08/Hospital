using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Vista
{
    public partial class Procedimiento : System.Web.UI.Page
    {
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void butonBuscar_Click(object sender, EventArgs e)
        {
            //capturamos nuestro datapter
            try
            {
                //declaramos nuestro 
                SqlDataAdapter da = new SqlDataAdapter("select * from Paciente where Documento like '" + txtbuscar.Text + "%'", conn);
                //contenerdor de datos
                DataTable dt = new DataTable();
                //llneaamos datatable
                da.Fill(dt);
                //agregamos al gribview
                this.gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }

            catch (Exception ex)
            {
                throw ex;
            }



        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clEntidadProcedimiento objEProcedimiento = new clEntidadProcedimiento();
            objEProcedimiento.Descripcion = txtDescripcion.Text;
            objEProcedimiento.Observaciones = txtObservaciones.Text;
            objEProcedimiento.FechaHProcedimiento = DateTime.Parse(txtfechaproceso.Text);
            objEProcedimiento.IdHospitalizacion = int.Parse(txtHospitalizacion.Text);


            clProcedimiento objProcedimiento = new clProcedimiento();
            int resultSql = objProcedimiento.mtdRegistrar(objEProcedimiento);

            Response.Write("<script>alert('Procedimiento Registrado');</script>");

            this.txtDescripcion.Text = "";
            this.txtObservaciones.Text = "";
            this.txtfechaproceso.Text = "";
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtHospitalizacion.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}