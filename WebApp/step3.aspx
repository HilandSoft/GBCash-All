<%@ Page language="c#" Codebehind="step3.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.step3" %>
<%@ Register TagPrefix="uc1" TagName="CircleDropDownList" Src="Include/CircleDropDownList.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>step3</title>
<meta content="Microsoft Visual Studio .NET 7.1" name=GENERATOR>
<meta content=C# name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema><LINK href="css/css.css" type=text/css rel=stylesheet ><LINK href="jslib/jquery-cluetip/jquery.cluetip.css" type=text/css rel=stylesheet >
<script language=javascript src="jslib/commCheck.js" type=text/javascript></script>

<script language=javascript src="jslib/jquery-cluetip/lib/jquery-1.7.1.min.js" 
type=text/javascript></script>

<script language=javascript src="jslib/jquery-cluetip/jquery.cluetip.min.js" 
type=text/javascript></script>

<script language=javascript>
		function  CheckFeedback1() {
		var ftxEmployer=document.getElementById("txEmployer");
		var ftxAddress=document.getElementById("txAddress");
		var ftxPhone=document.getElementById("txPhone");
		var ftxJob=document.getElementById("txJob");
		var ftxIncome=document.getElementById("txIncome");
		
		var ftxMm1=document.getElementById("txMm1");
		
		var ftxDd1=document.getElementById("txDd1");
		
		var ftxYy1=document.getElementById("txYy1");
		
		var ftxtHousePaymentValue= document.getElementById("txtHousePaymentValue");
		var ftxtOtherLenderValue= document.getElementById("txtOtherLenderValue");
		
		if(!chkNull(ftxtHousePaymentValue.value)) {
		alert(" Field 'Your rent/mortgage payment' under 'Expenses Information' is not valid!");
		ftxtHousePaymentValue.focus();
		return false;
		}
		
		if(!chkNull(ftxtOtherLenderValue.value)) {
		alert(" Field 'Your regular repayment to other lenders' under 'Expenses Information' is not valid!");
		ftxtOtherLenderValue.focus();
		return false;
		}
		
		var ftxtLoanPurpose= document.getElementById("txtLoanPurpose");
		if(!chkNull(ftxtLoanPurpose.value)) {
		alert("Please specify the primary purpose of the loan!");
		ftxtLoanPurpose.focus();
		return false;
		}
		
		if(!chkNull(ftxEmployer.value)) {
		alert(" Field 'Employer' under 'Employment Information' is not valid!");
		ftxEmployer.focus();
		return false;
		}
		
		if(!chkNull(ftxAddress.value)) {
		alert(" Field 'Employer's Address' under 'Employment Information' is not valid!");
		ftxAddress.focus();
		return false;
		}
		
		if(!chkNull(ftxPhone.value)) {
		alert(" Field 'Employer's Phone Number' under 'Employment Information' is not valid!");
		ftxPhone.focus();
		return false;
		}
		
		if(!chkNull(ftxJob.value)) {
		alert(" Field 'Job Title' under 'Employment Information' is not valid!");
		ftxJob.focus();
		return false;
		}
		
		if(!chkNull(ftxIncome.value)) {
		alert(" Field 'Net Income' under 'Employment Information' is not valid!");
		ftxIncome.focus();
		return false;
		}
		
		if(!chkdigital(ftxIncome.value)) {
		alert(" Field 'Net Income' under 'Employment Information' is not valid!");
		ftxIncome.focus();
		return false;
		}
		
		if((!chkNull(ftxMm1.value))||(!chkNull(ftxDd1.value))||(!chkNull(ftxYy1.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid!");
		return false;
		}
		
		if((!chkdigital(ftxMm1.value))||(!chkdigital(ftxDd1.value))||(!chkdigital(ftxYy1.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid!");
		return false;
		}
		
		if((ftxMm1.value.length>2)||(ftxDd1.value.length>2)||(ftxYy1.value.length!=4)) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid!");
		return false;
		}
		/*if((!chkNull(ftxMm1.value))||(!chkNull(ftxDd1.value))||(!chkNull(ftxYy1.value))||(!chkNull(ftxMm2.value))||(!chkNull(ftxDd2.value))||(!chkNull(ftxYy2.value))||(!chkNull(ftxMm3.value))||(!chkNull(ftxDd3.value))||(!chkNull(ftxYy3.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid��");
		return false;
		}
		
		if((!chkdigital(ftxMm1.value))||(!chkdigital(ftxDd1.value))||(!chkdigital(ftxYy1.value))||(!chkdigital(ftxMm2.value))||(!chkdigital(ftxDd2.value))||(!chkdigital(ftxYy2.value))||(!chkdigital(ftxMm3.value))||(!chkdigital(ftxDd3.value))||(!chkdigital(ftxYy3.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid��");
		return false;
		}*/
		
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
		alert(" Field 'Type of Benefit' under 'Employment Information' is not valid!");
		ftxType.focus();
		return false;
		}
		
		if(!chkNull(ftxOffice.value)) {
		alert(" Field 'Centreline Office' under 'Employment Information' is not valid!");
		ftxOffice.focus();
		return false;
		}
		
		if(!chkNull(ftxContact.value)) {
		alert(" Field 'Contact Name' under 'Employment Information' is not valid!");
		ftxContact.focus();
		return false;
		}
		
		if(!chkNull(ftxBenefit.value)) {
		alert(" Field 'Take Home Benefit' under 'Employment Information' is not valid!");
		ftxBenefit.focus();
		return false;
		}
		
		if(!chkdigital(ftxBenefit.value)) {
		alert(" Field 'Take Home Benefit' under 'Employment Information' is not valid!");
		ftxBenefit.focus();
		return false;
		}
		
		if((!chkNull(ftxMm4.value))||(!chkNull(ftxDd4.value))||(!chkNull(ftxYy4.value))) {
		alert(" Field 'Next benefit due' under 'Employment Information' is not valid!");
		return false;
		}
		
		if((!chkdigital(ftxMm4.value))||(!chkdigital(ftxDd4.value))||(!chkdigital(ftxYy4.value))) {
		alert(" Field 'Next benefit due' under 'Employment Information' is not valid!");
		return false;
		}
		
		if((ftxMm4.value.length>2)||(ftxDd4.value.length>2)||(ftxYy4.value.length!=4)) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid!");
		return false;
		}
		/*if((!chkNull(ftxMm4.value))||(!chkNull(ftxDd4.value))||(!chkNull(ftxYy4.value))||(!chkNull(ftxMm5.value))||(!chkNull(ftxDd5.value))||(!chkNull(ftxYy5.value))||(!chkNull(ftxMm6.value))||(!chkNull(ftxDd6.value))||(!chkNull(ftxYy6.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid��");
		return false;
		}
		
		if((!chkdigital(ftxMm4.value))||(!chkdigital(ftxDd4.value))||(!chkdigital(ftxYy4.value))||(!chkdigital(ftxMm5.value))||(!chkdigital(ftxDd5.value))||(!chkdigital(ftxYy5.value))||(!chkdigital(ftxMm6.value))||(!chkdigital(ftxDd6.value))||(!chkdigital(ftxYy6.value))) {
		alert(" Field 'Next Payday' under 'Employment Information' is not valid��");
		return false;
		}*/		
		
		return true;
		}
		
		
		function  CheckFeedback3() {
		var ftxBranch=document.getElementById("txBranch");
		var ftxBank=document.getElementById("txBank");
		var ftxAname=document.getElementById("txAname");
		var ftxBsb=document.getElementById("txBsb");
		var ftxAnumber=document.getElementById("txAnumber");
		var ftxCAnumber=document.getElementById("txCAnumber");
		
		var ftxReName1=document.getElementById("txReName1");
		var ftxReName2=document.getElementById("txReName2");
		var ftxReNum1=document.getElementById("txReNum1");
		var ftxReNum2=document.getElementById("txReNum2");
		
		if(!chkNull(ftxBranch.value)) {
		alert(" Field 'Branch' under 'Bank Information' is not valid!");
		ftxBranch.focus();
		return false;
		}
		
		if(!chkNull(ftxBank.value)) {
		alert(" Field 'Bank Name' under 'Bank Information' is not valid!");
		ftxBank.focus();
		return false;
		}
		
		if(!chkNull(ftxAname.value)) {
		alert(" Field 'Account Name' under 'Bank Information' is not valid!");
		ftxAname.focus();
		return false;
		}
		
		if(!chkNull(ftxBsb.value)) {
		alert(" Field 'BSB' under 'Bank Information' is not valid!");
		ftxBsb.focus();
		return false;
		}
		
		if(!chkNull(ftxAnumber.value)) {
		alert(" Field 'Bank Account Number' under 'Bank Information' is not valid!");
		ftxAnumber.focus();
		return false;
		}
		
		if(!chkNull(ftxCAnumber.value)) {
		alert(" You must confirm your account number by re-typing it!");
		ftxCAnumber.focus();
		return false;
		}
		
		if(ftxAnumber.value!=ftxCAnumber.value)  {
		alert(" You must confirm your account number by re-typing it!");
		ftxCAnumber.focus();
		return false;
		}
		
		/*--*****  *****--
		
		if(!chkNull(ftxReName1.value)) {
		alert(" Field 'Name 1' under 'Referees' is not valid!");
		ftxReName1.focus();
		return false;
		}
		
		if(!chkNull(ftxReNum1.value)) {
		alert(" Field 'Contact Number 1' under 'Referees' is not valid!");
		ftxReNum1.focus();
		return false;
		}
		
		if(!chkNull(ftxReName2.value)) {
		alert(" Field 'Name 2' under 'Referees' is not valid!");
		ftxReName2.focus();
		return false;
		}
		
		if(!chkNull(ftxReNum2.value)) {
		alert(" Field 'Contact Number 2' under 'Referees' is not valid!");
		ftxReNum2.focus();
		return false;
		}
		*/
		
		return true;
		}
		
		function  CheckFeedback4() {
		var itemA= $("#rblHasOtherSamllCredit_0").attr("checked");
		var itemB= $("#rblHasOtherSamllCredit_1").attr("checked");
		if(typeof(itemA)=="undefined"& typeof(itemB)=="undefined")
		{
			alert("Please select if you have any default in payment under other small amount credit contract.");
			return false;
		}
		
		if(!CheckFeedback1()) return false;
		if(!CheckFeedback3()) return false;
		return true;
		}
		
		function  CheckFeedback5() {
		if(!CheckFeedback2()) return false;
		if(!CheckFeedback3()) return false;
		return true;
		}
		
		function CheckLoan() {		
		var ftxLoan=document.getElementById("txLoan");	
		var ftxInstallment=document.getElementById("txInstallment");
		
		if(!chkNull(ftxLoan.value)) {
		alert(" Field 'Loan Requested' under 'Loan Requirements' is not valid!");
		ftxLoan.focus();
		return false;
		}
		
		if(!chkdigital(ftxLoan.value)) {
		alert(" Field 'Loan Requested' under 'Loan Requirements' is not valid!");
		ftxLoan.focus();
		return false;
		}
		
		/*if(!chkNull(ftxInstallment.value)) {
		alert(" Field 'Number of Instalment' under 'Loan Requirements' is not valid��");
		ftxInstallment.focus();
		return false;
		}
		
		if(!chkdigital(ftxInstallment.value)) {
		alert(" Field 'Number of Instalment' under 'Loan Requirements' is not valid��");
		ftxInstallment.focus();
		return false;
		}
		
		if(ftxInstallment.value>3) {
		alert(" Field 'Number of Instalment' under 'Loan Requirements' is not valid��");
		ftxInstallment.focus();
		return false;
		}*/
		
		return true;
		}
		</script>
</HEAD>
<body leftMargin=8 topMargin=0 MARGINWIDTH="0" 
MARGINHEIGHT="0">
<form id=Form1 method=post runat="server">
	<div class="table table-mobile table-between">
		<asp:panel class="panel" id=Panel5 runat="server">
			<div class="table__section">
				<div class="table__title">Employment Information</div>
				<div class="table__row">
					<div class="table__data">
							<asp:radiobuttonlist id=RadioButtonList1 runat="server" Width="352px" AutoPostBack="True" Visible="False">
								<asp:ListItem Value="0" Selected="True">I'm  currently employed.</asp:ListItem>
								<asp:ListItem Value="1">I'm  on a benefit.</asp:ListItem>
							</asp:radiobuttonlist>
					</div>
				</div>
			</div>
		</asp:panel>
		<asp:panel class="panel" id=Panel1 runat="server" Visible="True">
			<div class="table__section">
				<div class="table__row">
					<div class="table__label">Employer: <asp:TextBox id=txhuiSid runat="server" Width="24px" Visible="False"></asp:TextBox></div>
					<div class="table__data"><INPUT id=txEmployer size=20 name=textfield2922 runat="server"> <FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Employer's Address:</div>
					<div class="table__data"><INPUT id=txAddress size=20 name=textfield2923 
							runat="server"> <FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Employer Phone Number:</div>
					<div class="table__data"><INPUT id=txPhone size=20 name=textfield2924 
						runat="server"> <FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Job Title:</div>
					<div class="table__data"><INPUT id=txJob size=20 name=textfield2924 
						runat="server"> <FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Time Employed:</div>
					<div class="table__data table__data-time"><SELECT id=txYear name=select2 
						runat="server"><OPTION value=0 selected>0</OPTION> <OPTION 
						value=1>1</OPTION> <OPTION value=2>2</OPTION> <OPTION 
						value=3>3</OPTION> <OPTION value=4>4</OPTION> <OPTION 
						value=5>5</OPTION> <OPTION value=6>6</OPTION> <OPTION 
						value=7>7</OPTION> <OPTION value=8>8</OPTION> <OPTION 
						value=9>9</OPTION> <OPTION value=10>10</OPTION> <OPTION 
						value=11>11</OPTION> <OPTION value=12>12 or 
					above</OPTION></SELECT>Years&nbsp; <SELECT id=txMonth name=select2 
					runat="server"> <OPTION value=0 selected>0</OPTION> <OPTION 
						value=1>1</OPTION> <OPTION value=2>2</OPTION> <OPTION 
						value=3>3</OPTION> <OPTION value=4>4</OPTION> <OPTION 
						value=5>5</OPTION> <OPTION value=6>6</OPTION> <OPTION 
						value=7>7</OPTION> <OPTION value=8>8</OPTION> <OPTION 
						value=9>9</OPTION> <OPTION value=10>10</OPTION> <OPTION 
						value=11>11</OPTION> <OPTION 
						value=12>12</OPTION></SELECT>Months</div>
				</div>
				<div class="table__row">
					<div class="table__label">Take home pay after taxes:</div>
					<div class="table__data table__data--payment">$ <INPUT id=txIncome size=12 name=textfield29242 
						runat="server">.00<FONT face=���� color=#990000> <FONT face=���� 
						color=#990000>*</FONT></FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Per:</div>
					<div class="table__data">
						<asp:RadioButtonList class="table-mobile" id=RadioButtonList2 runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="Weekly" Selected="True">Weekly</asp:ListItem>
							<asp:ListItem Value="F'nightly">F'nightly</asp:ListItem>
							<asp:ListItem Value="Monthly">Monthly &lt;FONT face=&quot;����&quot; color=&quot;#990000&quot;&gt;*&lt;/FONT&gt;</asp:ListItem>
						</asp:RadioButtonList></div>
				</div>
				<div class="table__row">
					<div class="table__label">Next payday:</div>
					<div class="table__data table__data-date2">DD <INPUT id=txDd1 size=2 name=textfield29243 
						runat="server"> MM <INPUT id=txMm1 size=2 name=textfield292432 
						runat="server"> YYYY <INPUT id=txYy1 size=4 name=textfield292433 
						runat="server"><FONT face=���� color=#990000>*</FONT></div>
				</div>
			</div>
			<div class="table__section">
				<div class="table__title">Financial Obligations</div>
				<div class="table__row">
						Are you in default in payment under other <A 
						class=title 
						title="small amount credit contract: a credit contract is a small amount&#13;&#10;credit contract if:|(a) the contract is not a continuing credit contract; and |(b) the credit provider under the contract is not an ADI; and |(c) the credit limit of the contract is $2,000 (or such other&#13;&#10;amount as is prescribed by the regulations) or less; and |(d) the term of the contract is at least 16 days but not longer than&#13;&#10;1 year (or such other number of years as is prescribed by the regulations); and |(e) the debtor��s obligations under the contract are not, and will&#13;&#10;not be, secured; and |(f) the contract meets any other requirements prescribed by the regulations." 
						href="#">small amount credit contract</A>? 
						<asp:RadioButtonList id=rblHasOtherSamllCredit runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Yes</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:RadioButtonList>
				</div>
				<div class="table__row">
					How many other small amount credit contracts have you 
					had in the last 90 days? 
						<asp:DropDownList id=ddlSmalCreditCount runat="server">
							<asp:ListItem Value="0">nil</asp:ListItem>
							<asp:ListItem Value="1">1</asp:ListItem>
							<asp:ListItem Value="2">2</asp:ListItem>
							<asp:ListItem Value="3">3</asp:ListItem>
							<asp:ListItem Value="99">More than 3</asp:ListItem>
						</asp:DropDownList>
				</div>
			</div>
			<div class="table__section">
				<div class="table__title">Expenses Information</div>
				<div class="table__row">
					<div class="table__label">Your rent/mortgage payment:</div>
					<div class="table__data table__data--payment">$ <INPUT id=txtHousePaymentValue size=12 
						name=txtHousePaymentValue runat="server"> 
						<uc1:CircleDropDownList id=ddlHousePaymentCircle runat="server"></uc1:CircleDropDownList></div>
				</div>
				<div class="table__row">
					<div class="table__label">Your regular repayment to other lenders:</div>
					<div class="table__data table__data--payment">$ <INPUT id=txtOtherLenderValue size=12 
						name=txtOtherLenderValue runat="server"> 
						<uc1:CircleDropDownList id=ddlOtherLenderCircle runat="server"></uc1:CircleDropDownList></div>
				</div>
			</div>
		</asp:panel>

		<asp:panel class="panel" id=Panel2 runat="server" Visible="False">
			<div class="table__section">
				<div class="table__row">
					<div class="table__label">Type of benefit:</div>
					<div class="table__data"><INPUT id=txType size=22 name=textfield2925 
						runat="server"><FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Centrelink Office:</div>
					<div class="table__data"><INPUT id=txOffice size=22 name=textfield29222 
						runat="server"><FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Contact Telephone Number:</div>
					<div class="table__data"><INPUT id=txContact size=22 name=textfield29232 
						runat="server"><FONT face=���� color=#990000>*</FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">How long on this benefit:</div>
					<div class="table__data table__data-time"><SELECT id=txYear2 name=select2 
						runat="server"><OPTION value=0 selected>0</OPTION> <OPTION 
							value=1>1</OPTION> <OPTION value=2>2</OPTION> <OPTION 
							value=3>3</OPTION> <OPTION value=4>4</OPTION> <OPTION 
							value=5>5</OPTION> <OPTION value=6>6</OPTION> <OPTION 
							value=7>7</OPTION> <OPTION value=8>8</OPTION> <OPTION 
							value=9>9</OPTION> <OPTION value=10>10</OPTION> <OPTION 
							value=11>11</OPTION> <OPTION value=12>12 or 
						above</OPTION></SELECT>Years&nbsp; <SELECT id=txMonth2 name=select2 
						runat="server"> <OPTION value=0 selected>0</OPTION> <OPTION 
							value=1>1</OPTION> <OPTION value=2>2</OPTION> <OPTION 
							value=3>3</OPTION> <OPTION value=4>4</OPTION> <OPTION 
							value=5>5</OPTION> <OPTION value=6>6</OPTION> <OPTION 
							value=7>7</OPTION> <OPTION value=8>8</OPTION> <OPTION 
							value=9>9</OPTION> <OPTION value=10>10</OPTION> <OPTION 
							value=11>11</OPTION> <OPTION 
							value=12>12</OPTION></SELECT>Months</div>
				</div>
				<div class="table__row">
					<div class="table__label">Take Home Benefit:</div>
					<div class="table__data"><FONT face=���� color=#990000>$</FONT><INPUT 
						id=txBenefit size=15 name=textfield2924222 runat="server"><FONT 
						face=���� color=#990000>.00 <FONT face=���� 
						color=#990000>*</FONT></FONT><FONT face=���� 
						color=#990000></FONT></div>
				</div>
				<div class="table__row">
					<div class="table__label">Per:</div>
					<div class="table__data">
						<asp:RadioButtonList class="table-mobile" id=RadioButtonList3 runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="Weekly" Selected="True">Weekly</asp:ListItem>
							<asp:ListItem Value="F'nightly">F'nightly</asp:ListItem>
							<asp:ListItem Value="Monthly">Monthly &lt;FONT face=&quot;����&quot; color=&quot;#990000&quot;&gt;*&lt;/FONT&gt;</asp:ListItem>
						</asp:RadioButtonList></div>
				</div>
				<div class="table__row">
					<div class="table__label">Next benefit due:</div>
					<div class="table__data table__data-date">DD <INPUT id=txDd4 style="WIDTH: 40px; HEIGHT: 22px" 
						size=1 name=textfield292436 runat="server"> MM <INPUT id=txMm4 
						style="WIDTH: 40px; HEIGHT: 22px" size=1 name=textfield2924324 
						runat="server"> YYYY <INPUT id=txYy4 
						style="WIDTH: 56px; HEIGHT: 22px" size=4 name=textfield2924334 
						runat="server"><FONT face=���� color=#990000>*</FONT></div>
				</div>
				<!--
					<TR>
						<TD>&nbsp;</TD>
						<TD colSpan="3">MM <INPUT id="txMm5" type="text" size="4" name="textfield29243222" runat="server">
							DD <INPUT id="txDd5" type="text" size="4" name="textfield2924342" runat="server">
							YY <INPUT id="txYy5" type="text" size="4" name="textfield29243322" runat="server"><FONT face="����" color="#990000">*</FONT></TD>
					</TR>
					<TR>
						<TD>&nbsp;</TD>
						<TD colSpan="3">MM <INPUT id="txMm6" type="text" size="4" name="textfield29243232" runat="server">
							DD <INPUT id="txDd6" type="text" size="4" name="textfield2924352" runat="server">
							YY <INPUT id="txYy6" type="text" size="4" name="textfield29243332" runat="server"><FONT face="����" color="#990000">*</FONT></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="4">
							<asp:LinkButton id="Linkbutton2" runat="server">Next >>></asp:LinkButton></TD>
					</TR>
					-->
			</div>
		</asp:panel>
		
		<asp:panel class="panel" id=Panel3 runat="server" Visible="True">
				<div class="table__section">
						<div class="table__title">Bank Information</div>
						<p>This must be the account where your pay / benefit is paid into.</p>
						<p>This is the account we will credit to and deduct from.</p>
						<div class="table__row">
							<div class="table__label">Bank Name:</div>
							<div class="table__data">
									<INPUT id=txBank size=20 name=textfield2102 
									runat="server"> <FONT face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<div class="table__label">Branch:</div>
							<div class="table__data">
									<INPUT id=txBranch size=20 name=textfield210 
									runat="server"><FONT face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<div class="table__label">Account Name:</div>
							<div class="table__data">
									<INPUT id=txAname name=textfield211 
									runat="server"><FONT face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<div class="table__label">BSB:</div>
							<div class="table__data">
									<INPUT id=txBsb size=20 name=textfield2112 runat="server"><FONT 
										face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<div class="table__label">Account Number:</div>
							<div class="table__data">
									<INPUT id=txAnumber size=20 name=textfield21122 
									runat="server"><FONT face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<div class="table__label">Confirm Account Numer:</div>
							<div class="table__data">
									<INPUT id=txCAnumber name=textfield2113 
									runat="server"><FONT face=���� color=#990000>*</FONT>
							</div>
						</div>
						<div class="table__row">
							<p>Preferred methods of contact for this loan:</p>
							<asp:RadioButtonList class="table-mobile" id=RadioButtonList4 runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Value="Email" Selected="True">Email</asp:ListItem>
								<asp:ListItem Value="Mobile">Mobile</asp:ListItem>
								<asp:ListItem Value="Home Phone">Home Phone</asp:ListItem>
								<asp:ListItem Value="Work Phone">Work Phone</asp:ListItem>
							</asp:RadioButtonList>
						</div>
					</div>
				</div>
				<div class="table__section">
						<!--
							<TR>
								<TD width="132"><STRONG><BR>
										Referees</STRONG></TD>
								<TD width="132">&nbsp;</TD>
								<TD width="133">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan="3">Please provide 3 referees (relative preferred).</TD>
							</TR>
							<TR>
								<TD>Name</TD>
								<TD>Relationship</TD>
								<TD>Contact Number</TD>
							</TR>
							<TR>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReName1" size="10" name="Text1" runat="server"><FONT color="#990000" face="����">*</FONT></TD>
								<TD><FONT face="����"><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="selReShip1" size="10" name="Text1" runat="server"></FONT></TD>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReNum1" size="10" name="Text4" runat="server"><FONT color="#990000" face="����">*</FONT></TD>
							</TR>
							<TR>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReName2" size="10" name="Text2" runat="server"><FONT color="#990000" face="����">*</FONT></TD>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="selReShip2" size="10" name="Text1" runat="server"></TD>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReNum2" size="10" name="Text5" runat="server"><FONT color="#990000" face="����">*</FONT></TD>
							</TR>
							<TR>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReName3" size="10" name="Text3" runat="server"></TD>
								<TD><FONT face="����"><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="selReShip3" size="10" name="Text1" runat="server"></FONT></TD>
								<TD><INPUT style="WIDTH: 96px; HEIGHT: 22px" id="txReNum3" size="10" name="Text6" runat="server"></TD>
							</TR>
							-->
						<div class="table__row table__submit table__submit--right">
								<asp:LinkButton class="commonImageTextButton" id=Linkbutton3 runat="server">Next >>></asp:LinkButton>
						</div>
					</div>
				</asp:panel>

				<asp:panel class="panel" id=Panel4 runat="server" Visible="False">
						<div class="table__section">
								<div class="table__title">Loan Requirements</div>
								<div class="table__row">
									<p>What is the primary purpose of the loan:</p>
									<asp:TextBox id=txtLoanPurpose runat="server" Width="230px" Height="22px"></asp:TextBox>
								</div>
								<div class="table__row table__row-m-inline">
										<p>Loan Requested:</p>
											$ <INPUT id=txLoan 
											style="WIDTH: 166px; HEIGHT: 22px" name=Text1 runat="server"><FONT 
											face=���� color=#990000>*</FONT><INPUT id=Hidden1 
											style="WIDTH: 11px; HEIGHT: 22px" type=hidden size=1 name=Hidden1 
											runat="server"> 
										<asp:Button id=Button1 runat="server" Text="Calculate"></asp:Button>
								</div>
								<div class="table__row table__row-m-inline" style="DISPLAY: none">
										<p>Loan Repayment:</p>
											<p>
												<FONT face=���� color=#990000>
																<asp:DropDownList id=DropDownList1 runat="server">
																		<asp:ListItem Value="1">1 installment</asp:ListItem>
																		<asp:ListItem Value="2">2 installments</asp:ListItem>
																		<asp:ListItem Value="3">3 installments</asp:ListItem>
																		<asp:ListItem Value="4">Repay on next payday</asp:ListItem>
																</asp:DropDownList>* <INPUT id=txInstallment 
												style="WIDTH: 16px; HEIGHT: 22px" size=1 name=Text2 runat="server" 
												visible="false"></FONT>
											</p>
								</div>
								<div class="table__row">
									<p>Note: Each installment dues on your payday . Please make sure your repayment funds are available in your account for	deduction on each installment due date.</p>
								</div>
						</div>
						<div class="table__section">
							<div class="table__title">Repayment Schedule</div>
							<TABLE>
								<TR>
									<TD width=120>&nbsp;</TD>
									<TD width=130>Date due </TD>
									<TD width=120>Repayment due</TD>
								</TR>
								<%
									if(payDates4Schedule!=null)
									for( int i=0;i<payDates4Schedule.Length;i++ ){
								%>
								<TR>
									<TD>Installment <%= i+1 %></TD>
									<TD><FONT face=����><%=payDates4Schedule[i].ToString("dd/MM/yyyy")%></FONT></TD>
									<TD><FONT face=����><%=payAmountPerTime4Schedule.ToString("0.00")%></FONT></TD>
								</TR>
								<%}%>
							</TABLE>
						</div>
						<table>
							<TR id=annualRateRow runat="server">
								<td>	
						<div class="table__section">
							<div class="table__title">Comparison Rate Schedule</div>
							<p>Cash loans provided by Golden Bridge Enterprises	(Aust) Pty Ltd<BR>Date of issue: 01/10/05</p>
							<TD>
											<TABLE borderColor=inactiveborder cellSpacing=0 cellPadding=0 
											border=1>
												<TR>
													<TD>Loan Amount</TD>
													<TD></TD>
													<TD>Loan term</TD>
													<TD>Comparison Rate p.a.</TD>
													<TD>Annual Percentage Rate</TD></TR>
												<TR>
													<TD>$250.00</TD>
													<TD>(unsecured)</TD>
													<TD>2 weeks</TD>
													<TD>486.89%</TD>
													<TD>486.89%</TD></TR>
												<TR>
													<TD>$600.00</TD>
													<TD>(unsecured)</TD>
													<TD>8 weeks</TD>
													<TD>486.89%</TD>
													<TD>486.89%</TD></TR></TABLE></TD>
							<p><STRONG>WARNING</STRONG>: This Comparison Rate 
								applies only to the example or examples given. Different 
								amounts and terms will result in different comparison rates. 
								Costs such as redraw fees or early repayment fees, and cost 
								savings such as fee waivers, are not included in the 
								Comparison Rate but may influence the cost of the loan.</p>
						</div>
					</td>	
					</TR>
			</table>
						<div class="table__section">
							<div id=divAgreement>&nbsp;&nbsp;By 
								typing my name below, I am applying for a new online cash loan and 
								certify that this information is true and correct under penalty of 
								perjury. I authorize Golden Bridge Cash Solution to verify the 
								information I have provided, and to be bound by the terms of the 
								Master Loan Agreement that I signed with my initial loan 
								application. I agree that the payment schedule set above is not in 
								dispute and that I have full capacity to consent to the payment of 
								such amount. <BR>&nbsp;&nbsp;In the event of default, I agree to pay 
								all applicable penalties including a $25.00 Returned Item Fee, and 
								if the balance is not paid within 5 days following its scheduled Due 
								Date, to pay an additional $50 Late Fee. <BR>&nbsp;&nbsp;I 
								understand that a Debt Collection Fee calculated to be 50% of the 
								total amount owing will be added to my outstanding amount if my 
								account is passed on to professional Debt Collection Agency. I 
								understand that if I let any of my payments 'bounce', I authorize 
								Golden Bridge Cash Solution to access my account until all loans, 
								fees and penalties are recovered.
								</div>
							<div class="table__row">
								<span>To Sign,please type your FULL name here: </span>	
								<asp:TextBox id=txFullname runat="server"></asp:TextBox>
							</div>
							<div class="table__row table__submit table__submit--right">
								<INPUT id=Submit1 type=submit value="I agree, Submit" name=Submit runat="server"><FONT 
									face=����>&nbsp;&nbsp;&nbsp; </FONT>
								<INPUT type=submit value=Reset name=Submit2>
							</div>
						</div>
					</asp:panel>
				</DIV>
		</FORM>

<script type=text/javascript>
			$(document).ready(function(){
				$('a.title').cluetip({splitTitle: '|', arrows: true});
			});
		</script>

	</body>
</HTML>
