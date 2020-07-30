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
            string sqlInsert = "INSERT INTO Usuario(Nombre,Apellido,Documento,Usuario,Cntraseña,Genero)" +
                "values('"+objUsuario.Nombre+ "','" + objUsuario.Apellido + "''" + objUsuario.Documento + "'" +
                "'" + objUsuario.Usuario + "','" + objUsuario.Contraseña + "','" + objUsuario.Genero + "')";
        }
    }
}