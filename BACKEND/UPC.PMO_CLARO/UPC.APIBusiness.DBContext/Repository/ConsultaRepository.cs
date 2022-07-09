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
    public class ConsultaRepository : BaseRepository, IConsultaRepository
    {
        public EntityBaseResponse ObtenerListadoEntidades(int opcion)
        {
            var response = new EntityBaseResponse();
            try
            {
                using (var conexionSql = GetSqlConnection())
                {                   
                    var procedimiento = "Usp_ConsultaVariosServicios";
                    var parametros = new DynamicParameters();
                    parametros.Add(name: "@opcion", value: opcion);

                    var objeto = conexionSql.Query<ConsultaEntity>(
                           sql: procedimiento,
                           param: parametros,
                           commandType: CommandType.StoredProcedure
                       );

                    if (objeto != null && objeto.Count()>0)
                    {
                        response.issuccess = true; 
                        response.errorcode = "0000";
                        response.errormessage = string.Empty;
                        response.data = objeto.ToList();
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
    }
}
