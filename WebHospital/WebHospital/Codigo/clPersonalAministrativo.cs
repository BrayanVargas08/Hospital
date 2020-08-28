using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clPersonalAministrativo
    {

        public int mtdRegistroPersonalAdministrativo(clEntidadPersonalAdministrativo objEPersonalAdmin)
        {
            string sqlInsert = "Insert Into PersonalAdministrativo (Nombre,Apellido,Documento,Telefono,email,Direccion,Password,IdRol)" +
                "Values ('" + objEPersonalAdmin.Nombre + "','" + objEPersonalAdmin.Apellido + "','" + objEPersonalAdmin.Documento + "'," +
                "'" + objEPersonalAdmin.Telefono + "','" + objEPersonalAdmin.Direccion + "','" + objEPersonalAdmin.Password + "','" + objEPersonalAdmin.IdRol + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int Resultado = objSQL.mtdConectado(sqlInsert);

            return Resultado;
        }
    }
}