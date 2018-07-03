using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using YingNet.Common;
using YingNet.Common.Utils;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace WebApp.Manage
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int adminID = 0;
            string adminName = string.Empty;
            int.TryParse(HttpContext.Current.User.Identity.Name,out adminID);
            if (adminID > 0) {
                CSUserBN rbn = new CSUserBN(this.Page);
                CSUserDT userDT= rbn.Get(adminID);
                adminName = userDT.UserName;
            }
            this.litUserName.Text = adminName;


            //以下提醒數據通過前台頁面jquery動態獲取

            //int unDealedInfoCount4GBCash = 0;
            //int unDealedInfoCount4Secured = 0;
            //int unDealedInfoCount4Pawn = 0;
            //int unDealedInfoCount4All = 0;

            //DataTable list = InfoBN.GetQueryValid(1);            
            //if (list!=null) {
            //    unDealedInfoCount4GBCash = list.Rows.Count;
            //}

            //unDealedInfoCount4Pawn= 


            //unDealedInfoCount4All = unDealedInfoCount4GBCash + unDealedInfoCount4Secured + unDealedInfoCount4Pawn;
            //if (unDealedInfoCount4All > 0) {
            //    this.litNewApllyCount4All.Text = unDealedInfoCount4All.ToString();
            //}

            //this.litNewApllyCount4GBCash.Text = unDealedInfoCount4GBCash.ToString();
            //this.litNewApllyCount4Pawn.Text = unDealedInfoCount4Pawn.ToString();
            //this.litNewApllyCount4Secured.Text = unDealedInfoCount4Secured.ToString();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();

            Response.Redirect("login.aspx");

        }
    }
}