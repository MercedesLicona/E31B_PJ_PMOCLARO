using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using UPC.APIBusiness.API.Model;
using UPC.APIBusiness.DBContext.Interface;
using UPC.APIBusiness.DBEntity.Model;

namespace UPC.APIBusiness.API.Controllers
{
    [Produces("application/json")]
    [Route("api/Servicio")]
    [ApiController]
    public class ServicioController : Controller
    {
        IServicioRepository _repository;
        public ServicioController(IServicioRepository repository)
        {
            _repository = repository;
        }

        [Produces("application/json")]
        [AllowAnonymous]
        [HttpPost]
        [Route("Registrar")]
        public ActionResult Registrar(ServicioModel model)
        {
            var servicio = new Servicio();
            servicio.IdCliente = model.IdCliente;
            servicio.IdAnalista = model.IdAnalista;
            servicio.IdSede = model.IdSede;
            servicio.IdProyecto = model.IdProyecto;
            servicio.IdTipoServicio = model.IdTipoServicio;


            var resultado = _repository.RegistrarServicio(servicio);
            return Json(resultado);
        }

        [Produces("application/json")]
        [AllowAnonymous]
        [HttpGet]
        [Route("ObtenerServiciosPorCliente")]
        public ActionResult ObtenerServiciosPorCliente(string cliente)
        {
            var resultado = _repository.ObtenerServicioPorProyecto(cliente);
            return Json(resultado);
        }
    }
}
