using System;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class OpenOperate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (base.Request["id"] != null)
            {
                int id = Convert.ToInt32(base.Request["id"]);
                InfoBN obn = new InfoBN(this.Page);
                InfoDT dt = obn.Get(id);
                dt.isvalid = 0;
                obn.Edit(dt);
                base.Response.Write("<script>alert('Delete Successfully!');window.location.href='NewApplyTip.aspx';</script>");
            }
        }
    }
}