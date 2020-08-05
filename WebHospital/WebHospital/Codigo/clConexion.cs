using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebHospital.Codigo
{


    public class clConexion
    {
        SqlConnection conexDB = null;

        public SqlConnection mtdConexion()
        {
            string cadena = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\dbHospitalPaz2.mdf;Integrated Security=True";
            try
            {
                conexDB = new SqlConnection(cadena);
            }
            catch (Exception error)
            {
                string err = error.Message;
                HttpContext.Current.Response.Redirect("404.html", true);
                conexDB = null;

            }
            return conexDB;
        }
    }
}