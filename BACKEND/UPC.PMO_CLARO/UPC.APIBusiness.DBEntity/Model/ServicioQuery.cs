using System;
using System.Collections.Generic;
using System.Text;

namespace UPC.APIBusiness.DBEntity.Model
{
    public class ServicioQuery
    {
        public string SOT { get; set; }
        public DateTime Fecha { get; set; }
        public string Proyecto { get; set; }
        public string Servicio { get; set; }
        public string Analista { get; set; }
        public string Cliente { get; set; }
        public string Sede { get; set; }
        public string Estado { get; set; }
    }
}
