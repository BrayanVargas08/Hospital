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
            //Aca vamos a tomar el id del paciente
            clAdminSQL objSQL = new clAdminSQL();
            string TomarId = "SELECT IdPaciente from Paciente Where Documento='" + objUrgencias.Documento + "'";
            DataTable tblpaciente = new DataTable();
            tblpaciente = objSQL.mtdDesconectado(TomarId);
            int IdPaciente = int.Parse(tblpaciente.Rows[0][0].ToString());

            string sqlInsert = "INSERT INTO Urgencia(FechaHIngreso,FechaHSalida,Motivo,Descripcion,IdTriage,IdPaciente,IdMedico)" +
               "values('" + objUrgencias.FechaHIngreso + "','" + objUrgencias.FechaHSalida + "','" + objUrgencias.Motivo + "','" + objUrgencias.Descripcion + "','" + objUrgencias.IdTriage + "','" + IdPaciente + "','" + objUrgencias.IdMedico + "')";

            int result = objSQL.mtdConectado(sqlInsert);
            return result;


        }


    }
}
