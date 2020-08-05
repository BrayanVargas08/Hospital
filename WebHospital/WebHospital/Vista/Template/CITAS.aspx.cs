//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace WebHospital.Vista.Template
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                IniciarllenadodeDropDown();

//            }


//        }
//        private void IniciarllenadodeDropDown () {

//            dropEspecialidad.DataSource = Consultar("SELECT * FROM Especialidad");
//            dropEspecialidad.DataTextField = "Especialidad";
//            dropEspecialidad.DataValueField="IdEspecialidad";
//            dropEspecialidad.DataBind();
//            dropEspecialidad.Items.Insert(0,new ListItem ("[SELECCIONAR]","0"));
//            dropEspecialista.Items.Insert(0, new ListItem("[SELECCIONAR]", "0"));
//        }

//        protected void EspecialidadSeleccionada(object sender, EventArgs e)
//        {
//            int IdEspecialidad = Convert.ToInt32(dropEspecialidad.SelectedValue);
//            dropEspecialista.DataSource = Consultar("SELECT * FROM Medico WHERE IdEspecialidad=" + IdEspecialidad);
//            dropEspecialista.DataTextField = "Medico";
//            dropEspecialista.DataValueField = "IdMedico";
//            dropEspecialista.DataBind();
//            dropEspecialista.Items.Insert(0, new ListItem("[SELECCIONAR]", "0"));



//        }
//        public DataSet Consultar(string strSQL);{
//        string strconn "";
//        sqlConnection con = new sqlConnection(strconn);
//        con.Open();
//        SqlCommand cmd = new SqlCommand(strSQL, con);
//        SqlDataAdapter da = new SqlDataAdapter(cmd);
//        DataSet ds = new DataSet();
//        da.Fill(ds);
//        con.Close();
//        return ds;
//    }
//}

