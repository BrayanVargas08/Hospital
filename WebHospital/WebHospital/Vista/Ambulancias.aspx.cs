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
            using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Ambulancia", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvPhoneBook.DataSource = dtbl;
                gvPhoneBook.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvPhoneBook.DataSource = dtbl;
                gvPhoneBook.DataBind();
                gvPhoneBook.Rows[0].Cells.Clear();
                gvPhoneBook.Rows[0].Cells.Add(new TableCell());
                gvPhoneBook.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvPhoneBook.Rows[0].Cells[0].Text = "Datos No Encontrados ..!";
                gvPhoneBook.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void gvPhoneBook_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Ambulancia (Codigo,Placa,Coductor,Estado) VALUES (@Codigo,@Placa,@Coductor,@Estado)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Codigo", (gvPhoneBook.FooterRow.FindControl("txtCodigoFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Placa", (gvPhoneBook.FooterRow.FindControl("txtPlacaFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Coductor", (gvPhoneBook.FooterRow.FindControl("txtCoductorFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Estado", (gvPhoneBook.FooterRow.FindControl("txtEstadoFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "Nuevo Registro Agregado";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvPhoneBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPhoneBook.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvPhoneBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPhoneBook.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvPhoneBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
                {
                    sqlCon.Open();
                    string query = "UPDATE Ambulancia SET Codigo=@Codigo,Placa=@Placa,Coductor=@Coductor,Estado=@Estado WHERE IdAmbulancia = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Codigo", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtCodigo") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Placa", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtPlaca") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Coductor", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtCoductor") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Estado", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtEstado") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvPhoneBook.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Registro Seleccionado Actualizado";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvPhoneBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Ambulancia WHERE IdAmbulancia = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Registro Seleccionado Eliminado";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}