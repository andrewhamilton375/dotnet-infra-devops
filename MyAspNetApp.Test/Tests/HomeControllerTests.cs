using MyAspNetApp.Controllers;
using Microsoft.AspNetCore.Mvc;
using Xunit;

namespace Tests
{
    public class HomeControllerTests
    {
        [Fact]
        public void Index_ReturnsViewResult_WithWelcomeMessage()
        {
            var controller = new HomeController();
            var result = controller.Index() as ViewResult;
            Assert.NotNull(result);
            Assert.Equal("Welcome to ASP.NET Core CI/CD Pipeline Demo!", result?.ViewData["Message"]);
        }
    }
}
