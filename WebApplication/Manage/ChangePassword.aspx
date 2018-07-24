<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Lina.WebApp.Manage.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h3 class="page-title">Change Password</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="panel">
                    <div class="panel-body">
                        Old Password:
                                    <asp:TextBox ID="txtOldPass" runat="server" CssClass="form-control"></asp:TextBox>
                        <br>
                        New Password:
                                    <asp:TextBox ID="txtNewPass" runat="server" CssClass="form-control"></asp:TextBox>
                        <br>
                        Confirm Password:
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <br>
                        <asp:Button ID="btnSave" runat="server" Text="Modify" CssClass="btn btn-default" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
