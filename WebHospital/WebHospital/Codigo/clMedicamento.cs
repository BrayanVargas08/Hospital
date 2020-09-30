using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clMedicamento
    {
        public int mtdRegistrar(clEntidadMedicamento objMedicamento)
        {
            //Aca vamos a tomar el id del paciente
            clAdminSQL objSQL = new clAdminSQL();
            string TomarId = "SELECT IdMedicamento from Medicamento Where Nombre='" + objMedicamento.Nombre + "'";
            DataTable tblpaciente = new DataTable();
            tblpaciente = objSQL.mtdDesconectado(TomarId);
            int IdPaciente = int.Parse(tblpaciente.Rows[0][0].ToString());


            string sqlInsert = "INSERT INTO Medicamento(Nombre,Descripcion,Stock)" +
               "values('" + objMedicamento.Nombre + "','" + objMedicamento.Descripcion + "','" + objMedicamento.Stock + "')";

            int result = objSQL.mtdConectado(sqlInsert);
            return result;


        }
        public List<clEntidadMedicamento> mtdListar()
        {
            string sql = "select * from Medicamento";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblMedicamento = new DataTable();
            tblMedicamento = objSQL.mtdDesconectado(sql);

            List<clEntidadMedicamento> listaMedicamento = new List<clEntidadMedicamento>();

            for (int i = 0; i < tblMedicamento.Rows.Count; i++)
            {
                clEntidadMedicamento objEMedicamento = new clEntidadMedicamento();
                objEMedicamento.IdMedicamento = int.Parse(tblMedicamento.Rows[i][0].ToString());
                objEMedicamento.Nombre = tblMedicamento.Rows[i][1].ToString();
                objEMedicamento.Descripcion = tblMedicamento.Rows[i][2].ToString();
                objEMedicamento.Stock = int.Parse(tblMedicamento.Rows[i][3].ToString());
                
                listaMedicamento.Add(objEMedicamento);

            }
            return listaMedicamento;

        }
    }
}