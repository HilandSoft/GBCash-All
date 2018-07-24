﻿using System;
using System.Data;
using YingNet.Common;
using YingNet.WeiXing.Business;
using YingNet.WeiXing.DB.Data;

namespace Lina.WebApp.Manage
{
    public partial class LoanReject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployedBN dbn = new EmployedBN(this.Page);
            int id = Convert.ToInt32(base.Request["id"]);
            EmployedDT dt = dbn.Get(id);
            int num2 = dt.Param3;
            dt.IsValid = 0;
            dbn.Edit(dt);
            string commandText = "update Schedule set IsValid=0 where Param1='" + id.ToString() + "'";
            SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            if (num2 == 1)
            {
                commandText = "update Huiyuan set IsValid=8 where id = (select huiSid from Employed where id=" + id + ")";
                SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            }
            commandText = "delete from cs_ProcessCenter where UserLoanType=0 and userid=(select huiSid from Employed where id=" + id + ")";
            SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            base.Response.Write("<script>alert('Success!');window.location.href='MemberList.aspx';</script>");
        }
    }
}