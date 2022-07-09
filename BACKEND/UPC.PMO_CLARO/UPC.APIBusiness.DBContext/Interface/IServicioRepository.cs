using System;
using System.Collections.Generic;
using System.Text;
using UPC.APIBusiness.DBEntity.Base;
using UPC.APIBusiness.DBEntity.Model;

namespace UPC.APIBusiness.DBContext.Interface
{
    public interface IServicioRepository
    {
        EntityBaseResponse ObtenerServicioPorProyecto(string stringProyecto);
        EntityBaseResponse RegistrarServicio(Servicio servicio);

        //validar los servicios
    }
}
