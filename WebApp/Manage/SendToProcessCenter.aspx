﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="SendToProcessCenter.aspx.cs" Inherits="Lina.WebApp.Manage.SendToProcessCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    			<script id="clientEventHandlersJS" language="javascript">
<!--

function retu_onclick() {
window.history.back();
}

//-->
			</script><table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" bgcolor="#fefefe"
				style="BORDER-RIGHT: #336699 1px solid; BORDER-TOP: #336699 1px solid; BORDER-LEFT: #336699 1px solid; BORDER-BOTTOM: #336699 1px solid"
				ID="Table1">
				<tr>
					<td background="images/left_top_title_bk.gif" height="25" valign="middle">&nbsp;<img src="images/left_open_1.gif" style="POSITION: relative; TOP: 1px" border="0" id="image"
							title="显示或关闭左侧导航条" language="javascript" onclick="return image_onclick()" onmouseover="onmouseOutImg()" onmouseout="onmouseOverImg()" class="imgst">&nbsp;</td>
					<td background="images/left_top_title_bk.gif" height="25" valign="middle" align="right">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="Div1" style="OVERFLOW-Y: auto;SCROLLBAR-FACE-COLOR: #dee3e7;OVERFLOW-X: auto;SCROLLBAR-HIGHLIGHT-COLOR: #ffffff;WIDTH: 100%;SCROLLBAR-SHADOW-COLOR: #dee3e7;SCROLLBAR-3DLIGHT-COLOR: #d1d7dc;SCROLLBAR-ARROW-COLOR: #006699;SCROLLBAR-TRACK-COLOR: #efefef;SCROLLBAR-DARKSHADOW-COLOR: #98aab1;HEIGHT: 100%"><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT>
							<br>
							<br>
							<br>
							<table width="300" align="center" border="1" cellpadding="2" cellspacing="0">
								<tr>
									<td height="24" bgcolor="#336699">&nbsp;&nbsp;<FONT face="宋体">Send to ProcessCenter</FONT>&nbsp;
										<asp:TextBox id="TextBox1" runat="server" Visible="False"></asp:TextBox><asp:TextBox id="txtParamstr" runat="server" Width="0px" Height="0px"></asp:TextBox></td>
								</tr>
								<tr>
									<td height="120" align="center">
										<asp:Label id="LabMsg" runat="server" Width="80%" Font-Size="12px"></asp:Label></td>
								</tr>
							</table>
							<br>
							<div align="center"><INPUT type="button" value=" Yes " id='returnmain' runat="server" NAME="returnmain">&nbsp;&nbsp;<INPUT id="retu" type="button" value=" No " language="javascript" onclick="return retu_onclick()"
									size="6066"></div>
						</div>
					</td>
				</tr>
			</table>
</asp:Content>
