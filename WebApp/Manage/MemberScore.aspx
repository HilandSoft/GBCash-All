<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberScore.aspx.cs" Inherits="Lina.WebApp.Manage.MemberScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellSpacing="0" cellPadding="0" width="70%" align="center" bgColor="#fefefe" border="0">
				<tr>
					<td><STRONG>Member Score: </STRONG>
					</td>
				</tr>
				<tr>
					<td>
						<asp:TextBox id="txtScoreDisplay" runat="server" TextMode="MultiLine" Width="616px" Height="64px"></asp:TextBox>
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
