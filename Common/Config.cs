using System;
using System.Configuration;

namespace YingNet.Common
{
	public class Config
	{
		
		private static string m_strDataSource = null;
		/// <summary>
		/// ���ݿ������ַ���
		/// </summary>
		public static string DataSource
		{
			get
			{
				if( m_strDataSource == null )
				{
					m_strDataSource = ConfigurationManager.ConnectionStrings["mainConnection"].ConnectionString ;
				}
				return m_strDataSource;
			}
			set
			{
				m_strDataSource = value;
			}
		}

		private static string dateRecordFormat= "MM/dd/yyyy";
		/// <summary>
		/// ���ݿ��¼����ʹ�õĸ�ʽ
		/// </summary>
		public static string DateRecordFormat
		{
			get
			{
				string temp= ConfigurationManager.AppSettings["DateRecordFormat"] ;
				if(temp!=null && temp!=string.Empty)
				{
					dateRecordFormat= temp;
				}

				return dateRecordFormat;
			}
		}

		private static string dateDisplayFormat= "dd/MM/yyyy";
		/// <summary>
		/// ����ʹ�õ����ڸ�ʽ,����վǰ̨��ʾ�ĸ�ʽ
		/// </summary>
		public static string DateDisplayFormat
		{
			get
			{
				string temp= ConfigurationManager.AppSettings["DateDisplayFormat"] ;
				if(temp!=null && temp!=string.Empty)
				{
					dateDisplayFormat= temp;
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
			string temp= ConfigurationManager.AppSettings[settingName] ;
			return temp;
		}

	}
}