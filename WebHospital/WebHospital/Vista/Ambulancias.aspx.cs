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
        string connnectionstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }
        }
        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connnectionstring))
            {
                sqlcon.Open();
                SqlDataAdapter sqlda = new SqlDataAdapter("SELECT * FROM Ambulancia", sqlcon);
                sqlda.Fill(dtbl);

            }
            if (dtbl.Rows.Count > 0)
            {
                Gvambualncias.DataSource = dtbl;
                Gvambualncias.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                Gvambualncias.DataSource = dtbl;
                Gvambualncias.DataBind();
                Gvambualncias.Rows[0].Cells.Clear();
                Gvambualncias.Rows[0].Cells.Add(new TableCell());
                Gvambualncias.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                Gvambualncias.Rows[0].Cells[0].Text = "No data found..!";
                Gvambualncias.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
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

        protected void Gvambualncias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlcon = new SqlConnection(connnectionstring))
                    {
                        sqlcon.Open();
                        string query = "INSERT INTO Ambulancia(Codigo, Placa, Coductor,Estado)VALUES (@Codigo, @Placa, @Coductor, @Estado) ";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                        sqlCmd.Parameters.AddWithValue("@Codigo", (Gvambualncias.FooterRow.FindControl("txtCodigo") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Placa", (Gvambualncias.FooterRow.FindControl("txtPlaca") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Coductor", (Gvambualncias.FooterRow.FindControl("txtCoductor") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Estado", (Gvambualncias.FooterRow.FindControl("txtEstado") as TextBox).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSussessMensage.Text = "new record added";
                        lblErrorMensage.Text = "";

                    }

                }
            }


            catch (Exception ex)
            {

                lblSussessMensage.Text = "";
                lblErrorMensage.Text = ex.Message;

            }
        }

        protected void Gvambualncias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Gvambualncias.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void Gvambualncias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Gvambualncias.EditIndex = -1;
            PopulateGridview();
        }

        protected void Gvambualncias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                using (SqlConnection sqlcon = new SqlConnection(connnectionstring))
                {
                    sqlcon.Open();
                    string query = "UPDATE Ambulancia SET Codigo=@Codigo, Placa=@Placa, Coductor=@Coductor,Estado=@Estado WHERE IdAmbulancia=@id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                    sqlCmd.Parameters.AddWithValue("@Codigo", (Gvambualncias.Rows[e.RowIndex].FindControl("txtCodigo") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Placa", (Gvambualncias.Rows[e.RowIndex].FindControl("txtPlaca") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Coductor", (Gvambualncias.Rows[e.RowIndex].FindControl("txtCoductor") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Estado", (Gvambualncias.Rows[e.RowIndex].FindControl("txtEstado") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Gvambualncias.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    Gvambualncias.EditIndex = -1;
                    PopulateGridview();
                    lblSussessMensage.Text = "selected record added";
                    lblErrorMensage.Text = "";

                }

            }


            catch (Exception ex)
            {

                lblSussessMensage.Text = "";
                lblErrorMensage.Text = ex.Message;

            }
        }

        protected void Gvambualncias_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            Gvambualncias.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }
    }
}