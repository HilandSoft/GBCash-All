<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="LoanDetail.aspx.cs" Inherits="Lina.WebApp.Manage.LoanDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h3 class="page-title">Loan Detail</h3>
        <div class="row">
            <div class="col-md-12">
                <%=content%>
            </div>
            
        </div>
        <div class="row">
            <a href="MemberList.aspx">Return</a>
        </div>
    </div>

</asp:Content>
