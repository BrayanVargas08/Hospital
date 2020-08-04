using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class clPaciente
    {
        public int mtdRegistrar(clEntidadPaciente objPaciente)
        {
            string sqlInsert = "INSERT INTO Usuario(Nombre,Apellido,Documento,email,Direccion,Telefono,FechaNacimiento,Password,Genero,IdRol)" +
                "values('" + objPaciente.Nombre + "','" + objPaciente.Apellido + "''" + objPaciente.Documento + "'" +
                "'" + objPaciente.email + "','" + objPaciente.Direccion + "','" + objPaciente.Telefono + "'" +
                "" + objPaciente.FechaNacimiento + ",'" + objPaciente.Password + "','" + objPaciente.Genero+ "'," + objPaciente.IdEps + ")";



            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return 4;
        }
    }
}