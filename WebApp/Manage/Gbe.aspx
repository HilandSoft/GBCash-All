<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="Gbe.aspx.cs" Inherits="Lina.WebApp.Manage.Gbe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" cellpadding="0" width="653" align="center" border="0">
        <tr>
            <td valign="top">
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td valign="top">
                            <img src="../images/3.JPG"></td>
                        <td>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td>
                                        <img src="../images/4.JPG"></td>
                                    <td>
                                        <img src="../images/5.gif"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>GBE 
													GEN</strong>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td class="unnamed1">
                            <br>
                            Customer Ref:
                            <input id="txId" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield" runat="server"><input id="Hidden1" style="width: 24px; height: 22px" type="hidden" size="1" name="Hidden1"
                                    runat="server"></td>
                    </tr>
                    <tr>
                        <td class="unnamed1">Surname/Company:
                            <input id="txLname" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield2" runat="server">
                            Given Name:
                            <input id="txFname" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield22" runat="server"></td>
                    </tr>
                    <tr>
                        <td class="unnamed1">Address:
                            <input id="txAddress" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield23" runat="server">
                            Suburb:
                            <input id="txCity" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield232" runat="server">
                            State:
                            <input id="txState" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                readonly type="text" name="textfield2322" runat="server"></td>
                    </tr>
                    <tr>
                        <td class="unnamed1">Post Code:
                            <input id="txPostcode" style="width: 80px; border-top-style: none; border-right-style: none; border-left-style: none; height: 18px"
                                readonly type="text" size="8" name="textfield233" runat="server">
                            Phone: 
									(H)<input id="txHPhone" style="width: 104px; border-top-style: none; border-right-style: none; border-left-style: none; height: 18px"
                                        readonly type="text" size="12" name="textfield233" runat="server">
                            (W)<input id="txEPhone" style="width: 104px; border-top-style: none; border-right-style: none; border-left-style: none; height: 18px"
                                readonly type="text" size="12" name="textfield233" runat="server">(Mob.)<input id="txMobile" style="width: 112px; border-top-style: none; border-right-style: none; border-left-style: none; height: 20px"
                                    readonly type="text" size="13" name="textfield233" runat="server"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" width="645" border="0" style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid">
                                <tr>
                                    <td class="unnamed1"><strong>Payment Agreement </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>B
                                    </strong>Payment with file upload
												<br>
                                        <br>
                                        I authorise and request the debit user detailed below to debit payments from my 
												nominate account, specified below, at intervals and amounts as directed by <strong>Golden 
													Bridge Enterprises </strong>as per the Terms and Conditions of the <strong>Golden 
													Bridge Enterprises </strong>Agreement and any subsequent agreements.
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <br>
                            Ezi Debit From Bank Or Cheque Account, Building Society or Credit Union </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" width="645" border="0" style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid">
                                <tr>
                                    <td width="50%">Financial Institution :
                                        <input id="txBank" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                            readonly type="text" name="textfield3" runat="server"></td>
                                    <td width="50%">Branch :
                                        <input id="txBranch" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                            readonly type="text" name="textfield32" runat="server"></td>
                                </tr>
                                <tr>
                                    <td>BSB Number :
                                        <input id="txBsb" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                            readonly type="text" name="textfield33" runat="server"></td>
                                    <td>Account Number :
                                        <input id="txANumber" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                            readonly type="text" name="textfield322" runat="server"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">Account Name :
                                        <input id="txAName" style="border-top-style: none; border-right-style: none; border-left-style: none"
                                            readonly type="text" name="textfield332" runat="server"></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">NOTE-Direct Debit is not available on the full range 
												of accounts – if in doubt please refer to your financial institution
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td><strong>Terms And Conditions </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">I/We hereby authorize Ezi Debit Australia Pty Ltd to make 
												periodic withdrawals from the financial institution specified above on behalf 
												of the business as described above. (Hereafter referred to as "the business") 
												The administration of this agreement is conducted by Ezi Debit Australia acting 
												as billing agent for the Business. The services provided by Ezi Debit Australia 
												are administrative to the status of the Agreement and do not extend to the 
												provision of any services or benefits of the Agreement as provided by the 
												Business. This authority shall be interpreted and enforced pursuant to the laws 
												of the state of Queensland . I/We request until further notice in writing to 
												direct debit my/our account described above, any amounts which Ezi Debit 
												Australia, <strong>User ID number 165969 </strong>, may debit or charge me / us 
												through the Ezi Debit system.
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">1. The Financial Institution may, in its absolute discretion, 
												determine the order of priority of payments by it if any monies pursuant to 
												this request or any other authority or mandate.
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">2. The Financial Institution may, in its absolute discretion, 
												at any time by notice in writing to me / us terminate this request as to future 
												debits.
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">3. The user may, by prior arrangement and advice to me / we 
												vary the amount or frequency of future debits.
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p align="left">
                                            4. You are advised to verify account details against a recent bank 
													statement and if uncertain you should contact your financial institution.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p align="left">
                                            5. It is your responsibility to ensure that you have sufficient 
													clear funds in your nominated account to enable the direct debit to be honoured 
													by your financial institution. Direct debits normally occur overnight; however 
													transactions can take up to three (3) days depending on your financial 
													institution.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p align="left">
                                            6. Any dispute arising from this or subsequent direct debits will 
													be in the first instance directed to the business or Ezi Debit Australia . If 
													no resolution is forthcoming you are advised to contact your financial 
													institution.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p align="left">
                                            7. We will keep your information about your nominated account at 
													the financial institution private and confidential unless this information is 
													required to investigate a claim made in it relating to an alleged incorrect or 
													wrongful debt, or otherwise required by law.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p>
                                            8. By signing this form I/We agree to give 14 working days notice of 
													cancellation in writing to the business.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p>
                                            9. I/We authorise the Debit User to verify the details of the abovementioned 
													account with my/our Financial Institution.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontsmall">
                                        <p>
                                            10. I/We authorise the Financial Institution to release information allowing the 
													Debit User to verify the above mentioned account details.
													<br>
                                            <br>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" width="645" border="0" style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid">
                                <tr>
                                    <td align="center" colspan="2"><strong>This authority is to remain in force in 
													accordance with the terms and conditions
													<br>
                                    </strong><strong>as described on this page, and I / we have read and understand the 
													same. </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="342" style="padding-left: 10px">Signatory of Nominated Account
												<br>
                                        <input readonly type="text"></td>
                                    <td>Date
												<br>
                                        <input readonly type="text">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="342" style="padding-left: 10px">Signatory of Nominated Account
												<br>
                                        <input readonly type="text">
                                    </td>
                                    <td>Date
												<br>
                                        <input readonly type="text"></td>
                                </tr>
                                <tr>
                                    <td style="padding-left: 10px">

                                        <strong><a href="#">Staff Members Name:</a><br>
                                            <br>
                                            _________________________ </strong>
                                    </td>

                                    <td>
                                        <strong><a href="#">Ezi Debit Office Use Only</a> </strong>
                                        <br>
                                        Date Received: &nbsp;Entered By:&nbsp; Reference #:&nbsp;<br>
                                        <br>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center"><a onclick="window.print();" href="#">Print</a></td>
        </tr>
    </table>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar-nav a").removeClass();
            $("#nav_a_agreement").addClass("active");
        });
    </script>
</asp:Content>
