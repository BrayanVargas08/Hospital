using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadCita
    {
        public int Documento { get; set; }
        public int Numero { get; set; }
        public string Correo { get; set; }
        public int idEps{ get; set; }
        public int idDoctor { get; set; }
        public DateTime Fecha { get; set; }

    }
}