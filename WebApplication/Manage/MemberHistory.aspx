<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberHistory.aspx.cs" Inherits="Lina.WebApp.Manage.MemberHistory" %>
<%@ Register TagPrefix="cc1" Namespace="YingNet.Common" Assembly="YingNet.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Member History</h3>
    <cc1:datagridtable id="DataGridTable1" runat="server" IsAllowPaging="True" AutoGenerateColumns="False"
            CssClass="table table-hover table-striped" GridLines="None" AllowPaging="True" EnableViewState="False" MaxRecord="0" IsShowFoot="True" PageCSS="scrollButton" class="table table-hover table-striped">
							<PagerStyle Visible="False" HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" CssClass="gridPager"
								Mode="NumericPages"></PagerStyle>
							<AlternatingItemStyle CssClass="gridAltItem"></AlternatingItemStyle>
							<EditItemStyle CssClass="gridEditItem"></EditItemStyle>
							<FooterStyle ForeColor="#003399" CssClass="gridFooter" BackColor="#66CCFF"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" CssClass="gridSelectedItem" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle CssClass="gridItem" ></ItemStyle>
							<HeaderStyle Font-Bold="True"  CssClass="gridHeader" ></HeaderStyle>
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
								<asp:HyperLinkColumn Text="Detail" DataNavigateUrlField="id" DataNavigateUrlFormatString="MemberHistoryDetail.aspx?id={0}"
									HeaderText="Detail"></asp:HyperLinkColumn>
							</Columns>
						</cc1:datagridtable><asp:textbox id="txtParamstr" runat="server" Visible="False"></asp:textbox><INPUT id="Hidden1" style="WIDTH: 104px; HEIGHT: 19px" type="hidden" size="12" name="Hidden1"
							runat="server">
						<br>
						<div align="center">
							<a href="MemberList.aspx">Return</a>
						</div>
					
</asp:Content>
