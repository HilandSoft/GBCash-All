namespace GoldJewellery
{
    using System;
    using System.Configuration;
    using System.Net;
    using System.Net.Mail;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;

    public class What_We_Buy : Page
    {
        protected TextBox Address;
        protected Button btnSubmit;
        protected CheckBox chkInsurance;
        protected CheckBox chkNews;
        protected TextBox City;
        protected DropDownList drpStates;
        protected TextBox firstname;
        protected HtmlForm form1;
        protected TextBox lastname;
        protected TextBox postalcode;
        protected TextBox txtEmail;
        protected TextBox txtPhoneNumber;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string text = this.firstname.Text;
            string text1 = this.lastname.Text;
            string text2 = this.Address.Text;
            string str2 = this.City.Text;
            string str3 = this.drpStates.SelectedItem.Text;
            string text3 = this.postalcode.Text;
            string str4 = this.txtPhoneNumber.Text;
            string address = this.txtEmail.Text;
            string host = ConfigurationManager.AppSettings["mailSMTP"];
            string addresses = ConfigurationManager.AppSettings["mailTo"];
            string userName = ConfigurationManager.AppSettings["usernameSMTP"];
            string password = ConfigurationManager.AppSettings["passwordSMTP"];
            MailMessage message = new MailMessage();
            message.From = new MailAddress(address);
            message.To.Add(addresses);
            message.Subject = "Request For Secure Gold Pack";
            message.IsBodyHtml = true;
            string str10 = " <table style='width: 100%;'>";
            str10 = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((str10 + "<tr>") + "    <td colspan='2'>" + "<img alt='' style=' width: 180px; height: 63px;' src='http://gbcash.com.au/ImagesN/logo.jpg' /></td>") + "</tr>" + "<tr>") + "<td>" + "&nbsp;</td>") + "<td>" + "&nbsp;</td>") + "</tr>" + "<tr>") + "<td colspan='2' align='center'>" + "You have received a request for a quote with following information:</td>") + "</tr>" + "<tr>") + "<td colspan='2' align='center'>" + "<table style='Width:70%'>") + "<tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "  First Name</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + text + "</td>") + " </tr>") + " <tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "  Last Name</td>" + "<td style='padding:5px;text-align:left;width:70%'>") + this.lastname + "</td>") + "</tr>") + "<tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + " Address</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + this.Address + "</td>") + " </tr>") + "<tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "    City</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + str2 + "Test Name</td>") + " </tr>") + "  <tr>" + "   <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "    State</td>" + "  <td style='padding:5px;text-align:left;width:70%'>") + str3 + "</td>") + " </tr>") + "  <tr>" + "  <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "  Postal Code</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + this.postalcode + "</td>") + "</tr>") + " <tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "   Phone Number</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + str4 + "</td>") + "</tr>") + " <tr>" + " <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "   Email</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + address + "</td>") + " </tr>") + " <tr>" + "   <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "     Include my free $ 15,000 Insurance</td>" + " <td style='padding:5px;text-align:left;width:70%'>") + this.chkInsurance.Checked.ToString() + "</td>") + "  </tr>") + " <tr>" + "    <td style='padding:5px;text-align:right;width:30%;font-family: Georgia, Times New Roman , Times, serif;font-weight:bold;'>") + "      Receive latest news</td>" + "  <td style='padding:5px;text-align:left;width:70%'>") + this.chkNews.Checked.ToString() + "</td>") + " </tr>") + " <tr>" + "   <td>") + "        &nbsp;</td>" + "   <td>") + "       &nbsp;</td>" + "  </tr>") + " </table>" + "</td>") + " </tr>" + " <tr>") + " <td align='center'>" + " <div>") + "  &copy; Copyright Golden Bridge Cash Solution Pty Ltd " + DateTime.Now.Year.ToString() + "</div>") + "</td>") + " </tr>" + "  </table>";
            message.Body = str10;
            SmtpClient client = new SmtpClient(host);
            client.Port = 0x24b;
            client.Credentials = new NetworkCredential(userName, password);
            client.EnableSsl = true;
            try
            {
                client.Send(message);
                base.Response.Redirect("Thankyou.aspx");
            }
            catch (Exception)
            {
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

    }
}

