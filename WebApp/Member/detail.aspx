<%@ Register TagPrefix="uc1" TagName="MemberLeft" Src="MemberLeft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MemberTop" Src="MemberTop.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CircleDropDownList" Src="../Include/CircleDropDownList.ascx" %>
<%@ Page language="c#" Codebehind="detail.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.detail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Golden Bridge Cash Solution</title>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../javascriptN/jquery-1.4.4.min.js"></script>
		<script language="javascript" type="text/javascript" src="../jslib/commCheck.js"></script>
		<script language="javascript">
		function  CheckFeedback1() {
		var ftxEmployer=document.getElementById("txEmployer");
		var ftxAddress=document.getElementById("txAddress");
		var ftxPhone=document.getElementById("txPhone");
		var ftxJob=document.getElementById("txJob");
		var ftxIncome=document.getElementById("txIncome");		
		var ftxMm1=document.getElementById("txMm1");		
		var ftxDd1=document.getElementById("txDd1");		
		var ftxYy1=document.getElementById("txYy1");
		
		if(!chkNull(ftxEmployer.value)) {
		alert(" Field 'Employer' under 'Employment Information' is not valid");
		ftxEmployer.focus();
		return false;
		}
		
		if(!chkNull(ftxAddress.value)) {
		alert(" Field 'Employer's Address' under 'Employment Information' is not valid");
		ftxAddress.focus();
		return false;
		}
		
		if(!chkNull(ftxPhone.value)) {
		alert(" Field 'Employer's Phone Number' under 'Employment Information' is not valid");
		ftxPhone.focus();
		return false;
		}
		
		if(!chkNull(ftxJob.value)) {
		alert(" Field 'Job Title' under 'Employment Information' is not valid!");
		ftxJob.focus();
		return false;
		}
		
		if(!chkNull(ftxIncome.value)) {
		alert(" Field 'Net Income' under 'Employment Information' is not valid");
		ftxIncome.focus();
		return false;
		}
		
		if((!chkNull(ftxMm1.value))||(!chkNull(ftxDd1.value))||(!chkNull(ftxYy1.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid");
		return false;
		}
		
		if((!chkdigital(ftxMm1.value))||(!chkdigital(ftxDd1.value))||(!chkdigital(ftxYy1.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid");
		return false;
		}
		
		return true;
		}		
		
		
		function  CheckFeedback2() {
		var ftxType=document.getElementById("txType");
		var ftxOffice=document.getElementById("txOffice");
		var ftxContact=document.getElementById("txContact");
		var ftxBenefit=document.getElementById("txBenefit");		
		var ftxMm4=document.getElementById("txMm4");		
		var ftxDd4=document.getElementById("txDd4");		
		var ftxYy4=document.getElementById("txYy4");
		
		if(!chkNull(ftxType.value)) {
		alert(" Field 'Type of Benefit' under 'Employment Information' is not valid");
		ftxType.focus();
		return false;
		}
		
		if(!chkNull(ftxOffice.value)) {
		alert(" Field 'Centreline Office' under 'Employment Information' is not valid");
		ftxOffice.focus();
		return false;
		}
		
		if(!chkNull(ftxContact.value)) {
		alert(" Field 'Contact Name' under 'Employment Information' is not valid");
		ftxContact.focus();
		return false;
		}
		
		if(!chkNull(ftxBenefit.value)) {
		alert(" Field 'Monthly Benefit' under 'Employment Information' is not valid");
		ftxBenefit.focus();
		return false;
		}
		
		if((!chkNull(ftxMm4.value))||(!chkNull(ftxDd4.value))||(!chkNull(ftxYy4.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid");
		return false;
		}
		
		if((!chkdigital(ftxMm4.value))||(!chkdigital(ftxDd4.value))||(!chkdigital(ftxYy4.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid");
		return false;
		}
		
		return true;
		}
		</script>
		<LINK rel="stylesheet" type="text/css" href="../CSSN/final.css">
			<style type="text/css">.style2 {
	FONT-FAMILY: Verdana; FONT-SIZE: small
}
</style>
	</HEAD>
	<body>
		<!--start top--><uc1:membertop id="MemberTop1" runat="server"></uc1:membertop>
		<!--end top-->
		<!--start homebanner-->
		<!--start subbanner-->
		<div id="subheader">
			<h1>Member Console</h1>
		</div>
		<!--end subbanner-->
		<!--start main-->
		<div id="main">
			<!--start process--><uc1:memberleft id="MemberLeft1" runat="server"></uc1:memberleft>
			<!--end process-->
			<div style="MARGIN-LEFT: 0px" id="content">
				<form id="Form1" method="post" runat="server">
					<p><strong>Please make sure these are always kept up to date. </strong><strong>If you 
							have any problems updating this information, please contact us at <a href="tel:1300 137 906">1300 137 906</a> </strong>
					</p>
					<div class="table table-mobile table-between table-between--2col">
						<div class="table__section">
							<div class="table__title">Member Information <INPUT style="WIDTH: 40px; HEIGHT: 21px" id="Hidden1" size="1" type="hidden" name="Hidden1"
								runat="server"></div>
							<div class="table__row">
								<div class="table__label">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Title:</div>
									<asp:dropdownlist id="dlTitle" runat="server">
										<asp:ListItem Value="Mr">Mr</asp:ListItem>
										<asp:ListItem Value="Mrs">Mrs</asp:ListItem>
										<asp:ListItem Value="Miss">Miss</asp:ListItem>
										<asp:ListItem Value="Ms">Ms</asp:ListItem>
										<asp:ListItem Value="Dr">Dr</asp:ListItem>
									</asp:dropdownlist>
								</div></div>
							</div>
							<div class="table__row">
								<div class="table__label">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">First Name:</div>
									<input id="txFname" readOnly size="15" name="textfield26" runat="server">
									<FONT color="#990000" face="???">*</FONT>
								</div></div>
								<div class="table__data">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Middle Name:</div>
									<INPUT id="txMname" readOnly size="15" name="textfield262" runat="server">
								</div></div>
							</div>
							<div class="table__row">
								<div class="table__label">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Last Name:</div>
									<input id="txLname" readOnly size="15" name="textfield27" runat="server"> <FONT color="#990000" face="???">
										*</FONT>
								</div></div>
								<div class="table__data">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Customer No:</div>
									<input id="txNo" readOnly size="15" name="textfield27" runat="server">
								</div></div>
							</div>
							<div class="table__row">
								<div class="table__label">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Date of Birth:</div>
									<input id="txDate" readOnly size="15" name="textfield29" runat="server"> <FONT color="#990000" face="???">
										*</FONT>
								</div></div>
								<div class="table__data">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">E-Mail:</div>
									<input id="txEmail" size="15" name="textfield28" runat="server"> <FONT color="#990000" face="???">
										*</FONT>
								</div></div>
							</div>
							<div class="table__row">
								<div class="table__label">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">Driver Licence Number:</div>
									<INPUT id="txDriver" size="15" name="textfield28" runat="server"> <FONT face="???"></FONT>
								</div></div>
								<div class="table__data">
									<div class="hlDiv"><div class="span" style="display:inline-block;vertical-align:top;">State Issued:</div>
									<INPUT id="txIssue" size="15" name="textfield29" runat="server"> <FONT face="???"></FONT>
								</div></div>
							</div>
						</div>
						<div class="table__section">
							<div class="table__row">
								<div class="table__label">Home Address:</div>
								<div class="table__data">
									<input id="txResident" name="textfield2622" runat="server">
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Street:</div>
								<div class="table__data">
									<input id="txStreet" name="textfield2622" runat="server"> <FONT color="#990000" face="???">
										*</FONT>
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Suburb:</div>
								<div class="table__data">
									<input id="txCity" size="9" name="textfield292" runat="server"> <FONT color="#990000" face="???">*</FONT>
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">State:</div>
								<div class="table__data">
									<SELECT id="selState" name="select2" runat="server">
										<OPTION selected value="ACT">ACT</OPTION>
										<OPTION value="QLD">QLD</OPTION>
										<OPTION value="NSW">NSW</OPTION>
										<OPTION value="NT">NT</OPTION>
										<OPTION value="SA">SA</OPTION>
										<OPTION value="TAS">TAS</OPTION>
										<OPTION value="VIC">VIC</OPTION>
										<OPTION value="WA">WA</OPTION>
									</SELECT>
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Postcode:</div>
								<div class="table__data">
									<input id="txPost" name="textfield2623" runat="server"> <FONT color="#990000" face="???">*</FONT>
								</div>
							</div>
						</div>
						<div class="table__section">
							<div class="table__row">
								<div class="table__label">Time at this address:</div>
								<div class="table__data table__data-time">
									<SELECT id="txYear" name="select2" runat="server">
										<OPTION selected value="0">0</OPTION>
										<OPTION value="1">1</OPTION>
										<OPTION value="2">2</OPTION>
										<OPTION value="3">3</OPTION>
										<OPTION value="4">4</OPTION>
										<OPTION value="5">5</OPTION>
										<OPTION value="6">6</OPTION>
										<OPTION value="7">7</OPTION>
										<OPTION value="8">8</OPTION>
										<OPTION value="9">9</OPTION>
										<OPTION value="10">10</OPTION>
										<OPTION value="11">11</OPTION>
										<OPTION value="12">12 or above</OPTION>
									</SELECT> Years&nbsp;
									<SELECT id="txMonth" name="select2" runat="server">
										<OPTION selected value="0">0</OPTION>
										<OPTION value="1">1</OPTION>
										<OPTION value="2">2</OPTION>
										<OPTION value="3">3</OPTION>
										<OPTION value="4">4</OPTION>
										<OPTION value="5">5</OPTION>
										<OPTION value="6">6</OPTION>
										<OPTION value="7">7</OPTION>
										<OPTION value="8">8</OPTION>
										<OPTION value="9">9</OPTION>
										<OPTION value="10">10</OPTION>
										<OPTION value="11">11</OPTION>
										<OPTION value="12">12</OPTION>
									</SELECT> Months
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Home Phone Number:</div>
								<div class="table__data">
									<input id="txTel" size="10" name="textfield282" runat="server"> <FONT color="#990000" face="???">
										*</FONT>
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Mobile:</div>
								<div class="table__data">
									<input id="txMobile" size="10" name="textfield282" runat="server"> <FONT color="#990000" face="???">
									</FONT>
								</div>
							</div>
							<div class="table__row">
								<div class="table__label">Fax:</div>
								<div class="table__data">
									<input id="txFax" size="10" name="textfield282" runat="server"> <FONT color="#990000" face="???"></FONT>
								</div>
							</div>
						</div>
						<div class="table__section">
							<div class="table__title">Employment Information<INPUT id="Hidden2" size="1" type="hidden" name="Hidden1" runat="server"></div>
							<div class="table__row">
								<asp:radiobuttonlist id="RadioButtonList1" runat="server" Visible="False" AutoPostBack="True" Width="352px">
									<asp:ListItem Value="0" Selected="True">I'm  currently employed.</asp:ListItem>
									<asp:ListItem Value="1">I'm  on a benefit.</asp:ListItem>
								</asp:radiobuttonlist>
							</div>
							<asp:panel id="Panel1" runat="server" Visible="True">
								<div class="table__row">
									<div class="table__label">Your Occupation:</div>
									<div class="table__data">
										<FONT face="???"></FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Employer:</div>
									<div class="table__data">
										<INPUT id="txEmployer" name="textfield2922" runat="server"> <FONT color="#990000" face="???">*
										</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Employer's Address:</div>
									<div class="table__data">
										<INPUT id="txAddress" name="textfield2923" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Employer Phone:</div>
									<div class="table__data">
										<INPUT id="txPhone" name="textfield2924" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Job Title:</div>
									<div class="table__data">
										<INPUT id="txJob" name="textfield2924" runat="server"> *
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Time Employed:</div>
									<div class="table__data table__data-time">
										<SELECT id="Select1" name="select2" runat="server">
											<OPTION selected value="0">0</OPTION>
											<OPTION value="1">1</OPTION>
											<OPTION value="2">2</OPTION>
											<OPTION value="3">3</OPTION>
											<OPTION value="4">4</OPTION>
											<OPTION value="5">5</OPTION>
											<OPTION value="6">6</OPTION>
											<OPTION value="7">7</OPTION>
											<OPTION value="8">8</OPTION>
											<OPTION value="9">9</OPTION>
											<OPTION value="10">10</OPTION>
											<OPTION value="11">11</OPTION>
											<OPTION value="12">12 or above</OPTION>
										</SELECT> Years&nbsp;
										<SELECT id="Select2" name="select2" runat="server">
											<OPTION selected value="0">0</OPTION>
											<OPTION value="1">1</OPTION>
											<OPTION value="2">2</OPTION>
											<OPTION value="3">3</OPTION>
											<OPTION value="4">4</OPTION>
											<OPTION value="5">5</OPTION>
											<OPTION value="6">6</OPTION>
											<OPTION value="7">7</OPTION>
											<OPTION value="8">8</OPTION>
											<OPTION value="9">9</OPTION>
											<OPTION value="10">10</OPTION>
											<OPTION value="11">11</OPTION>
											<OPTION value="12">12</OPTION>
										</SELECT> Months
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Take home pay after taxes:</div>
									<div class="table__data">
										<INPUT id="txIncome" name="textfield29242" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">When are you paid:</div>
									<div class="table__data">
										<asp:RadioButtonList id="RadioButtonList2" runat="server" Width="224px" RepeatDirection="Horizontal">
											<asp:ListItem Value="Weekly" Selected="True">Weekly</asp:ListItem>
											<asp:ListItem Value="F'nightly">F'nightly</asp:ListItem>
											<asp:ListItem Value="Monthly">Monthly &lt;FONT face=&quot;???&quot; color=&quot;#990000&quot;&gt;*&lt;/FONT&gt;</asp:ListItem>
										</asp:RadioButtonList>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Next payday:</div>
									<div class="table__data table__data-date">
										DD <INPUT id="txDd1" size="4" name="textfield29243" runat="server"> 
											MM <INPUT id="txMm1" size="4" name="textfield292432" runat="server"> YYYY <INPUT id="txYy1" size="4" name="textfield292433" runat="server"> *
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Purpose of the loan:</div>
									<div class="table__data">
										<asp:textbox id="txtLoanPurpose" runat="server" Height="45px"></asp:textbox>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Your rent/mortgage payment:</div>
									<div class="table__data table__data--payment">
										$ <INPUT id="txtHousePaymentValue" size="12" name="txtHousePaymentValue" runat="server">
											<uc1:circledropdownlist id="ddlHousePaymentCircle" runat="server"></uc1:circledropdownlist>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Your regular repayment to other lenders:</div>
									<div class="table__data table__data--payment">
										$ <INPUT id="txtOtherLenderValue" size="12" name="txtOtherLenderValue" runat="server">
											<uc1:circledropdownlist id="ddlOtherLenderCircle" runat="server"></uc1:circledropdownlist>
									</div>
								</div>
							</asp:panel>
							<asp:panel id="Panel2" runat="server" Visible="False">
								<div class="table__row">
									<div class="table__label">Type of benefit:</div>
									<div class="table__data">
										<INPUT id="txType" size="15" name="textfield2925" runat="server"> <FONT color="#990000" face="???">*
										</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Centrelink Office:</div>
									<div class="table__data">
										<INPUT id="txOffice" size="15" name="textfield29222" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Contact Name:</div>
									<div class="table__data">
										<INPUT id="txContact" size="15" name="textfield29232" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">How long on this benefit:</div>
									<div class="table__data table__data-time">
										<SELECT id="txYear2" name="select2" runat="server">
											<OPTION selected value="0">0</OPTION>
											<OPTION value="1">1</OPTION>
											<OPTION value="2">2</OPTION>
											<OPTION value="3">3</OPTION>
											<OPTION value="4">4</OPTION>
											<OPTION value="5">5</OPTION>
											<OPTION value="6">6</OPTION>
											<OPTION value="7">7</OPTION>
											<OPTION value="8">8</OPTION>
											<OPTION value="9">9</OPTION>
											<OPTION value="10">10</OPTION>
											<OPTION value="11">11</OPTION>
											<OPTION value="12">12 or above</OPTION>
										</SELECT> Years&nbsp;
										<SELECT id="txMonth2" name="select2" runat="server">
											<OPTION selected value="0">0</OPTION>
											<OPTION value="1">1</OPTION>
											<OPTION value="2">2</OPTION>
											<OPTION value="3">3</OPTION>
											<OPTION value="4">4</OPTION>
											<OPTION value="5">5</OPTION>
											<OPTION value="6">6</OPTION>
											<OPTION value="7">7</OPTION>
											<OPTION value="8">8</OPTION>
											<OPTION value="9">9</OPTION>
											<OPTION value="10">10</OPTION>
											<OPTION value="11">11</OPTION>
											<OPTION value="12">12</OPTION>
										</SELECT> Months
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Take Home Benefit:</div>
									<div class="table__data">
										<INPUT id="txBenefit" size="15" name="textfield2924222" runat="server"> <FONT color="#990000" face="???">*</FONT>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">When are you paid:</div>
									<div class="table__data">
										<asp:RadioButtonList id="RadioButtonList3" runat="server" Width="224px" RepeatDirection="Horizontal">
											<asp:ListItem Value="Weekly" Selected="True">Weekly</asp:ListItem>
											<asp:ListItem Value="F'nightly">F'nightly</asp:ListItem>
											<asp:ListItem Value="Monthly">Monthly &lt;FONT face=&quot;???&quot; color=&quot;#990000&quot;&gt;*&lt;/FONT&gt;</asp:ListItem>
										</asp:RadioButtonList>
									</div>
								</div>
								<div class="table__row">
									<div class="table__label">Next benefit due:</div>
									<div class="table__data table__data-date">
										DD <INPUT style="WIDTH: 40px; HEIGHT: 22px" id="txDd4" size="1" name="textfield292436" runat="server">
											MM <INPUT style="WIDTH: 40px; HEIGHT: 22px" id="txMm4" size="1" name="textfield2924324" runat="server">
											YYYY <INPUT style="WIDTH: 56px; HEIGHT: 22px" id="txYy4" size="4" name="textfield2924334" runat="server"> *
									</div>
								</div>	
								</asp:panel>
								<div class="table__row table__submit table__submit--right">
									<INPUT id="Submit1" value="Save" type="submit" name="Submit" runat="server"> <FONT face="">&nbsp;&nbsp;&nbsp;
												</FONT><INPUT value="Reset" type="reset" name="Submit2">
								</div>
						</div>	
					</div>	
				</form>
			</div>
		</div>
		<!--end main-->
		<!--start footer-->
		<div style="CLEAR: both"></div>
		<div id="footer">© Copyright Golden Bridge Cash Solution Pty Ltd 2011</div>
		<script type="text/javascript">
        $(document).ready(function(){
				$("#menuItemYourProfile").addClass("actived");
			});
		</script>
		<!--end footer-->
	</body>
</HTML>
