using System;
using System.Configuration;

namespace YingNet.Common
{
    public class Config
    {
        private static string dataSource = null;
        /// <summary>
        /// 数据库连接字符串
        /// </summary>
        public static string DataSource
        {
            get
            {
                if (CacheConnectionStrings == true)
                {
                    if (dataSource == null)
                    {
                        dataSource = ConfigurationManager.ConnectionStrings["mainConnection"].ConnectionString;
                    }
                    return dataSource;
                }
                else
                {
                    return ConfigurationManager.ConnectionStrings["mainConnection"].ConnectionString;
                }
            }
            set
            {
                dataSource = value;
            }
        }

        private static Nullable<bool> cacheConnectionStrings = null;
        /// <summary>
        /// 是否要缓存数据库连接
        /// </summary>
        private static bool CacheConnectionStrings
        {
            get
            {
                if (cacheConnectionStrings == null)
                {
                    string temp = AppSetting("cacheConnectionStrings");
                    if (temp == null)
                    {
                        cacheConnectionStrings = true;
                    }
                    else {
                        bool cache = false;
                        Boolean.TryParse(temp,out  cache);
                        cacheConnectionStrings = cache;
                    }                    
                }

                return cacheConnectionStrings.Value;
            }
        }


        private static string dateRecordFormat = "MM/dd/yyyy";
        /// <summary>
        /// 数据库记录日期使用的格式
        /// </summary>
        public static string DateRecordFormat
        {
            get
            {
                string temp = ConfigurationManager.AppSettings["DateRecordFormat"];
                if (temp != null && temp != string.Empty)
                {
                    dateRecordFormat = temp;
                }

                return dateRecordFormat;
            }
        }

        private static string dateDisplayFormat = "dd/MM/yyyy";
        /// <summary>
        /// 澳洲使用的日期格式,在网站前台显示的格式
        /// </summary>
        public static string DateDisplayFormat
        {
            get
            {
                string temp = ConfigurationManager.AppSettings["DateDisplayFormat"];
                if (temp != null && temp != string.Empty)
                {
                    dateDisplayFormat = temp;
                }

                return dateDisplayFormat;
            }
        }

        /// <summary>
        /// 获取指定的设置项
        /// </summary>
        /// <param name="settingName"></param>
        /// <returns></returns>
        public static string AppSetting(string settingName)
        {
            string temp = ConfigurationManager.AppSettings[settingName];
            return temp;
        }

    }
}
