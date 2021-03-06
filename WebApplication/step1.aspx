﻿<%@ Page language="c#" Codebehind="step1.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.step1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>step1</title> 
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
		<LINK href="css/css.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="javascriptN/jquery-1.4.4.min.js"></script>
		<script language=javascript>
		function f1(url) {
		var fleft,ftop;
		if(window.screen.width==800)
		  fleft=220;
		else
		  fleft=332;
		if(window.screen.height==600)
		  fheight=200;
		else
		  fheight=284
		window.open(url,"","height=200,width=360,top="+fheight+", left="+fleft+",toolbar=0, menubar=0, scrollbars=0, resizable=0,location=0, status=0");
		}
		</script>
	</HEAD>
	<body LEFTMARGIN="0" TOPMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0">
		<form id="Form1" method="post" runat="server">
			<div class="step-wrap">
				<p>
					<asp:checkboxlist id="CheckBoxList1" runat="server">
					<asp:ListItem Value="0">Are you an Australian citizen or permanent resident?</asp:ListItem>
					<asp:ListItem Value="1">Are you over 18 years old?</asp:ListItem>
					<asp:ListItem Value="2">Are you a wage or salary earner and take home at least $350 per week?</asp:ListItem>
					<asp:ListItem Value="3">Do you have a bank account in good standing verifying the income deposits?</asp:ListItem>
					<asp:ListItem Value="4">Have you been on your current address for at least the last 3 months?</asp:ListItem>
					<asp:ListItem Value="5">Have you read and understood Golden Bridge Cash Solution's <a href="information2.htm" target="_blank">
							Information Statement</a>, <a target="_blank" href="Information/Form3A.doc">Form 3A</a>, <a target="_blank" href="Information/Credit-Guide.doc">Credit Guide</a>?</asp:ListItem>
					</asp:checkboxlist>
				</p>
				<p style="text-align:center;"><INPUT id="bnSubmit" type="button" value="ApplyNow" name="Button1" runat="server">&nbsp;
					<INPUT type="reset" value="Reset"></p>
				<p>Please call <a href="tel:1300 137 906">1300 137 906</a> or email <a href="mailto:apply@gbcash.com.au">apply@gbcash.com.au</a>
					if you have any problems/questions filling in this form</p>
			</div>
		</form>
		
	</body>
</HTML>
