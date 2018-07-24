using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lina.WebApp.Manage
{
    public partial class AgreementInput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnQuery_Click(object sender, EventArgs e)
        {
            this.Session["MANAGE_MEMBERID"] = this.TextBox1.Text;
            base.Response.Write("<script>window.location.href='Agreement.aspx?id=" + this.TextBox1.Text + "';</script>");
        }
    }
}