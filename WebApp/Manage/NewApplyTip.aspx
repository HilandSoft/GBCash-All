<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="NewApplyTip.aspx.cs" Inherits="Lina.WebApp.Manage.NewApplyTip" %>

<%@ Register TagPrefix="cc1" Namespace="YingNet.Common" Assembly="YingNet.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">New Apply Tips</h3>

    <cc1:DataGridTable ID="DataGridTable1" runat="server" IsAllowPaging="True" AutoGenerateColumns="False"
        CssClass="table table-hover table-striped" GridLines="None" AllowPaging="True" EnableViewState="False" MaxRecord="0" IsShowFoot="True" PageCSS="scrollButton" class="table table-hover table-striped">
        <PagerStyle Visible="False" HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" CssClass="gridPager"
            Mode="NumericPages"></PagerStyle>
        <AlternatingItemStyle CssClass="gridAltItem"></AlternatingItemStyle>
        <EditItemStyle CssClass="gridEditItem"></EditItemStyle>
        <FooterStyle ForeColor="#003399" CssClass="gridFooter" BackColor="#99CCCC"></FooterStyle>
        <SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" CssClass="gridSelectedItem" BackColor="#009999"></SelectedItemStyle>
        <ItemStyle CssClass="gridItem"></ItemStyle>
        <HeaderStyle Font-Bold="True" CssClass="gridHeader"></HeaderStyle>
        <Columns>
            <asp:BoundColumn DataField="huiSid" HeaderText="MemberID"></asp:BoundColumn>
            <asp:BoundColumn DataField="Username" HeaderText="Username"></asp:BoundColumn>
            <asp:BoundColumn DataField="type" HeaderText="Type"></asp:BoundColumn>
            <asp:BoundColumn DataField="regtime" HeaderText="Time"></asp:BoundColumn>
            <asp:HyperLinkColumn Text="I have known" DataNavigateUrlField="id" DataNavigateUrlFormatString="openoperate.aspx?id={0}"
                HeaderText="Operate"></asp:HyperLinkColumn>
        </Columns>
    </cc1:DataGridTable>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar-nav a").removeClass();
            $("#nav_a_newapplytip").addClass("active");
        });
    </script>
</asp:Content>
