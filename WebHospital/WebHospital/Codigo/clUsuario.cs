using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class clUsuario
    {
        public int mtdRegistrar(ClEntidadUsuario objUsuario)
        {
            string sqlInsert = "INSERT INTO Usuario(Nombre,Apellido,Documento,Usuario,Contraseña,Genero,IdEps,IdRol)" +
                "values('" + objUsuario.Nombre + "','" + objUsuario.Apellido + "''" + objUsuario.Documento + "'" +
                "'" + objUsuario.Usuario + "','" + objUsuario.Contraseña + "','" + objUsuario.Genero + "'" +
                "" + objUsuario.IdEps + "," + objUsuario.IdRol + ")";



            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }
    }
}