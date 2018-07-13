using System.Web.Mvc;

namespace MVCApp.Areas.ManageSecured
{
    public class ManageSecuredAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "ManageSecured";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "ManageSecured_default",
                "ManageSecured/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                new string[] { "Lina.Areas.Manage.Controllers" }
            );
        }
    }
}