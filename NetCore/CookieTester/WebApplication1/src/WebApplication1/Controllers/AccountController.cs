using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http;
using System.Net;

// For more information on enabling Web API for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    public class AccountController : Controller
    {
        [HttpGet]
        [Route("GenerateToken")]
        public IActionResult GenerateToken()
        {
            string _JwtTokenDummy = Guid.NewGuid().ToString() + " Developer testing";
            Response.Cookies.Append(
                "JWTToken",
                _JwtTokenDummy,
                new Microsoft.AspNetCore.Http.CookieOptions()
                {
                    Path = "/",
                    HttpOnly = true,
                    Secure = false,
                }
            );
            return new ObjectResult("GenerateToken._JwtTokenDummy: " + _JwtTokenDummy);
        }

        [HttpGet]
        [Route("RetrieveToken")]
        public IActionResult RetrieveToken()
        {   
            return new ObjectResult("RetrieveToken._JwtTokenDummy: " + Request.Cookies["JWTToken"].ToString());
        }
    }
}
