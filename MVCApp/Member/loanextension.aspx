<%@ Register TagPrefix="uc1" TagName="MemberLeft" Src="MemberLeft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MemberTop" Src="MemberTop.ascx" %>
<%@ Page language="c#" Codebehind="loanextension.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.loanextension" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Golden Bridge Cash Solution</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="../javascriptN/jquery-1.4.4.min.js" type="text/javascript"></script>
		<LINK href="../CSSN/final.css" type="text/css" rel="stylesheet">
			<link href="../CSSN/tablesaw.css" rel="stylesheet" type="text/css" />
			<style type="text/css">.style2 {
	FONT-SIZE: small; FONT-FAMILY: Verdana
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
			<div id="content" style="MARGIN-LEFT: 0px">
				<form id="Form2" method="post" runat="server">
					<p><strong>Your loan extension application must be sent to us no later than two 
					business days before your next due payment date. <INPUT id="Hidden2" style="WIDTH: 40px; HEIGHT: 21px" type="hidden" size="1" name="Hidden1"
				runat="server"> <INPUT id="HiddenCalced" type="hidden" name="Hidden3" runat="server"></strong></p>
					<table cellSpacing="0" cellPadding="0" border="0" class="table-bottom">
						<tr>
							<td width="550">Name:
							</td>
							<td width="370"><%=Name%></td>
						</tr>
						<tr>
							<td>Customer Number:
							</td>
							<td><%=CustomerNum%></td>
						</tr>
						<tr>
							<td>Original Loan Amount:
							</td>
							<td>
								<%=LoanAmount%>
							</td>
						</tr>
					</table>
					<p><strong>Current Payment Schedule:</strong></p>
					<table class="table" cellSpacing="0" cellPadding="0" border="0" data-tablesaw-mode="swipe" data-tablesaw-minimap>
						<thead>
						<tr>
							<th width="20%">Installment
							</th>
							<th width="20%">Due date
							</th>
							<th width="20%">Payment due
							</th>
							<th width="5%">&nbsp;</th>
							<th width="40%"></th>
						</tr>
					</thead>
						<%=Content1%>
						<tr>
							<td align="right" colSpan="5"><asp:label id="LabWarning" runat="server" ForeColor="Red" Visible="False">Label</asp:label><asp:button id="Button2" runat="server" Text="Calculate"></asp:button><INPUT id="Hidden1" style="WIDTH: 35px; HEIGHT: 22px" type="hidden" size="1" name="Hidden1"
										runat="server">
							</td>
						</tr>
					</table>
					<p><strong>New Payment Schedule</strong></p> 
					<table cellSpacing="0" cellPadding="0" border="0">
						<tr>
							<td colSpan="3"></td>
						</tr>
						<tr>
							<td height="20">Installment
							</td>
							<td height="20">Due date
							</td>
							<td height="20">Payment due
							</td>
						</tr>
						<%=ContentNewSchedule%>
						<tr>
							<td colSpan="3">
								<%=Content2%>
							</td>
						</tr>
					</table>
					<p><TEXTAREA style="WIDTH: 504px; HEIGHT: 192px" rows="12" cols="60">By typing my name below, I am applying for an extension of my current electronic cash loan and certify that this information is true and correct under penalty of perjury. I authorize Golden Bridge Cash Solution to verify the information I have provided, and to be bound by the terms of the Master Cash Loan Agreement that I signed with my original loan application. I agree that the payment schedule set above is not in dispute and that I have full capacity to consent to the payment of such amount.
					In the event of default, I agree to pay all applicable penalties including a $25.00 Returned Item Fee, and if the balance is not paid within 5 days following its scheduled Due Date, to pay an additional $50 Late Fee. I understand that a Debt Collection Fee calculated to be 50% of the total amount owing will be added to my outstanding amount if my account is passed on to professional Debt Collection Agency.
					I understand that if I let any of my payments "bounce", I authorize Golden Bridge Cash Solution to access my account until all loans, fees and penalties are recovered.</TEXTAREA>
					</p>
					<p>To Sign,please type your FULL name here:</p>
					<p><asp:textbox id="txFullname" runat="server" Width="192px"></asp:textbox></p>
					<p><asp:button id="Button1" runat="server" Text="I agree, Submit"></asp:button></p>
				</form>
			</div>
		</div>
		<!--end main-->
		<!--start footer-->
		<div style="CLEAR: both"></div>
		<div id="footer">© Copyright Golden Bridge Cash Solution Pty Ltd 2011</div>
		<script type="text/javascript">
        $(document).ready(function(){
				$("#menuItemLoanExtension").addClass("actived");
			});
		</script>
		<script language="javascript" src="../jslib/jquery-cluetip/lib/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw.jquery.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw-init.js" type="text/javascript"></script>
		<!--end footer-->
	</body>
</HTML>
