using System;
using System.Data;
using YingNet.Common;
using YingNet.Common.Utils;
using YingNet.WeiXing.Business;

namespace WebApp.Manage
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////進行過期操作，暫時不使用
            //DataTable list = new HuiyuanBN(this.Page).GetList();
            //for (int i = 0; i < list.Rows.Count; i++)
            //{
            //    DateTime time = Convert.ToDateTime(list.Rows[i]["Regtime"]);
            //    int num2 = Convert.ToInt32(list.Rows[i]["IsValid"]);
            //    string commandText = "";
            //    TimeSpan span = (TimeSpan)(SafeDateTime.LocalNow - time);
            //    switch (num2)
            //    {
            //        case 0:
            //            if (span.Days >= 15)
            //            {
            //                commandText = "update Huiyuan set IsValid=5 where id =" + list.Rows[i]["id"].ToString();
            //                SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            //            }
            //            break;

            //        case 8:
            //            if (span.Days >= 3)
            //            {
            //                commandText = "update Huiyuan set IsValid=6 where id =" + list.Rows[i]["id"].ToString();
            //                SqlHelper.ExecuteNonQuery(Config.DataSource, CommandType.Text, commandText, null);
            //            }
            //            break;
            //    }
            //}
        }
    }
}