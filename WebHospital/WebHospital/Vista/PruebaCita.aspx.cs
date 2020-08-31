using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHospital.Vista
{
    public partial class PruebaCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarllenadodeDropDown();

            }


        }
        private void IniciarllenadodeDropDown()
        {

            dropEspecialidadP.DataSource = Consultar("SELECT * FROM Especialidad");
            dropEspecialidadP.DataTextField = "Especialidad";
            dropEspecialidadP.DataValueField = "IdEspecialidad";
            dropEspecialidadP.DataBind();
            dropEspecialidadP.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
            dropEspecialistaP.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
        }
        protected void EspecialidadSeleccionada(object sender, EventArgs e)
        {
            int IdEspecialidad = Convert.ToInt32(dropEspecialidadP.SelectedValue);
            dropEspecialistaP.DataSource = Consultar("SELECT * FROM Medico WHERE IdEspecialidad=" + IdEspecialidad);
            dropEspecialistaP.DataTextField = "Nombre";
            dropEspecialistaP.DataValueField = "IdMedico";
            dropEspecialistaP.DataBind();
            dropEspecialistaP.Items.Insert(0, new ListItem("[Seleccionar] ", "0"));
        }


        public DataSet Consultar(string strSQL)
        {
            string strconn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}