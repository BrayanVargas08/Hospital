using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class ClEntidadUsuario
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Documento { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string Genero { get; set; }
        public int IdEps { get; set; }

    }
}