using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApp
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString= ConfigurationManager.ConnectionStrings["gbcashConn"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string commString = "select count(1) as count from info";
            SqlCommand comm = new SqlCommand(commString,conn);
            using (conn) {
                conn.Open();
                int count=(int) comm.ExecuteScalar();
                this.Button1.Text = count.ToString();
            }
        }
    }
}