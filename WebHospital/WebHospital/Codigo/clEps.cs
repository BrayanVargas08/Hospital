using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clEps
    {
        public int mtdRegistrarEps (clEntidadEps objEps)
        {
            string sqlInsert = "INSERT INTO Eps(Nombre,Ciudad)" +
              "values('"  + objEps.Nombre + "','" + objEps.Ciudad + "')";

        clAdminSQL objSQL = new clAdminSQL();
        int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }

    }
}