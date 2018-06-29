<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="InforDetail.aspx.cs" Inherits="Lina.WebApp.Manage.InforDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellSpacing="0" cellPadding="0" width="450" align="center" border="0">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><STRONG>Employment Information <INPUT id="Hidden1" style="WIDTH: 64px; HEIGHT: 19px" type="hidden" size="5" name="Hidden1"
								runat="server"> <INPUT id="Hidden2" style="WIDTH: 48px; HEIGHT: 19px" type="hidden" size="2" name="Hidden2"
								runat="server"></STRONG></td>
				</tr>
				<tr>
					<td><asp:panel id="Panel1" runat="server" Width="424px" Height="104px">
							<TABLE cellSpacing="0" cellPadding="0" width="457" align="center" border="0">
								<TR>
									<TD width="313">
										<DIV align="left">Employer:
										</DIV>
									</TD>
									<TD width="299"><%=Employer%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Employer's Address:
										</DIV>
									</TD>
									<TD><%=EAddress%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Employer Phone:
										</DIV>
									</TD>
									<TD><%=EPhone%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Time Employed:
										</DIV>
									</TD>
									<TD><%=TYears%>Years
										<%=TMonths%>
										Months
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Take Home Pay:
										</DIV>
									</TD>
									<TD><%=MIncome%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">When are you paid:
										</DIV>
									</TD>
									<TD><%=Wpaid%></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<DIV align="center">
											<asp:LinkButton id="LinkButton1" runat="server">Return</asp:LinkButton></DIV>
									</TD>
								</TR>
							</TABLE>
						</asp:panel></td>
				</tr>
				<tr>
					<td><asp:panel id="Panel2" runat="server" Width="424px" Height="104px">
							<TABLE cellSpacing="0" cellPadding="0" width="457" align="center" border="0">
								<TR>
									<TD width="313">
										<DIV align="left">Type of benefit:</DIV>
									</TD>
									<TD width="299"><%=Employer%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Centreline Office:</DIV>
									</TD>
									<TD><%=EAddress%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Contact Name:</DIV>
									</TD>
									<TD><%=EPhone%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">How long on this benefit:
										</DIV>
									</TD>
									<TD><%=TYears%>Years
										<%=TMonths%>
										Months
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">Monthly Benefit:</DIV>
									</TD>
									<TD><%=MIncome%></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="left">When are you paid:
										</DIV>
									</TD>
									<TD><%=Wpaid%></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<DIV align="center">
											<asp:LinkButton id="LinkButton2" runat="server">Return</asp:LinkButton></DIV>
									</TD>
								</TR>
							</TABLE>
						</asp:panel></td>
				</tr>
			</table>
</asp:Content>
