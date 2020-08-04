using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class ClEntidadPaciente
    {
        public int IdPaciente { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Documento { get; set; }
        public string email { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public DateTime FechaNAcimiento { get; set; }
        public string Password { get; set; }
        public string Genero { get; set; }
        public int IdEps { get; set; }

    }
}