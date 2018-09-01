using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BitsionProyect.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to Contoso University";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Documento()
        {
            return View();
        }

    }
}
