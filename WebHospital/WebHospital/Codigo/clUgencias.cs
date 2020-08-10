using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clUgencias
    {
        public int mtdRegistrar(clEntidadUrgencias objUrgencia)
        {
            string sqlInsert = "INSERT INTO Urgencia(FechaHIngreso,FechaHSalida,Motivo,Descripcion,IdTriage,IdPaciente,IdPaciente)" +
                "values('" + objUrgencia.FechaHIngreso + "','" + objUrgencia.FechaHSalida + "''" + objUrgencia.Motivo + "'" +
                "'" + objUrgencia.Descripcion + "','" + objUrgencia.IdTriage + "','" + objUrgencia.paciente + "'" +
                "" + objUrgencia.Idmedico + ")";



            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return 4;
        }
    }
}
