using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.Manage
{
    public partial class Login : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = "lily";
            string password = "123";

            if (1 == 1)
            {
                FormsAuthentication.RedirectFromLoginPage(userName, true);
                //FormsAuthentication.SetAuthCookie(userName, true);
                //Response.Redirect("index.aspx");
            }

        }
    }
}