using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HiLand.Utility.Setting;

namespace Lina.WebApp.API
{
    /// <summary>
    /// Config 的摘要说明
    /// </summary>
    public class Configs : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string configName = HttpContext.Current.Request.Params["configName"];
            string configValue= Config.GetAppSetting(configName);
            context.Response.Write(configValue);
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