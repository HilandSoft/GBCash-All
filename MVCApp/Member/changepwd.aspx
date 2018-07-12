<%@ Register TagPrefix="uc1" TagName="MemberTop" Src="MemberTop.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MemberLeft" Src="MemberLeft.ascx" %>
<%@ Page language="c#" Codebehind="changepwd.aspx.cs" AutoEventWireup="false" Inherits="YingNet.WeiXing.WebApp.Member.changepwd" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Golden Bridge Cash Solution</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="../javascriptN/jquery-1.4.4.min.js" type="text/javascript"></script>
		<link href="../CSSN/final.css" rel="stylesheet" type="text/css">
			<style type="text/css">
        .style2 { FONT-FAMILY: Verdana; FONT-SIZE: small }
        </style>
	</HEAD>
	<body>
		<!--start top-->
		<uc1:MemberTop id="MemberTop1" runat="server"></uc1:MemberTop>
		<!--end top-->
		<!--start homebanner-->
		<!--start subbanner-->
		<div id="subheader">
			<h1>Member Console</h1>
		</div>
		<!--end subbanner-->
		<!--start main-->
		<div id="main">
			<!--start process-->
			<uc1:MemberLeft id="MemberLeft1" runat="server"></uc1:MemberLeft>
			<!--end process-->
			<div id="content" style="MARGIN-LEFT: 0px">
				<form id="Form2" method="post" runat="server">
					<div class="table table-mobile">
						<div class="table__row">
							<div class="table__label">Please Input Your Password:</div>
							<div class="table__data"><INPUT type="password" id="oldPwd" name="Password1" runat="server"></div>
						</div>
						<div class="table__row">
							<div class="table__label">Please choose a New Password:</div>
							<div class="table__data"><INPUT type="password" id="Password1" name="Password1" runat="server"></div>
						</div>
						<div class="table__row">
							<div class="table__label">Please confirm your New Password:</div>
							<div class="table__data"><INPUT type="password" id="Password2" name="Password2" runat="server"></div>
						</div>
						<div class="table__row table__submit">
								<INPUT id="Button1" type="button" value="Save" name="Button1" runat="server"><input type="submit" name="Submit2" value="Cancel">
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--end main-->
		<!--start footer-->
		<div style="CLEAR: both"></div>
		<div id="footer">© Copyright Golden Bridge Cash Solution Pty Ltd 2011</div>
		<script type="text/javascript">
        $(document).ready(function(){
				$("#menuItemChangePassword").addClass("actived");
			});
		</script>
		<!--end footer-->
	</body>
</HTML>
