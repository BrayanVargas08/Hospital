using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadPersonalAdministrativo : ClEntidadUsuario
    {
        public string Rol { get; set; }
        public int IdPersonalAdministrativo { get; set; }
        public int IdRol { get; set; }
    }
}