<%@ Page language="c#" Codebehind="login.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>login</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		
		<form id="Form1" method="post" runat="server">
			<div class="table table-mobile">
				<div class="table__row">
					<div class="table__label">Username:</div>
					<div class="table__data"><input id="txUsername" type="text" size="20" name="textfield" runat="server"></div>
				</div>
				<div class="table__row">
					<div class="table__label">Password:</div>
					<div class="table__data"><input id="txPassword" type="password" size="20" name="textfield2" runat="server"></div>
				</div>
				<div class="table__row table__submit">
					<input id="Button1" type="button" value="Submit" name="Submit" runat="server">
					<input type="reset" value="Reset" name="Submit2">
				</div>
			</div>
		</form>
				
	</body>
</HTML>