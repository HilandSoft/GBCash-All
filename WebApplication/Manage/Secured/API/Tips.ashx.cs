using System.Collections.Generic;
using System.Web;
using HiLand.General.BLL;
using HiLand.General.Entity;
using HiLand.Utility.Data;

namespace Lina.WebApp.Manage.Secured.API
{
    /// <summary>
    /// Tips 的摘要说明
    /// </summary>
    public class Tips : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string tipCount = "";

            string orderClause = "LoanID DESC";
            string whereClause = string.Format(" ReadDate is null OR ReadDate= '{0}' ", DateTimeHelper.Min);
            List<LoanBasicEntity> entityList = LoanBasicBLL.Instance.GetList(whereClause, orderClause);

            if (entityList != null)
            {
                int unDealedInfoCount4GBCash = entityList.Count;
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