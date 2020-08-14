﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHospital.Codigo.Entidad
{
    public class clEntidadMedico
    {
        public int IdMedico { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Documento { get; set; }
        public string email { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Password { get; set; }
        public int IdEspecialidad { get; set; }
    }
}