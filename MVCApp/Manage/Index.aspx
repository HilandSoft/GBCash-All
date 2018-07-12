<%@ Page Title="manage index" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApp.Manage.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h3 class="page-title">Welcome</h3>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar-nav a").removeClass();
            $("#nav_a_index").addClass("active");
        });
    </script>
</asp:Content>
