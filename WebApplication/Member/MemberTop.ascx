<%@ Control Language="c#" AutoEventWireup="false" Codebehind="MemberTop.ascx.cs" Inherits="YingNet.WeiXing.WebApp.Member.MemberTop" TargetSchema="http://schemas.microsoft.com/intellisense/ie5"%>
<div id="top">
	<div class="logo">
		<a href="../"><img src="../imagesN/logo.jpg" alt="Golden Bridge Cash Solution" width="180" height="63"></a>
	</div>
	<div class="right">
		<div class="userInfo">
			<div class="call">Call Us <a href="tel:1300 137 906">1300 137 906</a></div>
			<div>
				<a href="detail1.aspx" class="profile"><asp:Literal id="litUserNameDisplay" runat="server"></asp:Literal></a> | 
				<a href="logout.aspx">Logout</a>
			</div>
		</div>
	</div>
</div>
