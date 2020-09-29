﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Codigo
{
    public class clHospitalizacion
    {
        public int mtdRegistrar(clEntidadHopitalizacion objHospitalizacion)
        {

            string sqlInsert = "INSERT INTO Hospitalizacion(FechaHIngreso,FechaHSalida,Motivo,Descripcion,Observaciones,IdPaciente,IdUrgencia)" +
               "values('" + objHospitalizacion.FechaHIngreso + "','" + objHospitalizacion.FechaHSalida + "','" + objHospitalizacion.Motivo + "','" + objHospitalizacion.Descripcion + "','" + objHospitalizacion.Observaciones + "','" + objHospitalizacion.IdPaciente + "','" + objHospitalizacion.IdUrgencia + "')";

            clAdminSQL objSQL = new clAdminSQL();
            int result = objSQL.mtdConectado(sqlInsert);
            return result;


        }
        public List<clEntidadHopitalizacion> mtdListar()
        {
            string sql = "select * from Hospitalizacion";
            clAdminSQL objSQL = new clAdminSQL();
            DataTable tblHospitalizacion = new DataTable();
            tblHospitalizacion = objSQL.mtdDesconectado(sql);

            List<clEntidadHopitalizacion> listaHospitalizacion = new List<clEntidadHopitalizacion>();

            for (int i = 0; i < tblHospitalizacion.Rows.Count; i++)
            {
                clEntidadHopitalizacion objEHospitalizacion = new clEntidadHopitalizacion();
                objEHospitalizacion.IdHospitalizacion = int.Parse(tblHospitalizacion.Rows[i][0].ToString());
                objEHospitalizacion.FechaHIngreso = DateTime.Parse(tblHospitalizacion.Rows[i][1].ToString());
                objEHospitalizacion.FechaHSalida = DateTime.Parse( tblHospitalizacion.Rows[i][2].ToString());
                objEHospitalizacion.Motivo = tblHospitalizacion.Rows[i][3].ToString();
                objEHospitalizacion.Descripcion = tblHospitalizacion.Rows[i][4].ToString();
                objEHospitalizacion.Observaciones = tblHospitalizacion.Rows[i][5].ToString();
                objEHospitalizacion.IdPaciente = int.Parse(tblHospitalizacion.Rows[i][6].ToString());
                objEHospitalizacion.IdUrgencia = int.Parse(tblHospitalizacion.Rows[i][7].ToString());

                listaHospitalizacion.Add(objEHospitalizacion);

            }
            return listaHospitalizacion;

        }

    }
}