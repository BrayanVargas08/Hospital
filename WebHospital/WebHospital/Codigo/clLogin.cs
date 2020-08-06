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
        clAdminSQL objSQL = new clAdminSQL();
        //En este metodo se validan los datos para el inicio de sesión del personal Administrativo.
        public List<clEntidadPersonalAdministrativo> mtdIngresoAdministrativo(clEntidadPersonalAdministrativo objEPersonalAdmin)
        {

            string cosulta = "select Nombre,Apellido,Rol from PersonalAdministrativo " +
            "inner join Rol on PersonalAdministrativo.IdRol=Rol.IdRol " +
            "where email='" + objEPersonalAdmin.email + "' and Password = '" + objEPersonalAdmin.Password + "' ";
            
            DataTable tblDatos = new DataTable();
            tblDatos = objSQL.mtdDesconectado(cosulta);
            List<clEntidadPersonalAdministrativo> DatosEncontradosAdmin = new List<clEntidadPersonalAdministrativo>();

                objEPersonalAdmin.Nombre = tblDatos.Rows[0][0].ToString();
                objEPersonalAdmin.Apellido = tblDatos.Rows[0][1].ToString();
                objEPersonalAdmin.Rol = tblDatos.Rows[0][2].ToString();
                DatosEncontradosAdmin.Add(objEPersonalAdmin);

           

            return DatosEncontradosAdmin;

        }

        //En este metodo se validan los datos para el inicio de sesión de los pacientes registrados en el Hospital.
        public List<clEntidadPaciente> mtdValidarDatosPaciente(clEntidadPaciente objEPaciente)
        {
            string cosulta = "Select Nombre,Apellido From Paciente " +
                "Where email='" + objEPaciente.email + "' AND Password = '" + objEPaciente.Password + "'";
            DataTable tblDatos = new DataTable();
            tblDatos = objSQL.mtdDesconectado(cosulta);
            List<clEntidadPaciente> DatosEncontradosPaciente = new List<clEntidadPaciente>();

            objEPaciente.Nombre = tblDatos.Rows[0][0].ToString();
            objEPaciente.Apellido = tblDatos.Rows[0][1].ToString();
            DatosEncontradosPaciente.Add(objEPaciente);

            return DatosEncontradosPaciente;
        }
    }
}