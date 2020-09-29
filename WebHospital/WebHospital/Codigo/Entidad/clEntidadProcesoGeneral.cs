using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadProcesoGeneral : clEntidadPaciente
    {
        public int IdProcesoGeneral { get; set; }
        public string Diagnostico { get; set; }
        public string Valoracion { get; set; }

        public int IdPaciente { get; set; }
        public int IdMedico { get; set; }

    }
}