using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using UPC.APIBusiness.API.Model;
using UPC.APIBusiness.DBContext.Base;
using UPC.APIBusiness.DBContext.Interface;

namespace UPC.APIBusiness.API.Controllers
{
    [Produces("application/json")]
    [Route("api/Consulta")]
    [ApiController]
    public class ConsultaController : Controller
    {
        IConsultaRepository _repository;
        public ConsultaController(IConsultaRepository repository)
        {
            _repository = repository;
        }

        [Produces("application/json")]
        [AllowAnonymous]
        [HttpGet]
        [Route("ConsultaVarios")]
        public ActionResult ConsultaVarios(string opcion)
        {
            var resultado = _repository.ObtenerListadoEntidades(int.Parse(opcion));
            return Json(resultado);
        }
    }
}
