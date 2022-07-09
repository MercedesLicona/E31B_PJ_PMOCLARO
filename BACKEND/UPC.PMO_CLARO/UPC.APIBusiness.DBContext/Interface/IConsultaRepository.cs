using System;
using System.Collections.Generic;
using System.Text;
using UPC.APIBusiness.DBEntity.Base;
using static UPC.APIBusiness.DBContext.Base.Enums;

namespace UPC.APIBusiness.DBContext.Interface
{
    public interface IConsultaRepository
    {
        EntityBaseResponse ObtenerListadoEntidades(int opcion);
    }
}
