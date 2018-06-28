namespace YingNet.WeiXing.Business.CommonLogic
{
    using System;
    using System.Configuration;

    public class CommonInformation
    {
        public static int CurrentVersion
        {
            get
            {
                int num = 2;
                try
                {
                    if ((ConfigurationManager.AppSettings["CurrentVersion"] != null) && (ConfigurationManager.AppSettings["CurrentVersion"] != string.Empty))
                    {
                        num = Convert.ToInt32(ConfigurationManager.AppSettings["CurrentVersion"]);
                    }
                }
                catch
                {
                }
                return num;
            }
        }
    }
}

