using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo
{
    public class ClEntidadUsuario
    {
        public int idUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Documento { get; set; }
        public string Usuario { get; set; }
        public string Contraseña { get; set; }
        public string Genero { get; set; }
        public int idEps { get; set; }
        public int idRol { get; set; }

    }
}