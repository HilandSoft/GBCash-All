using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using YingNet.Common;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class MemberList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.DataGridTable1.DataBind();
        }

        private void DataGridTable1_DataBinding(object sender, EventArgs e)
        {
            HuiyuanBN nbn = new HuiyuanBN(this.Page);
            if (this.txCondition.Text == "")
            {
                nbn.QueryNotValid("9");
                nbn.QueryNotValid("3");
            }
            else
            {
                nbn.Filter = this.txCondition.Text;
                nbn.QueryNotValid("3");
                if (!this.IsChooseUnCompleted())
                {
                    nbn.QueryNotValid("9");
                }
            }
            DataTable dt = null;
            if ((this.ViewState["SearchJoinEmployment"] == null) || (this.ViewState["SearchJoinEmployment"].ToString() == string.Empty))
            {
                dt = nbn.GetList();
            }
            else
            {
                dt = nbn.GetListJoinEmployment();
            }
            CommonBasePage.SetPage(this.DataGridTable1, dt);
            //base.AddValue("pageno", Convert.ToString((int)(this.DataGridTable1.CurrentPageIndex + 1)));
            //this.txtParamstr.Text = base.PackPart(base.ParamValue);
        }

        private void DataGridTable1_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemIndex > -1)
            {
                DataRowView dataItem = (DataRowView)e.Item.DataItem;

                DataBoundLiteralControl cc = (DataBoundLiteralControl)e.Item.Cells[2].Controls[0];
                string orignalString2 = cc.Text;
                string str4Status = "";
                string text = Convert.ToString(dataItem.Row["IsValid"]);
                switch (text)
                {
                    case "0":
                        str4Status = "New";
                        break;

                    case "1":
                        str4Status = "Active";
                        break;

                    case "2":
                        str4Status = "Uncompleted";
                        break;

                    case "3":
                        str4Status = "Deleted";
                        break;

                    case "5":
                        str4Status = "Expired";
                        break;

                    case "6":
                        str4Status = "Rejected&Deleted";
                        break;

                    case "8":
                        str4Status = "Rejected";
                        break;

                    case "9":
                        str4Status = "Uncompleted";
                        break;

                    case "18":
                        str4Status = "PreApprove";
                        break;

                    case "21":
                        str4Status = "ReudcedLimit";
                        break;

                    case "22":
                        str4Status = "BlackList";
                        break;

                    case "23":
                        str4Status = "PermantlyBlackList";
                        break;

                    case "24":
                        str4Status = "Collection";
                        break;
                }
                e.Item.Cells[2].Text = orignalString2.Replace("{SSS}",str4Status);

                try
                {
                    string str4Note = string.Empty;
                    string str4FollowHistory = string.Empty;
                    string orignalString7 = e.Item.Cells[7].Text;
                    if (((dataItem.Row["Note"] == null) || (dataItem.Row["Note"] is DBNull)) || (dataItem.Row["Note"].ToString() == string.Empty))
                    {
                        str4Note = "Empty";
                        str4Note = string.Format("<a href='MemberLoadNotes.aspx?id={0}'>{1}</a>", dataItem.Row["id"], str4Note);
                    }
                    else
                    {
                        str4Note = "Attention";
                        str4Note = string.Format("<a dealed='Attention' class='Attention' href='MemberLoadNotes.aspx?id={0}'>{1}</a>", dataItem.Row["id"], str4Note);
                    }

                    if (((dataItem.Row["followUpHistory"] == null) || (dataItem.Row["followUpHistory"] is DBNull)) || (dataItem.Row["followUpHistory"].ToString() == string.Empty))
                    {
                        str4FollowHistory = "Empty";
                        str4FollowHistory = string.Format("<a href='MemberLoadFollowUpHistory.aspx?id={0}'>{1}</a>", dataItem.Row["id"], str4FollowHistory);
                    }
                    else
                    {
                        str4FollowHistory = "Attention";
                        str4FollowHistory = string.Format("<a dealed='Attention' class='Attention' href='MemberLoadFollowUpHistory.aspx?id={0}'>{1}</a>", dataItem.Row["id"], str4FollowHistory);
                    }

                    string str4Score = string.Empty;
                    if (((dataItem.Row["Param3"] == null) || (dataItem.Row["Param3"] is DBNull)) || (dataItem.Row["Param3"].ToString() == string.Empty))
                    {
                        str4Score = "Empty";
                    }
                    else
                    {
                        str4Score = Convert.ToString(dataItem.Row["Param3"]);
                    }
                    str4Score = string.Format("<a href='MemberScore.aspx?id={0}'>{1}</a>", dataItem.Row["id"], str4Score);

                    e.Item.Cells[7].Text = orignalString7.Replace("{NNN}", str4Note).Replace("{FFF}", str4FollowHistory).Replace("{SSS}", str4Score);
                }
                catch
                {
                }
            }
        }

        private void DataGridTable1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            this.DataGridTable1.CurrentPageIndex = e.NewPageIndex;
            this.DataGridTable1.DataBind();
        }

        private void InitializeComponent()
        {
            this.btnQuery.Click += new EventHandler(this.btnQuery_Click);
            this.btnDelete.Click += new EventHandler(this.btnDelete_Click);
            this.DataGridTable1.PageIndexChanged += new DataGridPageChangedEventHandler(this.DataGridTable1_PageIndexChanged);
            this.DataGridTable1.DataBinding += new EventHandler(this.DataGridTable1_DataBinding);
            this.DataGridTable1.ItemDataBound += new DataGridItemEventHandler(this.DataGridTable1_ItemDataBound);
            base.Load += new EventHandler(this.Page_Load);
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            string[] strArray = DataGridUtils.getID(this.DataGridTable1);
            if (strArray != null)
            {
                int num = 0;
                HuiyuanBN nbn = new HuiyuanBN(this.Page);
                for (int i = 0; i < strArray.Length; i++)
                {
                    int id = Convert.ToInt32(strArray[i]);
                    HuiyuanDT dt = nbn.Get(id);
                    dt.IsValid = 3;
                    if (nbn.Edit(dt))
                    {
                        num++;
                    }
                }
                //this.Page.RegisterStartupScript("", "<script language=javascript>alert('" + num.ToString().Trim() + "items are deleted in total');window.location='MemberList.aspx';</script>");
                this.ClientScript.RegisterStartupScript(this.GetType(),"alertMessage", "<script language=javascript>alert('" + num.ToString().Trim() + "items are deleted in total');window.location='MemberList.aspx';</script>");
            }
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            string str6;
            if (!(this.ddlColumn.SelectedValue != "0"))
            {
                return;
            }
            string str = "";
            string text = "";
            string str3 = "";
            string str4 = "";
            string str5 = "";
            switch (this.ddlColumn.SelectedValue)
            {
                case "1":
                    str = " Fname like '%" + this.txKey.Text + "%' ";
                    goto Label_0349;

                case "8":
                    str = " Lname like '%" + this.txKey.Text + "%' ";
                    goto Label_0349;

                case "2":
                    int memberID = 0;
                    string temp = this.txKey.Text;
                    int.TryParse(temp,out memberID);
                    if (memberID > 0)
                    {
                        str = " id=" + memberID + " ";
                    }
                    else {
                        break;
                    }
                    
                    goto Label_0349;

                case "3":
                    text = this.txKey.Text;
                    str3 = text.Substring(0, 2);
                    str4 = text.Substring(3, 2);
                    str5 = text.Substring(6, 4);
                    str = " day(Regtime) =" + str3 + " and month(Regtime)=" + str4 + " and year(Regtime)=" + str5 + " ";
                    goto Label_0349;

                case "4":
                    str = " IsValid=1 ";
                    goto Label_0349;

                case "5":
                    str = " IsValid=0 ";
                    goto Label_0349;

                case "6":
                    str = " IsValid=8 ";
                    goto Label_0349;

                case "7":
                    str = " IsValid=9 ";
                    break;

                case "10":
                    text = this.txKey.Text;
                    str3 = text.Substring(0, 2);
                    str4 = text.Substring(3, 2);
                    str5 = text.Substring(6, 4);
                    str = " day(DBirth) =" + str3 + " and month(DBirth)=" + str4 + " and year(DBirth)=" + str5 + " ";
                    break;

                case "18":
                    str = "E.Employer like '%" + this.txKey.Text + "%'";
                    break;
            }
            if (((str6 = this.ddlColumn.SelectedValue) != null) && (string.IsInterned(str6) == "18"))
            {
                this.ViewState["SearchJoinEmployment"] = "true";
            }
            else
            {
                this.ViewState["SearchJoinEmployment"] = string.Empty;
            }
            Label_0349:
            this.txCondition.Text = str;
            this.DataGridTable1.DataBind();
        }

        private bool IsChooseUnCompleted()
        {
            return (this.ddlColumn.SelectedValue == "7");
        }

        protected override void OnInit(EventArgs e)
        {
            this.InitializeComponent();
            base.OnInit(e);
        }
    }
}