<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="Lina.WebApp.Manage.MemberList" %>

<%@ Register Assembly="YingNet.Common" Namespace="YingNet.Common" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="csslib/yingnet.css" type="text/css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Member List</h3>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td align="center" valign="top">
                <asp:DropDownList ID="ddlColumn" runat="server">
                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                    <asp:ListItem Value="1">First Name</asp:ListItem>
                    <asp:ListItem Value="8">Last Name</asp:ListItem>
                    <asp:ListItem Value="2">Member ID</asp:ListItem>
                    <asp:ListItem Value="3">Time</asp:ListItem>
                    <asp:ListItem Value="4">Active</asp:ListItem>
                    <asp:ListItem Value="5">New</asp:ListItem>
                    <asp:ListItem Value="6">Rejected</asp:ListItem>
                    <asp:ListItem Value="7">Uncompleted</asp:ListItem>
                    <asp:ListItem Value="18">WorkPlace</asp:ListItem>
                </asp:DropDownList>&nbsp;
									<asp:TextBox ID="txKey" runat="server"></asp:TextBox>
                <asp:Button ID="btnQuery" runat="server" Text="Query"></asp:Button>
                <asp:Label ID="Label1" runat="server">Please enter the date format as DD/MM/YYYY</asp:Label>
                <asp:TextBox ID="txCondition" runat="server" Width="0" Visible="False"></asp:TextBox>&nbsp;
									<asp:Button ID="btnDelete" runat="server" Text="Delete" Visible="false" OnClientClick="return deleteit(this.form)"></asp:Button></td>
        </tr>
    </table>
    <cc1:DataGridTable ID="DataGridTable1" runat="server" IsAllowPaging="True" AutoGenerateColumns="False"
        class="table table-hover table-striped" AllowPaging="True" EnableViewState="False" MaxRecord="0" IsShowFoot="True" PageCSS="scrollButton" CssClass="table table-hover table-striped" GridLines="None">
        <PagerStyle Visible="False" HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" CssClass="gridPager"
            Mode="NumericPages"></PagerStyle>
        <AlternatingItemStyle CssClass="gridAltItem"></AlternatingItemStyle>
        <EditItemStyle CssClass="gridEditItem"></EditItemStyle>
        <FooterStyle ForeColor="#003399" CssClass="gridFooter" BackColor="#99CCCC"></FooterStyle>
        <SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" CssClass="gridSelectedItem" BackColor="#009999"></SelectedItemStyle>
        <ItemStyle CssClass="gridItem"></ItemStyle>
        <HeaderStyle Font-Bold="True" CssClass="gridHeader"></HeaderStyle>
        <Columns>
            <asp:BoundColumn Visible="False" DataField="id"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="Select">
                <HeaderStyle Width="1%"></HeaderStyle>
                <HeaderTemplate>
                    <input id="chkselectall" onclick="checkallorno(this)" type="checkbox"></asp:CheckBox>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkID" runat="server"></asp:CheckBox>
                </ItemTemplate>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Operate">
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem, "id") %><br />
                    <a href="MemberDel.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">Delete</a><br />
                    {SSS}
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Basic Info">
                <ItemTemplate>
                    F:<%# DataBinder.Eval(Container.DataItem, "Fname") %><br />
                    M:<%# DataBinder.Eval(Container.DataItem, "Mname") %><br />
                    L:<%# DataBinder.Eval(Container.DataItem, "Lname") %><br />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Birth/Email/Driver">
                <ItemTemplate>
                    B:<%# DataBinder.Eval(Container.DataItem, "DBirth","{0:dd-MM-yyyy}") %><br />
                    E:<%# DataBinder.Eval(Container.DataItem, "Email") %><br />
                    D:<%# DataBinder.Eval(Container.DataItem, "DNumber") %><br />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Name/Pass/Regtime">
                <ItemTemplate>
                    N:<%# DataBinder.Eval(Container.DataItem, "Password") %><br />
                    P:<%# DataBinder.Eval(Container.DataItem, "Username") %><br />
                    R:<%# DataBinder.Eval(Container.DataItem, "Regtime","{0:dd-MM-yyyy}") %><br />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Loan/Detail/EHistory">
                <ItemTemplate>
                    <a href="loandetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">Loan Info</a><br />
                    <a href="MemberDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">Detail Info</a><br />
                    <a href="InforHistory.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">EmployedHistory</a><br />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Note/FHistory/Score">
                <ItemTemplate>
                    N:{NNN}<br />
                    F:{FFF}<br />
                    S:{SSS}
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Other">
                <ItemTemplate>
                    <a href="MemberHistory.aspx?id=<%# DataBinder.Eval(Container.DataItem, "Username") %>">MemberHistory</a><br />
                    <a href="SendToProcessCenter.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">ProcessCenter</a><br />
                    <a href="SendToFollowupCenter.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>">FollowupCenter</a><br />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
    </cc1:DataGridTable>


    <script language="javascript" src="../jslib/datagrid.js" type="text/javascript"></script>
    <script language="javascript">
        function showModel(url) {
            var wnd = window.showModalDialog(url, null, 'dialogWidth=700px;dialogHeight=500px;status:0;help:0;resizable:1;unadorned:1');
            //wnd.dialogHeight = 600px;
            //wnd.dialogWidth = 800px;
            //wnd.dialogLeft = 0px;
            //wnd.dialogTop = 0px;
        }

        function deleteit(o) {
            var result = getchecknum(o);
            if (result > 0) {
                return confirm('Really Delete them?')
            } else {
                alert('Please Select What you want to delete!');
                return false;
            }
        }
        function editit(o) {
            var result = getchecknum(o);
            if (result == 1) {
                return true;
            } else {
                alert('请选中一条信息');
                return false;
            }
        }
        function auditit(o) {
            var result = getchecknum(o);
            if (result > 0) {
                return true;
            } else {
                alert('请选中一条或多条信息');
                return false;
            }
        }
        function cancelit(o) {
            var result = getchecknum(o);
            if (result > 0) {
                return confirm('确实要更改选中信息的状态？')
            } else {
                alert('请选中一条信息');
                return false;
            }
        }
        function ShowWindow(s) {
            //window.showModelessDialog(s,window,"dialogHeight: 500px; dialogWidth: 720px; dialogTop: 50px; dialogLeft:30px; edge: Sunken; center: Yes; help: No; resizable: No; status: No;");
            var iWidth = 0;
            var iHeight = 0;
            iWidth = window.screen.availWidth - 10;
            iHeight = window.screen.availHeight - 50;
            var szFeatures = "";
            szFeatures = "resizable=no,status=yes,edge=Sunken,scrollbars=yes,center=yes,help=no,menubar=no,width=720,height=500,top=10,left=30"
            window.open(s, "", szFeatures)
        }
        function checkallorno(o) {
            var a = o;

            while (true) {
                var a = a.parentElement;
                if (a == null) {
                    break;
                }
                if (a == "undefined") {
                    a = null;
                    break;
                }
                if (a.tagName == "TABLE") {
                    break;
                }
            }
            if (a != null) {
                for (i = 0; i < a.rows.length; i++) {
                    for (j = 0; j < a.rows[i].cells[0].children.length; j++) {
                        var var1 = a.rows[i].cells[0].children[j];
                        if (var1.tagName == "INPUT") {
                            if (var1.type == "checkbox") {
                                var1.checked = o.checked;
                            }
                        }
                    }
                }
            }
        }
        function getchecknum(frm) {
            var result = 0;
            var checkboxnum = 0;
            for (var i = 0; i < frm.length; i++) {
                if (frm.elements[i].type == "checkbox") {
                    checkboxnum++;
                    //第一个为全选,不计算
                    if (checkboxnum > 1) {
                        if (frm.elements[i].checked) {
                            result++;
                        }
                    }
                }
            }
            return result;
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar-nav a").removeClass();
            $("#nav_a_memberlist").addClass("active");
        });
    </script>
</asp:Content>
