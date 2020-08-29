using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clCita
    {
        public int mtdRegistrarCita(clEntidadCita objCita)
        {
            //Aca vamos a tomar el id del paciente
            clAdminSQL objSQL = new clAdminSQL();
            string TomarId = "SELECT IdPaciente from Paciente Where Documento='" + objCita.Documento + "'";
            DataTable tblpaciente = new DataTable();
            tblpaciente = objSQL.mtdDesconectado(TomarId);
            int IdPaciente = int.Parse(tblpaciente.Rows[0][0].ToString());

            string sqlInsert = "INSERT INTO CitaMedica(FechaHIngreso,Estado,IdMedico,IdPaciente,IdEspecialidad)" +
                "values('" + objCita.FechaHIngreso + "',Activo,'" + objCita.IdMedico + "'," +
                "'" + IdPaciente + "','" + objCita.IdEspecialidad + "' )";
            int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }
    }
}
