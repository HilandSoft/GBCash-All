<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="InforHistory.aspx.cs" Inherits="Lina.WebApp.Manage.InforHistory" %>
<%@ Register TagPrefix="cc1" Namespace="YingNet.Common" Assembly="YingNet.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h3 class="page-title">Employeed History</h3>
    <cc1:datagridtable id="DataGridTable1" runat="server" BorderStyle="None" class="table table-hover table-striped" PageCSS="scrollButton" IsShowFoot="True" GridLines="None"
							MaxRecord="0"  EnableViewState="False" AllowPaging="True" CssClass="table table-hover table-striped" AutoGenerateColumns="False" IsAllowPaging="True">
							<PagerStyle Visible="False" HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" CssClass="gridPager"
								Mode="NumericPages"></PagerStyle>
							<AlternatingItemStyle CssClass="gridAltItem"></AlternatingItemStyle>
							<EditItemStyle CssClass="gridEditItem"></EditItemStyle>
							<FooterStyle ForeColor="#003399" CssClass="gridFooter" BackColor="#66CCFF"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" CssClass="gridSelectedItem" ></SelectedItemStyle>
							<ItemStyle  CssClass="gridItem" ></ItemStyle>
							<HeaderStyle Font-Bold="True"  CssClass="gridHeader" ></HeaderStyle>
							<Columns>
								<asp:BoundColumn DataField="huiSid" HeaderText="Number"></asp:BoundColumn>
								<asp:BoundColumn DataField="huiName" HeaderText="Username"></asp:BoundColumn>
								<asp:BoundColumn DataField="Employer" HeaderText="Employer/Benefit"></asp:BoundColumn>
								<asp:BoundColumn DataField="EAddress" HeaderText="Address/Office"></asp:BoundColumn>
								<asp:BoundColumn DataField="EPhone" HeaderText="Phone/Contact"></asp:BoundColumn>
								<asp:BoundColumn DataField="Modtime" HeaderText="ModifyTime"></asp:BoundColumn>
								<asp:HyperLinkColumn Text="Detail" DataNavigateUrlField="id" DataNavigateUrlFormatString="InforDetail.aspx?id={0}"
									HeaderText="Detail"></asp:HyperLinkColumn>
							</Columns>
						</cc1:datagridtable><asp:textbox id="txtParamstr" runat="server" Visible="False"></asp:textbox><INPUT id="Hidden1" style="WIDTH: 104px; HEIGHT: 19px" type="hidden" size="12" name="Hidden1"
							runat="server">
						<br>
						<div align="center"><A href="MemberList.aspx">Return</A>
						</div>
					
</asp:Content>
