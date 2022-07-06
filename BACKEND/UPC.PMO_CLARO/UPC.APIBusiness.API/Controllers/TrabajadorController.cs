using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
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
        public TrabajadorController()
        {
            _repository = new TrabajadorRepository();
        }

        [Produces("application/json")]
        [AllowAnonymous]
        [HttpGet]
        [Route("GetLogin")]
        public ActionResult Login(string email)
        {

            //var resultado = _repository.Login(email, "");
            return Json("");
        }
    }
}
