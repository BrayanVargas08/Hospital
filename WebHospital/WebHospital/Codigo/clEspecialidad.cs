using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clEspecialidad
    {
        public int mtdRegistrar(clEntidadEspecialidad objEspecialidad)
        {
            string sqlInsert = "INSERT INTO Especialidad(Especialidad,Descripcion)" +
                "values('" + objEspecialidad.Especialidad + "','" + objEspecialidad.Descripcion + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;
        }
        

            public List<clEntidadEspecialidad> mtdListarEspecialidad()
            {
                string sql = "select * from Especialidad";
                clAdminSQL objSQL = new clAdminSQL();
                DataTable tblEspecialidad = new DataTable();
                tblEspecialidad = objSQL.mtdDesconectado(sql);

                List<clEntidadEspecialidad> listaEspecialidad = new List<clEntidadEspecialidad>();

                for (int i = 0; i < tblEspecialidad.Rows.Count; i++)
                {
                    clEntidadEspecialidad objEspecialidad = new clEntidadEspecialidad();
                    objEspecialidad.IdEspecialidad = int.Parse(tblEspecialidad.Rows[i][0].ToString());
                    objEspecialidad.Especialidad = (tblEspecialidad.Rows[i][1].ToString());
                    objEspecialidad.Descripcion = tblEspecialidad.Rows[i][2].ToString();
                    listaEspecialidad.Add(objEspecialidad);

                }
                return listaEspecialidad;

            }
        }
    }