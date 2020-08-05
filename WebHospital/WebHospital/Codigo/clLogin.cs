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
        public List<clEntidadPersonalAdministrativo> mtdIngresoAdministrativo(clEntidadPersonalAdministrativo objEPersonalAdmin)
        {
            string cosulta = "select Nombre,Apellido,Rol from PersonalAdministrativo " +
            "inner join Rol on PersonalAdministrativo.IdRol=Rol.IdRol " +
            "where email='" + objEPersonalAdmin.email + "' and Password = '" + objEPersonalAdmin.Password + "' ";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblDatos = new DataTable();
            tblDatos = objSQL.mtdDesconectado(cosulta);
            List<clEntidadPersonalAdministrativo> DatosEncontrados = new List<clEntidadPersonalAdministrativo>();

            for (int i = 0; i < tblDatos.Rows.Count; i++)
            {
                objEPersonalAdmin.Nombre = tblDatos.Rows[i][0].ToString();
                objEPersonalAdmin.Apellido = tblDatos.Rows[i][1].ToString();
                objEPersonalAdmin.Rol = tblDatos.Rows[i][2].ToString();
                DatosEncontrados.Add(objEPersonalAdmin);

            }

            return DatosEncontrados;
        }
    }
}