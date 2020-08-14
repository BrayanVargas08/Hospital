using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clMedico
    {
        public int mtdRegistroMedico(clEntidadMedico objEMedico)
        {
            string sqlInsert = "Insert into Medico (Nombre,Apellido,Documento,Telefono,email,Direccion,FechaNacimiento,Password,IdEspecialidad)" +
                "Values ('"+objEMedico.Nombre+"','"+objEMedico.Apellido+ "','" + objEMedico.Documento + "','" + objEMedico.Telefono + "'," +
                "'" + objEMedico.email + "','" + objEMedico.Direccion + "','" + objEMedico.FechaNacimiento + "','" + objEMedico.Password + "','" + objEMedico.IdMedico + "')";


            clAdminSQL objSQL = new clAdminSQL();
            int resultado = objSQL.mtdConectado(sqlInsert);
            return resultado ;
        }
    }
}