using System;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class MemberDel : System.Web.UI.Page
    {
        private void InitializeComponent()
        {
            this.returnmain.ServerClick += new EventHandler(this.returnmain_ServerClick);
            base.Load += new EventHandler(this.Page_Load);
        }

        protected override void OnInit(EventArgs e)
        {
            this.InitializeComponent();
            base.OnInit(e);
        }

        private void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack && (base.Request["id"] != null))
            {
                this.TextBox1.Text = base.Request["id"];
                this.LabMsg.Text = "This item will be deleted permanently. Do you want to continue?";
            }
        }

        private void returnmain_ServerClick(object sender, EventArgs e)
        {
            HuiyuanBN nbn = new HuiyuanBN(this.Page);
            int id = Convert.ToInt32(this.TextBox1.Text);
            HuiyuanDT dt = nbn.Get(id);
            dt.IsValid = 3;
            nbn.Edit(dt);
            base.Response.Write("<script>alert('Success!');window.location.href='MemberList.aspx';</script>");
        }
    }
}