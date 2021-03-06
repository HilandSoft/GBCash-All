<%@ Page language="c#" Codebehind="currentLoan.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.currentLoan" %>
<%@ Register TagPrefix="uc1" TagName="MemberTop" Src="MemberTop.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MemberLeft" Src="MemberLeft.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Golden Bridge Cash Solution</title>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../javascriptN/jquery-1.4.4.min.js"></script>
		<LINK rel="stylesheet" type="text/css" href="../CSSN/final.css">
		<link href="../CSSN/tablesaw.css" rel="stylesheet" type="text/css" />
			<style type="text/css">

#PanelNoCurrent{
	font-size:12pt;
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
				<form id="Form2" method="post" runat="server">
					<asp:panel id="PanelHasCurrent" runat="server">
						<TABLE border="0" cellSpacing="3" cellPadding="3">
							<TR>
								<TD><B>Current Loan</B></TD>
								<TD>&nbsp;</TD>
							</TR>
							<TR>
								<TD height="17" width="224">
									<P>Application Date:</P>
								</TD>
								<TD height="17" width="276">
									<asp:Literal id="litApplicationDate" runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD height="17" width="224">
									<P>Loan Amount:
									</P>
								</TD>
								<TD height="17" width="276">
									<asp:Literal id="litLoanAmount" runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD>
									<P>Status:
									</P>
								</TD>
								<TD>
									<asp:Literal id="litStatus" runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD colSpan="2" align="center"></TD>
							</TR>
						</TABLE>
						<B>Repayment Schedule</B>
						<TABLE border="1" data-tablesaw-mode="swipe" data-tablesaw-minimap>
							<thead>
								<TR>
									<th height="17" width="15%">
										<P>Installment</P>
									</th>
									<th height="17" width="15%">
										<P>DueDate</P>
									</th>
									<th height="17" width="15%">
										<P>AmountDue</P>
									</th>
									<th height="17" width="10%">
										<P>Penalty</P>
									</th>
									<th height="17" width="20%">
										<P>PaymentMade</P>
									</th>
									<th height="17" width="15%">
										<P>DatePaid</P>
									</th>
									<th height="17" width="10%">
										<P>Balance</P>
									</th>
								</TR>
							</thead>
							<%
							float balance= 0F;
							for( int i=0;i<listByTime.Rows.Count;i++ ){
								string repayTime = "";

								if (Convert.ToDateTime(listByTime.Rows[i]["RepayTime"]).ToShortDateString() != "01-01-2000")
								{
									repayTime = Convert.ToDateTime(listByTime.Rows[i]["RepayTime"]).ToString("dd/MM/yyyy");
								}
								
								if(repayTime=="01-01-2000" || repayTime=="01/01/2000"){
									repayTime ="";
								}
								
								float repayDue= Convert.ToSingle(listByTime.Rows[i]["Repaydue"]);
								balance+= repayDue;
								float penalty= Convert.ToSingle(listByTime.Rows[i]["Penalty"]);
								balance+= penalty;
								float paid= Convert.ToSingle(listByTime.Rows[i]["Paid"]);
								balance-= paid;
								
							%>
							<TR>
								<TD><%= i+1 %></TD>
								<td><%= Convert.ToDateTime(listByTime.Rows[i]["Datedue"]).ToString("dd/MM/yyyy") %></td>
								<td><%= repayDue.ToString("0.00")%> </td>
								<td><%= penalty.ToString("0.00")%> </td>
								<td><%= paid.ToString("0.00")%> </td>
								<td><%= repayTime%> </td>
								<td><%= balance.ToString("0.00")%> </td>
							</TR>
							<%}%>
						</TABLE>
						<BR>
						<B>Please note:</B><BR>
						<P>If you would like to make early repayment, please contact our office at 1300 137 
							906 for a payout amount. There is no penalty on early repayment.
						</P>
					</asp:panel><asp:panel id="PanelNoCurrent" runat="server" Visible="False">You don't have a loan open at the moment.<BR><BR>If you would like 
to apply for a new loan,please click <A href="newloan.aspx">here</A>. 
</asp:panel></form>
			</div>
		</div>
		<!--end main-->
		<!--start footer-->
		<div style="CLEAR: both"></div>
		<div id="footer">© Copyright Golden Bridge Cash Solution Pty Ltd 2011</div>
		<script type="text/javascript">
        $(document).ready(function(){
				$("#menuItemCurrentLoan").addClass("actived");
			});
		</script>
		<script language="javascript" src="../jslib/jquery-cluetip/lib/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw.jquery.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw-init.js" type="text/javascript"></script>
		<!--end footer-->
	</body>
</HTML>
