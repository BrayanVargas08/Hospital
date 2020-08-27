using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clPersonalAdministrativo
    {
        // Metodo para listar todo el personal Administrativo
        public List<clEntidadPersonalAdministrativo> mtdListarPersonalAdministrativo()
        {
            string SqlConsulta = "Select * From PersonalAdministrativo ";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblLista = new DataTable();
            tblLista = objSQL.mtdDesconectado(SqlConsulta);

            List<clEntidadPersonalAdministrativo> ListaPersonal = new List<clEntidadPersonalAdministrativo>();
            clEntidadPersonalAdministrativo objEPersonalAdmin = new clEntidadPersonalAdministrativo();

            for (int i = 0; i < tblLista.Rows.Count; i++)
            {
                objEPersonalAdmin.IdPersonalAdministrativo = int.Parse(tblLista.Rows[i][0].ToString());
                objEPersonalAdmin.Nombre = tblLista.Rows[i][1].ToString();
                objEPersonalAdmin.Apellido = tblLista.Rows[i][2].ToString();
                objEPersonalAdmin.Documento = tblLista.Rows[i][3].ToString();
                objEPersonalAdmin.Telefono = tblLista.Rows[i][4].ToString();
                objEPersonalAdmin.email = tblLista.Rows[i][5].ToString();
                objEPersonalAdmin.Direccion = tblLista.Rows[i][6].ToString();
                ListaPersonal.Add(objEPersonalAdmin);
            }

            return ListaPersonal;
        }
    }
}