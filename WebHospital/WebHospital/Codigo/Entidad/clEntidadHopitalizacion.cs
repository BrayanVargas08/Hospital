using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadHopitalizacion : clEntidadPaciente
    {
        public int IdHospitalizacion { get; set; }
        public DateTime FechaHIngreso { get; set; }
        public DateTime FechaHSalida { get; set; }
        public String Motivo { get; set; }
        public String Descripcion { get; set; }
        public String Observaciones { get; set; }
        public int IdPaciente { get; set; }
        public int IdUrgencia { get; set; }


    }
}
