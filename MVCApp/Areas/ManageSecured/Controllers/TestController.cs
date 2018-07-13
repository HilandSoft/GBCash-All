using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HiLand.Utility.Setting;

namespace Lina.Areas.ManageSecured.Controllers
{
    public class TestController : Controller
    {
        public ActionResult Index()
        {
            string connString = "";// Config.GetConnectionString("mainConnection");
            connString = ConfigurationManager.ConnectionStrings["mainConnection"].ConnectionString;
            this.ViewBag.conn = connString;
            return View();
        }
    }
}