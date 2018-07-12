<%@ Page language="c#" Codebehind="SendMailForAccount.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.SendMailForAccount" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SendMailForAccount</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div class="table table-mobile">
					<div class="table__row">
						<div class="table__label">Username:</div>
						<div class="table__data"><input name="textfield23" type="text" size="20" id="txUsername" runat="server"></div>
					</div>
					<div class="table__row table__submit">
						<input type="submit" name="Submit" value="Submit" runat="server" id="Submit1"> 
						<input type="reset" name="Submit2" value="Reset">
					</div>
				</div>
		</form>
	</body>
</HTML>
