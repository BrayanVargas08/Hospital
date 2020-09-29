using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadMedicacion
    {
        public int IdMedicacion { get; set; }
        public string HoraMedicacion { get; set; }
        public string Cantidad { get; set; }
        public string MetodoAplicacion { get; set; }
        public int IdProcesoGeneral { get; set; }
        public int IdMedicamento { get; set; }
        public int IdProcedimiento { get; set; }
    }
}