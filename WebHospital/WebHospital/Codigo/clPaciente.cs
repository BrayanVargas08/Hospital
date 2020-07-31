using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class clPaciente
    {
        public int mtdRegistrar(ClEntidadPaciente objUsuario)
        {
            string sqlInsert = "INSERT INTO Usuario(Nombre,Apellido,Documento,email" +
                ",Direccion,Telefono,FechaNacimiento,Password,Genero,IdEps)" +
                "values('" + objUsuario.Nombre + "','" + objUsuario.Apellido + "''" + objUsuario.Documento + "'" +
                "'" + objUsuario.email + "','" + objUsuario.Direccion + "','" + objUsuario.Telefono + "'" +
                "'" + objUsuario.FechaNacimiento + "','" + objUsuario.Password + "','" + objUsuario.Genero + "')";



            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }
    }
}