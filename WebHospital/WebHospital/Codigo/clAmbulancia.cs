using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{

    public class clAmbulancia
    {
        public int mtdRegistrar(clEntidadAmbulancias objAmbulancias)
        {
            string sqlInsert = "INSERT INTO Ambulancia(Codigo,Placa,Conductor,Estado)" +
               "values('" + objAmbulancias.codigo + "','" + objAmbulancias.Placa + "','" + objAmbulancias.Conductor + "','" + objAmbulancias.Estado + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;

        }
        public List<clEntidadAmbulancias> mtdListar()
        {
            string sql = "select * from Ambulancia";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblAmbulancia = new DataTable();
            tblAmbulancia = objSQL.mtdDesconectado(sql);

            List<clEntidadAmbulancias> listaAmbulancia = new List<clEntidadAmbulancias>();

            for (int i = 0; i < tblAmbulancia.Rows.Count; i++)
            {
                clEntidadAmbulancias objEAmbulancia = new clEntidadAmbulancias();
                objEAmbulancia.IdAmbulancia = int.Parse(tblAmbulancia.Rows[i][0].ToString());
                objEAmbulancia.codigo = tblAmbulancia.Rows[i][1].ToString();
                objEAmbulancia.Placa = tblAmbulancia.Rows[i][2].ToString();
                objEAmbulancia.Conductor = tblAmbulancia.Rows[i][3].ToString();
                objEAmbulancia.Estado = tblAmbulancia.Rows[i][4].ToString();
                
                listaAmbulancia.Add(objEAmbulancia);

            }
            return listaAmbulancia;

        }
    }
}