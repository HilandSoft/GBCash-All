<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberLoanNotes.aspx.cs" Inherits="Lina.WebApp.Manage.MemberLoanNotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellSpacing="0" cellPadding="0" width="70%" align="center" bgColor="#fefefe" border="0">
				<tr>
					<td><STRONG>Member Loan Notes: </STRONG>
					</td>
				</tr>
				<tr>
					<td>
						<asp:TextBox id="txtNoteDisplay" runat="server" TextMode="MultiLine" Width="616px" Height="352px"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<asp:LinkButton id="EditButton" runat="server">Save</asp:LinkButton>&nbsp; 
							&nbsp;&nbsp; &nbsp;
							<asp:HyperLink ID="returnButton" runat="server">Return</asp:HyperLink></div>
					</td>
				</tr>
			</table>
</asp:Content>
