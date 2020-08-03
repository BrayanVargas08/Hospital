using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clLogin
    {
        //En este metodo se validan los datos para el inicio de sesión de Administrador, Secretaria y jefé de enfermeria
        public List<clEntidadPersonalAdministrativo> mtdIngresoAdministrativo(clEntidadPersonalAdministrativo objEAdministrativo)
        {
            string cosulta = "select Nombre,Apellido,Rol from PersonalAdministrativo " +
            "inner join Rol on PersonalAdministrativo.IdRol=Rol.IdRol " +
            "where email='" + objEAdministrativo.email + "' and Password = '" + objEAdministrativo.password + "' ";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblDatos = new DataTable();
            tblDatos = objSQL.mtdDesconectado(cosulta);
            List<clEntidadPersonalAdministrativo> DatosEncontrados = new List<clEntidadPersonalAdministrativo>();

            for (int i = 0; i < tblDatos.Rows.Count; i++)
            {
                objEAdministrativo.Nombre = tblDatos.Rows[i][0].ToString();
                objEAdministrativo.Apellido = tblDatos.Rows[i][1].ToString();
                objEAdministrativo.Rol = tblDatos.Rows[i][2].ToString();
                DatosEncontrados.Add(objEAdministrativo);

            }

            return DatosEncontrados;

        }
    }
}