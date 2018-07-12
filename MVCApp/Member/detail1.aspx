<%@ Page language="c#" Codebehind="detail1.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.detail1" %>
<%@ Register TagPrefix="uc1" TagName="MemberTop" Src="MemberTop.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MemberLeft" Src="MemberLeft.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Golden Bridge Cash Solution</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="../javascriptN/jquery-1.4.4.min.js" type="text/javascript"></script>
		
		<link href="../CSSN/final.css" rel="stylesheet" type="text/css">
		<link href="../CSSN/tablesaw.css" rel="stylesheet" type="text/css" />
			<style type="text/css">
        .style2 { FONT-FAMILY: Verdana; FONT-SIZE: small }
        </style>
	</HEAD>
	<body>
		<!--start top-->
		<uc1:MemberTop id="MemberTop1" runat="server"></uc1:MemberTop>
		<!--end top-->
		<!--start homebanner-->
		<!--start subbanner-->
		<div id="subheader">
			<h1>Member Console</h1>
		</div>
		<!--end subbanner-->
		<!--start main-->
		<div id="main">
			<!--start process-->
			<uc1:MemberLeft id="MemberLeft1" runat="server"></uc1:MemberLeft>
			<!--end process-->
			<div id="content" style="MARGIN-LEFT: 0px">
				<P><STRONG>Please make sure these are always kept up to date. </STRONG><STRONG>If you 
				have any problems updating this information, please contact us at <a href="tel:1300 137 906">1300 137 906</a> </STRONG></P>
				<P><STRONG>Member Information</strong></P>

				<TABLE class="table" id="Table2" cellSpacing="0" cellPadding="0" width="100%" border="0" data-tablesaw-mode="swipe" data-tablesaw-minimap>
					<thead>
						<TR>
							<th>Title:</th>
							<th><%=dlTitle%></th>
							<th></th>
							<th></th>
						</TR>
					</thead>
					<TR>
						<TD>First Name:</TD>
						<TD><%=txFname%></TD>
						<TD>Middle Name:</TD>
						<TD><%=txMname%></TD>
					</TR>
					<TR>
						<TD>Last Name:</TD>
						<TD><%=txLname%></TD>
						<TD>Customer No:</TD>
						<TD><%=customno%></TD>
					</TR>
					<TR>
						<TD>Date of Birth:</TD>
						<TD><%=txDate%></TD>
						<TD>E-Mail:
						</TD>
						<TD><%=txEmail%></TD>
					</TR>
					<TR>
						<TD>Driver Licence Number:</TD>
						<TD><%=txDriver%>
						</TD>
						<TD>State Issued:</TD>
						<TD><%=txIssue%></TD>
					</TR>
				</TABLE>
								
				<TABLE class="table" id="Table3" cellSpacing="0" cellPadding="0" width="100%" border="0" data-tablesaw-mode="swipe" data-tablesaw-minimap>
					<thead>
						<TR>
							<TH width="155">
								Home&nbsp;Address:</TH>
							<TH width="242"><%=txResident%></TH>
						</TR>
					</thead>
					<TBODY>
						<TR>
							<TD>Street:</TD>
							<TD><%=txStreet%></TD>
						</TR>
						<TR>
							<TD>Suburb:</TD>
							<TD style="WIDTH: 80px" width="80"><%=txCity%></TD>
						</TR>
						<TR>
							<TD>State:</TD>
							<TD style="WIDTH: 80px" width="80"><%=selState%></TD>
						</TR>
						<TR>
							<TD>Postcode:</TD>
							<TD><%=txPost%></TD>
						</TR>
						<TR>
							<TD colSpan="2">&nbsp;</TD>
						</TR>
						<tr>
							<td>Time at this address:</td>
							<td><%=txYear%>
								Years
								<%=txMonth%>
								Months
							</td>
						</tr>
						<TR>
							<TD>Home Phone Number:</TD>
							<TD><%=txTel%></TD>
						</TR>
						<TR>
							<TD>Mobile:</TD>
							<TD><%=txMobile%>
								</FONT></TD>
						</TR>
						<TR>
							<TD>Fax:</TD>
							<TD>
								<%=txFax%>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<P><STRONG>Employment Information</STRONG></P>
								
				<TABLE class="table" id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" data-tablesaw-mode="swipe" data-tablesaw-minimap>
					<thead>
						<TR>
							<TH width="155"><%=tip2%></TH>
							<TH width="242"><%=txEmployer%></TH>
						</TR>
					</thead>
					<TR>
						<TD><%=tip3%></TD>
						<TD ><%=txAddress%></TD>
					</TR>
					<TR>
						<TD><%=tip4%></TD>
						<TD><%=txPhone%></TD>
					</TR>
					<%=tip7%>
					<TR>
						<TD><%=tip5%></TD>
						<TD><%=txYear2%>
							Years&nbsp;
							<%=txMonth2%>
							Months</TD>
					</TR>
					<TR>
						<TD><%=tip6%></TD>
						<TD><%=txIncome%>(Take home pay after taxes)</TD>
					</TR>
					<TR>
						<TD>Per:
						</TD>
						<TD><%=paid%></TD>
					</TR>
					<TR>
						<TD>Next payday:</TD>
						<TD><%=txMm1%>
							/<%=txDd1%>
							/<%=txYy1%>
						</TD>
					</TR>
					<tr>
						<td>Loan purpose:</td>
						<td><%=loanPurpose%></td>
					</tr>
					<tr>
						<td>Rent/mortgage payment:</td>
						<td><%=houseInfo%></td>
					</tr>
					<tr>
						<td>Other lenders:</td>
						<td><%=otherLenderInfo%></td>
					</tr>
				</TABLE>
				<p><a href="detail.aspx">Edit</a></p>
			
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
		<script language="javascript" src="../jslib/jquery-cluetip/lib/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw.jquery.js" type="text/javascript"></script>
		<script language="javascript" src="../jslib/tablesaw-init.js" type="text/javascript"></script>
		<!--end footer-->
	</body>
</HTML>
						
					