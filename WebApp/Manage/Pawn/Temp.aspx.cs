using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lina.WebApp.Manage.Pawn
{
    public partial class Temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            this.btnTEMP.Text= ConfigurationManager.ConnectionStrings["gbcashConn"].ConnectionString;
        }
    }
}