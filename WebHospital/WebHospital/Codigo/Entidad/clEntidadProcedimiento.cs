using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadProcedimiento
    {
        public int IdProcedimiento { get; set; }
        public string Descripcion { get; set; }
        public string Observaciones { get; set; }
        public DateTime FechaHProcedimiento { get; set; }
        public int IdHospitalizacion { get; set; }

        
    }
}