using System;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using YingNet.Common;
using YingNet.Common.Utils;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace WebApp.Manage
{
    public partial class Login : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = this.signinUsername.Value;
            string password = this.signinPassword.Value;

            CSUserBN rbn = new CSUserBN(this.Page);
            rbn.Filter = string.Format("userName='{0}' and password='{1}' and enable=1 ", StringUtils.ToSQL(userName), Cipher.EncryptMD5(password));
            DataTable list = rbn.GetList();
            if (list.Rows.Count > 0)
            {
                DataRow row = list.Rows[0];
                //HttpCookie cookie = new HttpCookie("SystemUserID");
                //cookie.Name = "SystemUserID";
                //cookie.Value = Convert.ToString(row["userID"]);
                //HttpCookie cookie2 = new HttpCookie("SystemUserAccount");
                //cookie2.Name = "SystemUserAccount";
                //cookie2.Value = Convert.ToString(row["userName"]);
                //HttpCookie cookie3 = new HttpCookie("SystemUserName");
                //cookie3.Name = "SystemUserName";
                //cookie3.Value = Convert.ToString(row["NickName"]);
                //HttpContext.Current.Response.Cookies.Add(cookie);
                //HttpContext.Current.Response.Cookies.Add(cookie2);
                //HttpContext.Current.Response.Cookies.Add(cookie3);
                //this.Session.Add("user.uid", row["userID"]);
                //this.Session.Add("user.account", row["userName"]);
                //this.Session.Add("user.name", row["NickName"]);
                //this.signinUsername.Value = "";
                //this.signinPassword.Value = "";

                int userID = Convert.ToInt32(row["userID"]);
                CSUserDT dt = rbn.Get(userID);
                dt.LastLoginDate = SafeDateTime.LocalNow;
                rbn.Edit(dt);

                FormsAuthentication.RedirectFromLoginPage(userID.ToString(), true);
                
                

                //switch (this.ddlManagerChoose.SelectedValue)
                //{
                //    case "ShortMember":
                //        base.Response.Write("<script>window.open('MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "LongMember":
                //        base.Response.Write("<script>window.open('Long/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "ShortProcessCenter":
                //        base.Response.Write("<script>window.open('ProcessCenter/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "LongProcessCenter":
                //        base.Response.Write("<script>window.open('Long/ProcessCenter/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "ShortFollowupCenter":
                //        base.Response.Write("<script>window.open('FollowupCenter/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "LongFollowupCenter":
                //        base.Response.Write("<script>window.open('Long/FollowupCenter/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;

                //    case "SystemManagement":
                //        base.Response.Write("<script>window.open('AdminManage/MainFrameSet.aspx','','height='+(window.screen.height-50)+',width='+window.screen.width+',left=0,top=0,status=yes,toolbar=no,menubar=no,location=no, resizable=yes');</script>");
                //        break;
                //}
            }
            else
            {
                this.signinUsername.Value = "";
                this.signinPassword.Value = "";
                base.Response.Write("<script>alert('Failure,try again please!');window.location='index.aspx';</script>");
            }
        }
    }
}