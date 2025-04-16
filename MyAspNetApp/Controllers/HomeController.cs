using Microsoft.AspNetCore.Mvc;

namespace MyAspNetApp.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET Core CI/CD Pipeline Demo!";
            return View();
        }
    }
}
