<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberDel.aspx.cs" Inherits="Lina.WebApp.Manage.MemberDel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script id="clientEventHandlersJS" type="text/javascript">
        function retu_onclick() {
            window.history.back();
        }
    </script>
    <table width="300" align="center" border="1" cellpadding="2" cellspacing="0">
        <tr>
            <td height="24" bgcolor="#336699">&nbsp;&nbsp;Delete Item&nbsp;
										<asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><asp:TextBox ID="txtParamstr" runat="server" Width="0px" Height="0px"></asp:TextBox></td>
        </tr>
        <tr>
            <td height="120" align="center">
                <asp:Label ID="LabMsg" runat="server" Width="80%" Font-Size="12px"></asp:Label></td>
        </tr>
    </table>
    <br>
    <div align="center">
        <input type="button" value=" Yes " id='returnmain' runat="server" name="returnmain">&nbsp;&nbsp;<input id="retu" type="button" value=" No " language="javascript" onclick="return retu_onclick()"
            size="6066">
    </div>

</asp:Content>
