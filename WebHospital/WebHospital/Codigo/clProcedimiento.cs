using System;
using System.Collections.Generic;
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




    }
}