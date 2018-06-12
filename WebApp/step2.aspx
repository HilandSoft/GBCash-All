<%@ Page language="c#" Codebehind="step2.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.step2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>step2</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/css.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="jslib/commCheck.js" type="text/javascript"></script>
		<script language="javascript">
		function  CheckFeedback() {
		var ftxFname=document.getElementById("txFname");
		var ftxLname=document.getElementById("txLname");
		var ftxDated=document.getElementById("txDated");
		var ftxDatem=document.getElementById("txDatem");
		var ftxDatey=document.getElementById("txDatey");		
		var ftxEmail=document.getElementById("txEmail");		
				
		var ftxResident=document.getElementById("txResident");
		var ftxStreet=document.getElementById("txStreet");
		var ftxCity=document.getElementById("txCity");
		var ftxPost=document.getElementById("txPost");
		
		var ftxTel=document.getElementById("txTel");
		
		var ftxUser=document.getElementById("txUser");
		var ftxPass=document.getElementById("txPass");
		var ftxConfirm=document.getElementById("txConfirm");
		
		if(!chkNull(ftxFname.value)) {
		alert(" Field 'First Name' under 'Personal Information' is not valid!");
		ftxFname.focus();
		return false;
		}
		
		if(!chkNull(ftxLname.value)) {
		alert(" Field 'Last Name' under 'Personal Information' is not valid!");
		ftxLname.focus();
		return false;
		}
		
		if(!chkNull(ftxDated.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDated.focus();
		return false;
		}
		
		if(!chkdigital(ftxDated.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDated.focus();
		return false;
		}
		
		if(ftxDated.value.length>2){
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDated.focus();
		return false;
		}
		
		if(!chkNull(ftxDatem.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatem.focus();
		return false;
		}
		
		if(!chkdigital(ftxDatem.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatem.focus();
		return false;
		}
		
		if(ftxDatem.value.length>2){
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatem.focus();
		return false;
		}
		
		if(!chkNull(ftxDatey.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatey.focus();
		return false;
		}
		
		if(!chkdigital(ftxDatey.value)) {
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatey.focus();
		return false;
		}
		
		if(ftxDatey.value.length!=4){
		alert(" Field 'Date of Birth' under 'Personal Information' is not valid!");
		ftxDatey.focus();
		return false;
		}
		
		if(!chkNull(ftxEmail.value)) {
		alert(" Field 'Email' under 'Personal Information' is not valid!");
		ftxEmail.focus();
		return false;
		}
		
		if(!isEmail(ftxEmail.value)) {
		alert(" Field 'Email' under 'Personal Information' is not valid!");
		ftxEmail.focus();
		return false;
		}
		
		if(!chkNull(ftxResident.value)) {
		alert(" Field 'Home Address' under 'Personal Information' is not valid!");
		ftxResident.focus();
		return false;
		}
		
		if(!chkNull(ftxStreet.value)) {
		alert(" Field 'Street Address' under 'Personal Information' is not valid!");
		ftxStreet.focus();
		return false;
		}
		
		if(!chkNull(ftxCity.value)) {
		alert(" Field 'Suburb' under 'Personal Information' is not valid!");
		ftxCity.focus();
		return false;
		}
		
		if(!chkNull(ftxPost.value)) {
		alert(" Field 'Post Code' under 'Personal Information' is not valid!");
		ftxPost.focus();
		return false;
		}
		
		if(!chkdigital(ftxPost.value)) {
		alert(" Field 'Post Code' under 'Personal Information' is not valid!");
		ftxPost.focus();
		return false;
		}
		
		if(!chkNull(ftxTel.value)) {
		alert(" Field 'Home Phone Number' under 'Personal Information' is not valid!");
		ftxTel.focus();
		return false;
		}
		
		if(!chkNull(ftxUser.value)) {
		alert(" Please specify a valid Username!");
		ftxUser.focus();
		return false;
		}
		
		if(!chkNull(ftxPass.value)) {
		alert(" Please specify a valid Password!");
		ftxPass.focus();
		return false;
		}
		
		if(!chkNull(ftxConfirm.value)) {
		alert(" Please confirm your password!");
		ftxConfirm.focus();
		return false;
		}
		
		if(ftxPass.value!=ftxConfirm.value) {
		alert(" Please confirm your password!");
		ftxConfirm.focus();
		return false;
		}
		
		return true;
		}
		</script>
	</HEAD>
	<body LEFTMARGIN="8" TOPMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0">
		<form id="Form1" method="post" runat="server">
			<div class="table table-mobile table-between">
				<div class="table__section">
					<div class="table__title">Personal Information</div>
					<div class="table__row">
						<div class="table__label">Title:</div>
						<div class="table__data">
							<asp:DropDownList id="dlTitle" runat="server">
								<asp:ListItem Value="Mr">Mr</asp:ListItem>
								<asp:ListItem Value="Mrs">Mrs</asp:ListItem>
								<asp:ListItem Value="Miss">Miss</asp:ListItem>
								<asp:ListItem Value="Ms">Ms</asp:ListItem>
								<asp:ListItem Value="Dr">Dr</asp:ListItem>
							</asp:DropDownList>
							<FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">First Name:</div>
						<div class="table__data">
							<input id="txFname" type="text" size="20" name="textfield26" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Middle Name:</div>
						<div class="table__data">
							<INPUT id="txMname" type="text" size="20" name="textfield26" runat="server">
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Last Name:</div>
						<div class="table__data">
							<input id="txLname" type="text" size="20" name="textfield27" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Date of Birth (DD/MM/YYYY):</div>
						<div class="table__data table__data-date">
							<INPUT id="txDated" type="text" size="2" name="txDated" runat="server"> /<INPUT id="txDatem" type="text" size="2" name="Text1" runat="server"> /<INPUT id="txDatey" type="text" size="4" name="Text2" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">E-Mail:</div>
						<div class="table__data">
							<input id="txEmail" type="text" size="20" name="textfield28" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Driver Licence Number:</div>
						<div class="table__data">
							<INPUT id="txDriver" type="text" size="9" name="textfield28" runat="server">
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">State Issued:</div>
						<div class="table__data">
							<INPUT id="txIssue" type="text" size="8" name="textfield29" runat="server">
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Street No.</div>
						<div class="table__data">
							<input id="txResident" type="text" size="20" name="textfield262" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Street Name:</div>
						<div class="table__data">
							<input id="txStreet" type="text" size="20" name="textfield2622" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Suburb:</div>
						<div class="table__data">
							<input id="txCity" type="text" size="20" name="textfield292" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">State:</div>
						<div class="table__data">
							<SELECT id="selState" name="select2" runat="server">
								<OPTION value="ACT" selected>ACT</OPTION>
								<OPTION value="NSW">NSW</OPTION>
								<OPTION value="NT">NT</OPTION>
								<OPTION value="SA">SA</OPTION>
								<OPTION value="TAS">TAS</OPTION>
								<OPTION value="VIC">VIC</OPTION>
								<OPTION value="WA">WA</OPTION>
								<option>QLD</option>
							</SELECT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Postcode:</div>
						<div class="table__data">
							<input id="txPost" type="text" size="20" name="textfield2623" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Time at this address:</div>
						<div class="table__data table__data-time">
							<SELECT id="txYear" name="select2" runat="server">
								<OPTION value="0" selected>0</OPTION>
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
							</SELECT>Years
							<SELECT id="txMonth" name="select2" runat="server">
								<OPTION value="0" selected>0</OPTION>
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
							</SELECT>Months</td>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Home Phone Number:</div>
						<div class="table__data">
							<input id="txTel" type="text" size="20" name="textfield282" runat="server"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Mobile:</div>
						<div class="table__data">
							<input id="txMobile" type="text" size="20" name="textfield282" runat="server"><FONT face="����" color="#990000">&nbsp;</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Fax:</div>
						<div class="table__data">
							<input id="txFax" type="text" size="20" name="textfield282" runat="server"><FONT face="����" color="#990000">&nbsp;</FONT>
						</div>
					</div>
				</div>
				<div class="table__section">
					<div class="table__title">Login Information</div>
					<p>(Please choose an username and a password you can remember for future login purpose)</p>
					<div class="table__row">
						<div class="table__label">Username:</div>
						<div class="table__data">
							<input id="txUser" type="text" size="20" name="textfield210" runat="server" autocapitalize="off"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Password:</div>
						<div class="table__data">
							<input id="txPass" type="password" size="20" name="textfield211" runat="server" autocapitalize="off"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row">
						<div class="table__label">Confirm Password:</div>
						<div class="table__data">
							<input id="txConfirm" type="password"  size="20" name="textfield211" runat="server" autocapitalize="off"><FONT face="����" color="#990000">*</FONT>
						</div>
					</div>
					<div class="table__row table__submit table__submit--right">
						<input id="Submit1" type="submit" value="Next>>>" name="Submit" runat="server">
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
