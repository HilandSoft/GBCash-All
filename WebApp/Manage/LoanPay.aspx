<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="LoanPay.aspx.cs" Inherits="Lina.WebApp.Manage.LoanPay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellSpacing="0" cellPadding="0" width="800" border="0">
				<tr>
					<td colSpan="2"><strong>Pay and Penalty&nbsp;</strong></td>
				</tr>
				<tr>
					<td width="151">Application Date: <INPUT id="Hidden1" style="WIDTH: 16px; HEIGHT: 19px" type="hidden" size="1" name="Hidden1"
							runat="server">
					</td>
					<td width="649"><%=RTime%></td>
				</tr>
				<tr>
					<td>Loan Amount:
					</td>
					<td><%=Loan%></td>
				</tr>
				<tr>
					<td align="center" colSpan="2">
						<%=content%>
					</td>
				</tr>
				<tr>
					<td align="center" colSpan="2"><br>
						<table width="100%" cellpadding="0" cellspacing="0" border="0">
							<tr>
								<td width="30%" align="center"><asp:button id="Button1" runat="server" Text="Submit"></asp:button></td>
								<td width="30%" align="center">
									<asp:Button id="Button2" runat="server" Text="Update Datedue"></asp:Button></td>
								<td width="30%" align="center">
									<asp:Button id="Button3" runat="server" Text="Update Repaydue"></asp:Button></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
</asp:Content>
