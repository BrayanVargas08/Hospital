using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clProcesoGeneral
    {
        public int mtdRegistrar(clEntidadProcesoGeneral objProceso)
        {
            //Aca vamos a tomar el id del paciente
            clAdminSQL objSQL = new clAdminSQL();
            string TomarId = "SELECT IdPaciente from Paciente Where Documento='" + objProceso.Documento +  "'";
            DataTable tblpaciente = new DataTable();
            tblpaciente = objSQL.mtdDesconectado(TomarId);
            int IdPaciente = int.Parse(tblpaciente.Rows[0][0].ToString());

            string sqlInsert = "INSERT INTO ProcesoGeneral(Diagnostico,Valoracion,IdPaciente,IdMedico)" +
                "values('" + objProceso.Diagnostico + "','" + objProceso.Valoracion + "','" + IdPaciente + "','" + objProceso.IdMedico + "')";


            int result = objSQL.mtdConectado(sqlInsert);
            return result;
             //holaaaaa


        }
        public List<clEntidadProcesoGeneral> mtdListar()
        {
            string sql = "select * from ProcesoGeneral";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblProceso = new DataTable();
            tblProceso = objSQL.mtdDesconectado(sql);

            List<clEntidadProcesoGeneral> listaProceso = new List<clEntidadProcesoGeneral>();

            for (int i = 0; i < tblProceso.Rows.Count; i++)
            {
                clEntidadProcesoGeneral objEProceso = new clEntidadProcesoGeneral();
                objEProceso.IdProcesoGeneral = int.Parse(tblProceso.Rows[i][0].ToString());
                objEProceso.Diagnostico = tblProceso.Rows[i][1].ToString();
                objEProceso.Valoracion = tblProceso.Rows[i][2].ToString();
                objEProceso.IdPaciente = int.Parse(tblProceso.Rows[i][3].ToString());
                objEProceso.IdMedico = int.Parse(tblProceso.Rows[i][4].ToString());
                listaProceso.Add(objEProceso);

            }
            return listaProceso;

        }

    }
}