using System;
using System.Data;
using System.Web.UI.WebControls;
using YingNet.Common;
using YingNet.WeiXing.Business;

namespace Lina.WebApp.Manage
{
    public partial class InforHistory : System.Web.UI.Page
    {
        private void DataGridTable1_DataBinding(object sender, EventArgs e)
        {
            EmploybackupBN pbn = new EmploybackupBN(this.Page);
            pbn.QueryHuisid(this.Hidden1.Value);
            DataTable list = pbn.GetList();
            CommonBasePage.SetPage(this.DataGridTable1, list);
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
            base.Load += new EventHandler(this.Page_Load);
        }

        protected override void OnInit(EventArgs e)
        {
            this.InitializeComponent();
            base.OnInit(e);
        }

        private void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                this.Hidden1.Value = base.Request["id"];                
                this.DataGridTable1.DataBind();
            }
        }
    }
}