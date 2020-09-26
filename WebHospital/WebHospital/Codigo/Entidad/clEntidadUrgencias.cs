using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadUrgencias
    {
        public int Idurgencias { get; set; }
        public DateTime FechaHIngreso { get; set; }
        public DateTime FechaHSalida { get; set; }
        public string Motivo { get; set; }
        public string Descripcion { get; set; }
        public int IdTriage { get; set; }
        public int IdPaciente { get; set; }
        public int IdMedico { get; set; }
        public int IdEspecialidad { get; set; }

        }
}