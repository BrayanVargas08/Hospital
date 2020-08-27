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
        public List<clEntidadEps> mtdListar()
        {
            string sql = "select * from Eps";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblEps = new DataTable();
            tblEps = objSQL.mtdDesconectado(sql);

            List<clEntidadEps> listaEps = new List<clEntidadEps>();

            for (int i = 0; i < tblEps.Rows.Count; i++)
            {
                clEntidadEps objEPaciente = new clEntidadEps();
                objEPaciente.IdEps = int.Parse(tblEps.Rows[i][0].ToString());
                objEPaciente.Nombre = tblEps.Rows[i][1].ToString();
                objEPaciente.Ciudad = tblEps.Rows[i][2].ToString();
                listaEps.Add(objEPaciente);

            }
            return listaEps;
        }
    }
}