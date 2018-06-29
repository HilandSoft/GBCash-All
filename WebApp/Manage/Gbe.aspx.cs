using System;
using System.Data;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class Gbe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Hidden1.Value = this.Session["MANAGE_MEMBERID"].ToString();
            HuiyuanDT ndt = new HuiyuanBN(this.Page).Get(Convert.ToInt32(this.Hidden1.Value));
            this.txId.Value = ndt.id.ToString();
            this.txLname.Value = ndt.Lname;
            this.txFname.Value = ndt.Fname;
            this.txAddress.Value = ndt.RAddress + "  " + ndt.SAddress;
            this.txCity.Value = ndt.City;
            this.txState.Value = ndt.State;
            this.txPostcode.Value = ndt.Postcode;
            this.txHPhone.Value = ndt.HTel;
            this.txMobile.Value = ndt.Mobile;
            EmployedBN dbn = new EmployedBN(this.Page);
            dbn.QueryhuiSid(this.Hidden1.Value);
            dbn.QueryParam3("1");
            DataTable list = dbn.GetList();
            if (list.Rows[0]["IsEmployed"].ToString().Equals("1"))
            {
                this.txEPhone.Value = list.Rows[0]["EPhone"].ToString();
            }
            this.txBank.Value = list.Rows[0]["BankName"].ToString();
            this.txBranch.Value = list.Rows[0]["Branch"].ToString();
            this.txBsb.Value = list.Rows[0]["Bsb"].ToString();
            this.txANumber.Value = list.Rows[0]["ANumber"].ToString();
            this.txAName.Value = list.Rows[0]["AName"].ToString();
        }
    }
}