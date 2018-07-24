using System;
using System.Data;
using YingNet.Common;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class LoanComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployedBN dbn = new EmployedBN(this.Page);
            int id = Convert.ToInt32(base.Request["id"]);
            EmployedDT dt = dbn.Get(id);
            dt.IsValid = 1;
            dbn.Edit(dt);
            string commandText = "update Schedule set IsValid=1 where Param1='" + id.ToString() + "'";
            SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            base.Response.Write("<script>alert('Success!');window.location.href='MemberList.aspx';</script>");
        }
    }
}