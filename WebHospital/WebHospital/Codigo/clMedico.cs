using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clMedico
    {
        public List<clEntidadMedico> mtdListar()
        {
            string sql = "select * from Medico";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblMedico = new DataTable();
            tblMedico = objSQL.mtdDesconectado(sql);

            List<clEntidadMedico> listaMedico = new List<clEntidadMedico>();

            for (int i = 0; i < tblMedico.Rows.Count; i++)
            {
                clEntidadMedico objEMedico = new clEntidadMedico();
                objEMedico.IdMedico = int.Parse(tblMedico.Rows[i][0].ToString());
                objEMedico.Nombre = tblMedico.Rows[i][1].ToString();
                objEMedico.Apellido = tblMedico.Rows[i][2].ToString();
                objEMedico.Documento = tblMedico.Rows[i][3].ToString();
                objEMedico.Telefono = tblMedico.Rows[i][4].ToString();
                objEMedico.email = tblMedico.Rows[i][5].ToString();
                objEMedico.Direccion = tblMedico.Rows[i][6].ToString();
               // objEMedico.FechaNAcimiento = tblMedico.Rows[i][7].ToString();
                objEMedico.Password = tblMedico.Rows[i][8].ToString();
                objEMedico.IdEspecialidad = int.Parse(tblMedico.Rows[i][9].ToString());
                listaMedico.Add(objEMedico);

            }
            return listaMedico;

        }
    }
}