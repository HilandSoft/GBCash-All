<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="AgreementInput.aspx.cs" Inherits="Lina.WebApp.Manage.AgreementInput" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h3 class="page-title">Agreement</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="panel">
                    <div class="panel-body">
                        Please Input MemberID:
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <br>
                        <asp:Button ID="btnQuery" runat="server" Text="Query" CssClass="btn btn-default" OnClick="btnQuery_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar-nav a").removeClass();
            $("#nav_a_agreement").addClass("active");
        });
    </script>
</asp:Content>
