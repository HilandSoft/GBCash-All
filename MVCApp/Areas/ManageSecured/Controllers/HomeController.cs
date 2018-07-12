using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HiLand.Utility.Setting;

namespace MVCApp.Areas.ManageSecured.Controllers
{
    public class HomeController : Controller
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