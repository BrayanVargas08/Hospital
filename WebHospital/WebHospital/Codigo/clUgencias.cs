using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clUgencias
    {

        public int mtdRegistrar(clEntidadUrgencias objUrgencias)
        {

            string sqlInsert = "INSERT INTO Urgencia(FechaHIngreso,FechaHSalida,Motivo,Descripcion,IdTriage,IdPaciente,IdMedico)" +
               "values('" + objUrgencias.FechaHIngreso + "','" + objUrgencias.FechaHSalida + "','" + objUrgencias.Motivo + "','" + objUrgencias.Descripcion + "','" + objUrgencias.IdTriage + "','" + objUrgencias.Idpaciente + "','" + objUrgencias.Idmedico + "')";

            clAdminSQL objSQL = new clAdminSQL();
           int  result= objSQL.mtdConectado(sqlInsert);
            return result;

           
        }


    }
}
