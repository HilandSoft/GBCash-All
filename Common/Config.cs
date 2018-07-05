using System;
using System.Configuration;

namespace YingNet.Common
{
    public class Config
    {
        private static string dataSource = null;
        /// <summary>
        /// ���ݿ������ַ���
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
        /// �Ƿ�Ҫ�������ݿ�����
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
        /// ���ݿ��¼����ʹ�õĸ�ʽ
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
        /// ����ʹ�õ����ڸ�ʽ,����վǰ̨��ʾ�ĸ�ʽ
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
        /// ��ȡָ����������
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
