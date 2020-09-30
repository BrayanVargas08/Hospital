using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clProcedimiento
    {
        public int mtdRegistrar(clEntidadProcedimiento objProcedimiento)
        {
            string sqlInsert = "INSERT INTO Procedimiento(Descripcion,Observaciones,FechaHProcedimiento,IdHospitalizacion)" +
               "values('" + objProcedimiento.Descripcion + "','" + objProcedimiento.Observaciones + "','" + objProcedimiento.FechaHProcedimiento + "','" + objProcedimiento.IdHospitalizacion + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;


        }
        public List<clEntidadProcedimiento> mtdListar()
        {
            string sql = "select * from Procedimiento";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblProcedimiento = new DataTable();
            tblProcedimiento = objSQL.mtdDesconectado(sql);

            List<clEntidadProcedimiento> listaProcedimiento = new List<clEntidadProcedimiento>();

            for (int i = 0; i < tblProcedimiento.Rows.Count; i++)
            {
                clEntidadProcedimiento objEProceso = new clEntidadProcedimiento();
                objEProceso.IdProcedimiento = int.Parse(tblProcedimiento.Rows[i][0].ToString());
                objEProceso.Descripcion = tblProcedimiento.Rows[i][1].ToString();
                objEProceso.Observaciones = tblProcedimiento.Rows[i][2].ToString();
                objEProceso.FechaHProcedimiento = DateTime.Parse(tblProcedimiento.Rows[i][3].ToString());
                objEProceso.IdHospitalizacion = int.Parse(tblProcedimiento.Rows[i][4].ToString());
                listaProcedimiento.Add(objEProceso);

            }
            return listaProcedimiento;

        }




    }
}