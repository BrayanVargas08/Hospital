using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clMedico
    {
        public int mtdRegistrar(clEntidadMedico objPaciente)
        {
            string sqlInsert = "INSERT INTO Medico(Nombre,Apellido,Documento,Telefono,email,Direccion,FechaNacimiento,Password,IdEspecialidad)" +
                "values('" + objPaciente.Nombre + "','" + objPaciente.Apellido + "','" + objPaciente.Documento + "','" + objPaciente.Telefono + "','" + objPaciente.email + "','" + objPaciente.Direccion + "','" + objPaciente.FechaNacimiento + "','" + objPaciente.Password + "','" + objPaciente.IdEspecialidad + "')";


            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;



        }
        public List<clEntidadMedico> mtdListar(int IdEspecialidad)
        {
            string sql = "select * from Medico Where IdEspecialidad = '" + IdEspecialidad + "'";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblMedico = new DataTable();
            tblMedico = objSQL.mtdDesconectado(sql);

            List<clEntidadMedico> listaMedico = new List<clEntidadMedico>();

            for (int i = 0; i < tblMedico.Rows.Count; i++)
            {
                clEntidadMedico objEnMedico = new clEntidadMedico();
                objEnMedico.IdMedico = int.Parse(tblMedico.Rows[i][0].ToString());
                objEnMedico.Nombre = tblMedico.Rows[i][1].ToString();
                objEnMedico.Apellido = tblMedico.Rows[i][2].ToString();
                objEnMedico.Documento = tblMedico.Rows[i][3].ToString();
                objEnMedico.Telefono = tblMedico.Rows[i][4].ToString();
                objEnMedico.email = tblMedico.Rows[i][5].ToString();
                objEnMedico.Direccion = tblMedico.Rows[i][6].ToString();
                objEnMedico.IdEspecialidad = IdEspecialidad;
                listaMedico.Add(objEnMedico);

            }
            return listaMedico;

        }
    }
}