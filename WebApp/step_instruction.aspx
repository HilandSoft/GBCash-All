<%@ Page language="c#" Codebehind="step_instruction.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.step_instruction" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>step5</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
			function openNextWindows()
			{
				window.top.location='newcu2.htm';
			}
		</script>
	</HEAD>
	<body LEFTMARGIN="8" TOPMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0">
		<form id="Form1" method="post" runat="server">
			<p>Please note it will take approximately 5 minutes to complete your application.</p>
			<p>Please enter all required information, indicated with an asterisk. </p>					 
			<p>In order to process your application, we will also require below supporting documents:</p>
				<UL>
					<LI>
					Latest pay slips
					<LI>
					last 90 days  bank statement 
					<LI>
					Your Identification card (usually Driver's Licence or Passport)
					<LI>
						A utility bill or mortgage documents or lease agreement. Each document to 
						include current address and be current one month before you submit the loan 
						application</LI>
				</UL>
				<div align="right">
					<a class="commonImageTextButton" onClick="openNextWindows()" style="CURSOR: hand" target="_self"><b>Next>>></b></a>						
				</div>
		</form>
	</body>
</HTML>
