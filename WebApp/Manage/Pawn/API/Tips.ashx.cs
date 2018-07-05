using System.Data;
using System.Web;
using YingNet.WeiXing.Business;

namespace Lina.WebApp.Manage.Pawn.API
{
    /// <summary>
    /// Tips 的摘要说明
    /// </summary>
    public class Tips : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string tipCount = "";

            //string commandString = "select COUNT(1) from info";
            //string tipCount= SqlHelperEx.Instance.ExecuteScalar(commandString).ToString();

            
            DataTable list = InfoBN.GetQueryValid(1);
            if (list != null)
            {
               int unDealedInfoCount4GBCash = list.Rows.Count;
                tipCount = unDealedInfoCount4GBCash.ToString();
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write(tipCount);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}