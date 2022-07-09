using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using UPC.APIBusiness.DBContext.Base;
using UPC.APIBusiness.DBContext.Interface;
using UPC.APIBusiness.DBEntity.Base;
using UPC.APIBusiness.DBEntity.Model;

namespace UPC.APIBusiness.DBContext.Repository
{
    public class ServicioRepository : BaseRepository, IServicioRepository
    {
        public EntityBaseResponse ObtenerServicioPorProyecto(string stringProyecto)
        {
            var response = new EntityBaseResponse();
            try
            {
                using (var conexionSql = GetSqlConnection())
                {
                    var procedimiento = "Usp_ListadoDeServiciosPorProyecto";
                    var parametros = new DynamicParameters();
                    parametros.Add(name: "@Proyecto", value: stringProyecto);


                    var obj = conexionSql.Query<ServicioQuery>(
                           sql: procedimiento,
                           param: parametros,
                           commandType: CommandType.StoredProcedure
                       );

                    if (obj != null && obj.Count()>0)
                    {
                        response.issuccess = true;
                        response.errorcode = "0000";
                        response.errormessage = string.Empty;
                        response.data = obj.ToList(); 
                    }
                    else
                    {
                        response.issuccess = false;
                        response.errorcode = "0000";
                        response.errormessage = "Sin Datos";
                        response.data = null;
                    }
                }
            }
            catch (Exception ex)
            {
                response.issuccess = false; 
                response.errorcode = "0001";
                response.errormessage = ex.Message;
                response.data = null;
            }
            return response;
        }

        public EntityBaseResponse RegistrarServicio(Servicio servicio)
        {
            var response = new EntityBaseResponse();
            try
            {
                using (var conexionSql = GetSqlConnection())
                {
                    var procedimiento = "Usp_ServicioInsertar";
                    var parametros = new DynamicParameters();
                    parametros.Add(name: "@IdTipoServicio", value: servicio.IdTipoServicio);
                    parametros.Add(name: "@IdAnalista", value: servicio.IdAnalista);
                    parametros.Add(name: "@IdCliente", value: servicio.IdCliente);
                    parametros.Add(name: "@IdSede", value: servicio.IdSede);
                    parametros.Add(name: "@IdProyecto", value: servicio.IdProyecto);

                    var obj = conexionSql.Execute(
                           sql: procedimiento,
                           param: parametros,
                           commandType: CommandType.StoredProcedure
                       );

                    if (obj>0)
                    {
                        response.issuccess = true; 
                        response.errorcode = "0000"; 
                        response.errormessage = string.Empty;
                        response.data = obj;
                    }
                    else
                    {
                        response.issuccess = false;
                        response.errorcode = "0000";
                        response.errormessage = "No se ha logrado el registro.";
                        response.data = null;
                    }
                }
            }
            catch (Exception ex)
            {
                response.issuccess = false; 
                response.errorcode = "0001";
                response.errormessage = ex.Message;
                response.data = null;
            }
            return response;
        }
    }
}
