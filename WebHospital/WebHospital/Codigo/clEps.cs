using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clEps
    {
        public int mtdRegistrarEps (clEntidadEps objEps)
        {
            string sqlInsert = "INSERT INTO Eps(Nombre,Ciudad)" +
              "values('"  + objEps.Nombre + "','" + objEps.Ciudad + "')";

        clAdminSQL objSQL = new clAdminSQL();
        int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }

        public List<clEntidadEps> mtdListar()
        {
            string sql = "select * from Eps";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblEps = new DataTable();
            tblEps = objSQL.mtdDesconectado(sql);

            List<clEntidadEps> listaEps = new List<clEntidadEps>();

            for (int i = 0; i < tblEps.Rows.Count; i++)
            {
                clEntidadEps objEEps = new clEntidadEps();
                objEEps.IdEps = int.Parse(tblEps.Rows[i][0].ToString());
                objEEps.Nombre = tblEps.Rows[i][1].ToString();
                objEEps.Ciudad = tblEps.Rows[i][2].ToString();
              
                listaEps.Add(objEEps);

            }
            return listaEps;

        }

    }
}