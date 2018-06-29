using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YingNet.Common;
using YingNet.Common.Utils;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.Business.CommonLogic;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int adminID = 0;
            int.TryParse(HttpContext.Current.User.Identity.Name,out adminID);
            CSUserBN rbn = new CSUserBN(this.Page);
            CSUserDT dt = rbn.Get(adminID);
            if (dt.Password == Cipher.EncryptMD5(this.txtOldPass.Text.Trim()))
            {
                dt.Password = Cipher.EncryptMD5(this.txtNewPass.Text);
                if (rbn.Edit(dt))
                {
                    base.Response.Write("<script type='text/javascript'>alert('Congradulations,Your password has been changed!');</script>");
                }
                else
                {
                    base.Response.Write("<script type='text/javascript'>alert('Sorry,Your password has not been Changed!');</script>");
                }
            }
            else
            {
                base.Response.Write("<script type='text/javascript'>alert('Sorry,Can you confirm the old password?');</script>");
            }
        }
    }
}