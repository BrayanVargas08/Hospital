﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHospital.Codigo;
using WebHospital.Codigo.Entidad;

namespace WebHospital.Vista
{
    public partial class Traslado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<clEntidadAmbulancias> ListaAmbulancias = new List<clEntidadAmbulancias>();
            clAmbulancia objAmbulancias = new clAmbulancia();
            ListaAmbulancias = objAmbulancias.mtdListar();
            cmbAmbulancia.DataSource = ListaAmbulancias;
            cmbAmbulancia.DataTextField = "Placa";
            cmbAmbulancia.DataValueField = "IdAmbulancia";
            cmbAmbulancia.DataBind();
            //
        //    List<clEntidadHopitalizacion> ListaEHospitalizacion = new List<clEntidadHopitalizacion>();
        //    clHospitalizacion objHospitazacion = new clHospitalizacion();
        //    ListaEHospitalizacion = objHospitazacion.mtdListar();
        //    cmbHospitalizacion.DataSource = ListaEHospitalizacion;
        //    cmbHospitalizacion.DataTextField = "Motivo";
        //    cmbHospitalizacion.DataValueField = "IdHospitalizacion";
        //    cmbHospitalizacion.DataBind();
        }

        
        protected void btnRegistrarTralado_Click(object sender, EventArgs e)
        {
            clEntidadTraslado objETraslado = new clEntidadTraslado();
            objETraslado.FechaHtraslado = DateTime.Parse(txtFechaHTraslado.Text);
            objETraslado.Descripcion = TxtDescripcion.Text;
            objETraslado.Destino = TxtDestino.Text;
            objETraslado.IdAmbulancia = int.Parse(cmbAmbulancia.SelectedValue.ToString());
            int idambu = int.Parse(cmbAmbulancia.SelectedValue.ToString());
            //objETraslado.IdHospitalizacion = int.Parse(cmbHospitalizacion.SelectedValue.ToString());
            //int idHos = int.Parse(cmbHospitalizacion.SelectedValue.ToString());






            clTraslado objTraslado = new clTraslado();
            int resultSql = objTraslado.mtdRegistrar(objETraslado);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtHospitalizacion.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}