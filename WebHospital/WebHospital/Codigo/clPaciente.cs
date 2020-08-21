using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clPaciente
    {
        public int mtdRegistrar(clEntidadPaciente objPaciente)
        {
            string sqlInsert = "INSERT INTO Usuario(Nombre,Apellido,Documento,email,Direccion,Telefono,FechaNacimiento,Password,Genero,IdRol)" +
                "values('" + objPaciente.Nombre + "','" + objPaciente.Apellido + "''" + objPaciente.Documento + "'" +
                "'" + objPaciente.email + "','" + objPaciente.Direccion + "','" + objPaciente.Telefono + "'" +
                "" + objPaciente.FechaNacimiento + ",'" + objPaciente.Password + "','" + objPaciente.Genero + "'," + objPaciente.IdEps + ")";



            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return 4;



        }
        public List<clEntidadPaciente> mtdListar()
        {
            string sql = "select * from Paciente";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblPaciente = new DataTable();
            tblPaciente = objSQL.mtdDesconectado(sql);

            List<clEntidadPaciente> listaPaciente = new List<clEntidadPaciente>();

            for (int i = 0; i < tblPaciente.Rows.Count; i++)
            {
                clEntidadPaciente objEPaciente = new clEntidadPaciente();
                objEPaciente.IdPaciente = int.Parse(tblPaciente.Rows[i][0].ToString());
                objEPaciente.Nombre = tblPaciente.Rows[i][1].ToString();
                objEPaciente.Apellido = tblPaciente.Rows[i][2].ToString();
                objEPaciente.Documento = tblPaciente.Rows[i][3].ToString();
                objEPaciente.email = tblPaciente.Rows[i][4].ToString();
                objEPaciente.Direccion = tblPaciente.Rows[i][5].ToString();
                objEPaciente.Telefono = tblPaciente.Rows[i][6].ToString();
               // objEPaciente.FechaNacimiento = tblPaciente.Rows[i][7].ToString();
                objEPaciente.Password = tblPaciente.Rows[i][8].ToString();
                objEPaciente.Genero = tblPaciente.Rows[i][9].ToString();
                //objEPaciente.IdEps =int.Parse(tblPaciente.Rows[i][10].ToString());
                listaPaciente.Add(objEPaciente);

            }
            return listaPaciente;

        }
    }
}