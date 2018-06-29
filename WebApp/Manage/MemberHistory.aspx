﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberHistory.aspx.cs" Inherits="Lina.WebApp.Manage.MemberHistory" %>
<%@ Register TagPrefix="cc1" Namespace="YingNet.Common" Assembly="YingNet.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table height="100%" cellSpacing="0" cellPadding="0" width="100%" bgColor="#fefefe" border="0">
				<tr>
					<td vAlign="top"><cc1:datagridtable id="DataGridTable1" runat="server" IsAllowPaging="True" AutoGenerateColumns="False"
							CssClass="tableGrid" AllowPaging="True" EnableViewState="False" MaxRecord="0" IsShowFoot="True" PageCSS="scrollButton"
							Width="100%" BackColor="White" BorderColor="#3366CC" PageSize="12" CellPadding="4" BorderWidth="1px" BorderStyle="None">
							<PagerStyle Visible="False" HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" CssClass="gridPager"
								Mode="NumericPages"></PagerStyle>
							<AlternatingItemStyle CssClass="gridAltItem"></AlternatingItemStyle>
							<EditItemStyle CssClass="gridEditItem"></EditItemStyle>
							<FooterStyle ForeColor="#003399" CssClass="gridFooter" BackColor="#66CCFF"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" CssClass="gridSelectedItem" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle ForeColor="#003399" CssClass="gridItem" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" CssClass="gridHeader" BackColor="#66CCFF"></HeaderStyle>
							<Columns>
								<asp:BoundColumn DataField="id" HeaderText="Number"></asp:BoundColumn>
								<asp:BoundColumn DataField="Username" HeaderText="Username"></asp:BoundColumn>
								<asp:BoundColumn DataField="Fname" HeaderText="FirstName"></asp:BoundColumn>
								<asp:BoundColumn DataField="Mname" HeaderText="MiddleName"></asp:BoundColumn>
								<asp:BoundColumn DataField="Lname" HeaderText="LastName"></asp:BoundColumn>
								<asp:BoundColumn DataField="DBirth" HeaderText="DateBirth" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundColumn>
								<asp:BoundColumn DataField="Email" HeaderText="Email"></asp:BoundColumn>
								<asp:BoundColumn DataField="DNumber" HeaderText="DriverNumber"></asp:BoundColumn>
								<asp:BoundColumn DataField="City" HeaderText="City"></asp:BoundColumn>
								<asp:BoundColumn DataField="State" HeaderText="State"></asp:BoundColumn>
								<asp:BoundColumn DataField="Postcode" HeaderText="Postcode"></asp:BoundColumn>
								<asp:BoundColumn DataField="HTel" HeaderText="Telephone"></asp:BoundColumn>
								<asp:BoundColumn DataField="Modtime" HeaderText="ModifyTime"></asp:BoundColumn>
								<asp:HyperLinkColumn Text="Detail" DataNavigateUrlField="id" DataNavigateUrlFormatString="MemberDetail2.aspx?id={0}"
									HeaderText="Detail"></asp:HyperLinkColumn>
							</Columns>
						</cc1:datagridtable><asp:textbox id="txtParamstr" runat="server" Visible="False"></asp:textbox><INPUT id="Hidden1" style="WIDTH: 104px; HEIGHT: 19px" type="hidden" size="12" name="Hidden1"
							runat="server">
						<br>
						<div align="center">
							<a href="MemberList.aspx">Return</a>
						</div>
					</td>
				</tr>
			</table>
</asp:Content>
