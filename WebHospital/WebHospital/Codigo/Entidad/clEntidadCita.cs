using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadCita :clEntidadPaciente
    {
        public int IdCita { get; set; }
        public int IdMedico { get; set; }
        public int IdEspecialidad { get; set; }
        public  int IdPersonalAdmin   { get; set; }
        public string Estado { get; set; }
        public string FechaHIngreso { get; set; }

    }
}