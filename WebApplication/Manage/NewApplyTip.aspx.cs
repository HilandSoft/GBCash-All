using System;
using System.Data;
using System.Web.UI.WebControls;
using YingNet.Common;
using YingNet.WeiXing.Business;

namespace Lina.WebApp.Manage
{
    public partial class NewApplyTip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.DataGridTable1.DataBind();
        }

        protected override void OnInit(EventArgs e)
        {
            this.InitializeComponent();
            base.OnInit(e);
        }


        private void DataGridTable1_DataBinding(object sender, EventArgs e)
        {
            DataTable list = InfoBN.GetQueryValid(1);
            CommonBasePage.SetPage(this.DataGridTable1, list);
        }

        private void DataGridTable1_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemIndex > -1)
            {
                string text = e.Item.Cells[2].Text;
                string str2 = "";
                switch (text)
                {
                    case "1":
                        str2 = "Personal Details Update";
                        break;

                    case "2":
                        str2 = "Employment Details Update";
                        break;

                    case "3":
                        str2 = "New Application";
                        break;

                    case "4":
                        str2 = "Member Application";
                        break;

                    case "5":
                        str2 = "Extension Request";
                        break;
                }
                e.Item.Cells[2].Text = str2;
            }
        }

        private void DataGridTable1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            this.DataGridTable1.CurrentPageIndex = e.NewPageIndex;
            this.DataGridTable1.DataBind();
        }

        private void InitializeComponent()
        {
            this.DataGridTable1.PageIndexChanged += new DataGridPageChangedEventHandler(this.DataGridTable1_PageIndexChanged);
            this.DataGridTable1.DataBinding += new EventHandler(this.DataGridTable1_DataBinding);
            this.DataGridTable1.ItemDataBound += new DataGridItemEventHandler(this.DataGridTable1_ItemDataBound);
            base.Load += new EventHandler(this.Page_Load);
        }
    }
}