using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clTraslado
    {
        public int mtdRegistrar(clEntidadTraslado objTraslado)
        {
            string sqlInsert = "INSERT INTO Traslado(FechaHTraslado,Descripcion,Destino,IdAmbulancia,IdHospitalizacion)" +
               "values('" + objTraslado.FechaHtraslado + "','" + objTraslado.Descripcion + "','" + objTraslado.Destino + "','" + objTraslado.IdAmbulancia + "','" + objTraslado.IdHospitalizacion + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;

        }
        
        }
}