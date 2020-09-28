using System;
using System.Collections.Generic;
using System.Data;
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
                "'" + objEPersonalAdmin.Telefono + "','"+objEPersonalAdmin.email+"','" + objEPersonalAdmin.Direccion + "','" + objEPersonalAdmin.Password + "','" + objEPersonalAdmin.IdRol + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int Resultado = objSQL.mtdConectado(sqlInsert);

            return Resultado;
        }

        public List<clEntidadPersonalAdministrativo> mtdListaRol()
        {

            string sqlSelectRol = " Select * From Rol";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblRol = new DataTable();
            tblRol = objSQL.mtdDesconectado(sqlSelectRol);
            List<clEntidadPersonalAdministrativo> ListaRol = new List<clEntidadPersonalAdministrativo>();

            for (int i = 0; i < tblRol.Rows.Count; i++)
            {
                clEntidadPersonalAdministrativo objRol = new clEntidadPersonalAdministrativo();

                objRol.IdRol = int.Parse(tblRol.Rows[i][0].ToString());
                objRol.Rol = tblRol.Rows[i][1].ToString();
                ListaRol.Add(objRol);

            }

            return ListaRol;
        }
    }
}