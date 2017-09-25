using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace yazdir.webSitesi.test
{
    public class indexController : Controller
    {
        // GET: index
        public ActionResult Index()
        {
            return View();
        }
        public static void deneme()
        {
            System.Diagnostics.Debug.Write("Ananı sikeyim.");
        }
    }
}