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
    public class TrabajadorRepository : BaseRepository, ITrabajadorRepository
    {
        public void ActualizaPerfil(string id, string nombre)
        {
            throw new NotImplementedException();
        }

        public EntityBaseResponse Login(string email, string contrasena)
        {
            //Crear el objeto de la estructura "EntityResponse"
            var response = new EntityBaseResponse();
            try
            {
                //Abres la conexión a la base de datos
                using (var conexionSql = GetSqlConnection())
                {
                    //Nombre del procedimiento almacenado en SQL-Server
                    var procedimiento = "Usp_TrabajadorLogin";

                    //Parámetros que tiene el procedimiento almacenado en SQL-Server
                    var parametros = new DynamicParameters();
                    parametros.Add(name: "@usuario", value: email);
                    parametros.Add(name: "@contrasena", value: contrasena);

                    //Ejecutas el procedimiento de SQL
                    var trabajador = conexionSql.Query<Trabajador>(
                           sql: procedimiento,//este es el nombre del procedimiento
                           param: parametros,// hace referencia a los parametros
                           commandType: CommandType.StoredProcedure
                       ).FirstOrDefault();


                    //"trabajador"-> Es un objeto que trae información de la base de datos
                    //Se valida si es diferente a NULO, quiere decir que si tiene datos
                    if (trabajador != null)
                    {
                        response.issuccess = true; //Se indica que esta todo correcto
                        response.errorcode = "0000"; //Codigo no tiene nada que ver
                        response.errormessage = string.Empty; // mensaje de error no existe
                        response.data = trabajador; // este es el objeto que viene de la base de datos
                    }
                    else
                    {
                        //Si no trae ningun valor, entra aqui 
                        response.issuccess = false;// indica que la ejecución esta incorrecta o es falsa
                        response.errorcode = "0000";// codigo de error, si quieres le pones un codigo para que sepas que error es. (opcional)
                        response.errormessage = "Sin Datos";//mensaje del error,  "sin datos"
                        response.data = null;// retorna valores NULOS, osea no se ha encontrado registros
                    }
                }
            }
            //Aquí se capura errores
            catch (Exception ex)
            {
                //Si hay errror aqui a capturar
                response.issuccess = false; // indica que el proceso no se ha realizado
                response.errorcode = "0001";// codigo de error si queires
                response.errormessage = ex.Message;// "ex.Message es el mensaje de error.
                response.data = null;// retorna valores nulos (obligatorio)
            }


            //Finalmente retornas los valores.
            return response;
        }
    }
}