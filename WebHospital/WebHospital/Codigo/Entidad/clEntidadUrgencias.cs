using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadUrgencias
    {

        public DateTime FechaHIngreso { get; set; }
        public DateTime FechaHSalida { get; set; }
        public string Motivo { get; set; }
        public string Descripcion { get; set; }
        public int IdTriage { get; set; }
        public int paciente { get; set; }
        public int Idmedico { get; set; }
        public int Idurgencia { get; set; }

    }
}