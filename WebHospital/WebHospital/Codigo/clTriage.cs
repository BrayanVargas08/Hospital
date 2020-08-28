using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clTriage { 


        public List<clEntidadTriage> mtdListar()
         {
            string sql = "select * from Triage";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblTriage = new DataTable();
            tblTriage = objSQL.mtdDesconectado(sql);

            List<clEntidadTriage> listatrage = new List<clEntidadTriage>();

            for (int i = 0 ;i < tblTriage.Rows.Count; i++)
            {
                clEntidadTriage objETrige = new clEntidadTriage();
                objETrige.idTriage = int.Parse(tblTriage.Rows[i][0].ToString());
                objETrige.nivel = tblTriage.Rows[i][1].ToString();
                objETrige.descripcion = tblTriage.Rows[i][2].ToString();
                listatrage.Add(objETrige); 

            }
            return listatrage;

        }

        
    }
}