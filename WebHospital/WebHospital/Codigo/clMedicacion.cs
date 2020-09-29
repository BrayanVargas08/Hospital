using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clMedicacion
    {
        public int mtdRegistrar(clEntidadMedicacion objMedicacion)
        {

            string sqlInsert = "INSERT INTO Hospitalizacion(HoraMedicacion,Cantidad,MetodoAplicacion,IdProcesoGeneral,IdMedicamento,IdProcedimiento)" +
               "values('" + objMedicacion.HoraMedicacion + "','" + objMedicacion.Cantidad + "','" + objMedicacion.MetodoAplicacion + "','" + objMedicacion.IdProcesoGeneral + "','" + objMedicacion.IdMedicamento + "','" + objMedicacion.IdProcedimiento + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;


        }
        public List<clEntidadMedicacion> mtdListarMedicacion()
        {
            string sql = "select * from Medicacion";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblMedicacion = new DataTable();
            tblMedicacion = objSQL.mtdDesconectado(sql);

            List<clEntidadMedicacion> listaMedicacion = new List<clEntidadMedicacion>();

            for (int i = 0; i < tblMedicacion.Rows.Count; i++)
            {
                clEntidadMedicacion objMedicacion = new clEntidadMedicacion();
                objMedicacion.IdMedicacion = int.Parse(tblMedicacion.Rows[i][0].ToString());
                objMedicacion.HoraMedicacion = DateTime.Parse(tblMedicacion.Rows[i][1].ToString());
                objMedicacion.Cantidad = tblMedicacion.Rows[i][2].ToString();
                objMedicacion.MetodoAplicacion = tblMedicacion.Rows[i][3].ToString();
                objMedicacion.IdProcesoGeneral = int.Parse(tblMedicacion.Rows[i][4].ToString());
                objMedicacion.IdMedicamento = int.Parse(tblMedicacion.Rows[i][5].ToString());
                objMedicacion.IdProcedimiento = int.Parse(tblMedicacion.Rows[i][6].ToString());
               
                listaMedicacion.Add(objMedicacion);

            }
            return listaMedicacion;

        }
    }
}