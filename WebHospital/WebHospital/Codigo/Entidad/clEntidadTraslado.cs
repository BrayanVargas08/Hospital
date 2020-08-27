using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadTraslado
    {
        public int IdTraslado { get; set; }
        public DateTime FechaHtraslado { get; set; }
        public String Descripcion { get; set; }
        public String Destino { get; set; }
        public int IdAmbulancia { get; set; }
        public int IdHospitalizacion { get; set; }

    }
}