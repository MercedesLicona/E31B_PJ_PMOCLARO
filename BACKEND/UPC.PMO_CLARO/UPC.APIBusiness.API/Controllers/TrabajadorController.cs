using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using UPC.APIBusiness.API.Model;
using UPC.APIBusiness.DBContext.Interface;
using UPC.APIBusiness.DBContext.Repository;

namespace UPC.APIBusiness.API.Controllers
{
    [Produces("application/json")]
    [Route("api/Trabajador")]
    [ApiController]
    public class TrabajadorController : Controller
    {
        ITrabajadorRepository _repository;
        public TrabajadorController(ITrabajadorRepository repository)
        {
            _repository = repository;
        }

        [Produces("application/json")]
        [AllowAnonymous]
        [HttpPost]
        [Route("GetLogin")]
        public ActionResult Login(LoginModel model)
        {

            var resultado = _repository.Login(model.User, model.Password);
            return Json(resultado);
        }
    }
}
