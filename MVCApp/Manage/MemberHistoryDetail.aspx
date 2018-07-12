<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberHistoryDetail.aspx.cs" Inherits="Lina.WebApp.Manage.MemberHistoryDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Member History Detail</h3>
    <table height="100%" cellSpacing="0" cellPadding="0" width="70%" align="center" bgColor="#fefefe"
				border="0">
				<tr>
					<td colSpan="4"><STRONG>Customer Details: </STRONG>
					</td>
				</tr>
				<tr>
					<td vAlign="top" width="21%">First Name:</td>
					<td vAlign="top" width="26%">
						<%=txFname%>
					</td>
					<td vAlign="top" width="20%">Middle Name:</td>
					<td vAlign="top" width="33%">
						<%=txMname%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Last Name:</td>
					<td vAlign="top">
						<%=txLname%>
					</td>
					<td vAlign="top">&nbsp;
					</td>
					<td vAlign="top">&nbsp;
					</td>
				</tr>
				<tr>
					<td vAlign="top">Date of Birth:</td>
					<td vAlign="top">
						<%=txDate%>
					</td>
					<td vAlign="top">E-Mail:
					</td>
					<td vAlign="top">
						<%=txEmail%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Driver Licence Number:</td>
					<td vAlign="top">
						<%=txDriver%>
					</td>
					<td vAlign="top">State Issued:</td>
					<td vAlign="top">
						<%=txIssue%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Home Address:</td>
					<td vAlign="top" colSpan="3">
						<%=txResident%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Street:</td>
					<td vAlign="top" colSpan="3">
						<%=txStreet%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">City:</td>
					<td vAlign="top">
						<%=txCity%>
					</td>
					<td vAlign="top">State:</td>
					<td vAlign="top">
						<%=selState%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Postcode:</td>
					<td vAlign="top" colSpan="3">
						<%=txPost%>
					</td>
				</tr>
				<tr>
					<td>Time at this address:</td>
					<td colSpan="3"><%=txYeard%>
						Years
						<%=txMonthd%>
						Months
					</td>
				</tr>
				<tr>
					<td vAlign="top">Home Phone Number:</td>
					<td vAlign="top" colSpan="3">
						<%=txTel%>
					</td>
				</tr>
				<tr>
					<td vAlign="top">Mobile:</td>
					<td vAlign="top" colSpan="3"><%=txMobile%></td>
				</tr>
				<tr>
					<td vAlign="top">Fax:</td>
					<td vAlign="top" colSpan="3"><%=txFax%>
						<INPUT id="Hidden1" style="WIDTH: 8px; HEIGHT: 19px" type="hidden" size="1" name="Hidden1"
								runat="server">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<asp:LinkButton id="LinkButton1" runat="server">Return</asp:LinkButton><INPUT id="Hidden2" style="WIDTH: 27px; HEIGHT: 19px" type="hidden" size="1" name="Hidden2"
							runat="server"></td>
				</tr>
			</table>
</asp:Content>
