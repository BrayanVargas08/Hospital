using System;
using System.Collections.Generic;
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
    }
}