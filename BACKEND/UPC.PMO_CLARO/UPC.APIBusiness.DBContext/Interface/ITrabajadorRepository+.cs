using System;
using System.Collections.Generic;
using System.Text;
using UPC.APIBusiness.DBEntity.Base;
using UPC.APIBusiness.DBEntity.Model;

namespace UPC.APIBusiness.DBContext.Interface
{
    public interface ITrabajadorRepository
    {
        EntityBaseResponse Login(string email, string contrasena);
        void ActualizaPerfil(string id, string nombre);
    }
}
