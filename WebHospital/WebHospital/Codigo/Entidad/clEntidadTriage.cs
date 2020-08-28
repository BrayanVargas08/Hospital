using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadTriage
    {
        public int idTriage { get; set; }
        public string Nivel { get; set; }
        public string Tipo { get; set; }
        public string TiempoEspera { get; set; }

    }
}