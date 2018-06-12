﻿<%@ page language="C#" autoeventwireup="true" inherits="Sell_Your_Old_Gold_Jewellery_How_To_Sell, App_Web_megxcffm" enableviewstatemac="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>How To Sell</title>
    <link href="../CSSN/SellyourOldGoldJewelleryStyles.css" rel="stylesheet" type="text/css" />
    <link href="../CSSN/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSSN/jquery-ui-1.9.0.custom.min.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../javascriptN/jquery.watermark.min.js"></script>
    <script src="../javascriptN/jquery.validate.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/jquery-ui-git.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
        <div class="logo">
            <a href="../">
                <img src="../imagesN/logo.jpg" alt="Golden Bridge Cash Solution" /></a></div>
        <div id="menu-toggler"><span></span></div>
        <div class="call">
            Call Us <a href="tel:1300 137 906">1300 137 906</a></div>
    </div>
    <div id="nav">
        <ul class="menus">
            <li class="menuItme"><a class="menuItemA actived" href="../default.htm">Home</a>
            </li>
            <li class="menuItme"><a class="menuItemA" href="../About-Us/">About Us </a></li>
            <li class="menuItme has-children"><a class="menuItemA" href="#">Loan Options</a>
                <ul class="children">
                    <li class="has-children"><a href="#">Payday Loans</a>
                        <ul class="nestedchildren">
                            <li><a href="http://gbcash.com.au/how-it-works/">How it Works</a></li>
                            <li><a href="http://gbcash.com.au/Costs-And-Fees/">Costs & Fees</a></li>
                            <li><a href="http://gbcash.com.au/faq.htm">FAQs</a></li>
                            <li><a href="http://gbcash.com.au/apply/">Apply Now</a></li>   
                        </ul>
                    </li>
                     <li class="has-children"><a href="#">Pawn Loans</a>
                     <ul class="nestedchildren">
                            <li><a href="http://gbcash.com.au/Pawn-Loans/how-it-works.aspx">How it Works</a></li>
                            <li><a href="http://gbcash.com.au/Pawn-Loans/Acceptable-Collateral.aspx">Acceptable Collateral</a></li>
                            <li><a href="http://gbcash.com.au/Pawn-Loans/Pawn-Online-Now.aspx">Pawn Online Now</a></li>                            
                      </ul>
                    </li>
                    <li class="has-children"><a href="#">Secured Personal Loans</a>
                        <ul class="nestedchildren1">
                            <li><a href="http://secured.gbcash.com.au/home/how-it-works/">How it Works</a></li>
                            <li><a href="http://secured.gbcash.com.au/Home/Costs-And-Fees">Costs & Fees</a></li>
                            <li><a href="http://secured.gbcash.com.au/Home/Faqs">FAQs</a></li>
                             <li><a href="http://secured.gbcash.com.au/Secured/Pre-qualification">Apply Now</a></li>   
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="menuItme has-children"><a class="menuItemA" href="#">Sell Your Old Gold Jewellery</a>
                <ul class="children">
                     <li><a href="../Sell-Your-Old-Gold-Jewellery/What-We-Buy.aspx">What We Buy</a></li>
                    <li><a href="../Sell-Your-Old-Gold-Jewellery/How-To-Sell.aspx">How To Sell</a></li>
                    <li><a href="../Sell-Your-Old-Gold-Jewellery/Today-Prices.aspx">Today’s Prices</a></li>
                    <li><a href="../Sell-Your-Old-Gold-Jewellery/Visit-Us-In-Person.aspx">Visit Us In Person</a></li>
                </ul>
            </li>
             <li class="menuItme has-children">
					<a class="menuItemA" href="#">Calculators</a>
					<ul class="children">
						<li>
							<a href="http://gbcash.com.au/Calculator/default.htm">Payday Loans</a>
						<li>
							<a href="http://secured.gbcash.com.au/Home/Secured-Loans-Calculator/">Secured Personal Loans</a></li>
					</ul>
				</li>
            <li class="last menuItme"><a class="menuItemA" href="../Contact-Us/">Contact Us</a>
            </li>
        </ul>
    </div>
    <div id="subheader">
        <h1>
            Sell Your Old Gold Jewellery</h1>
    </div>
    <div id="main">
            <div class="rite-pane">
                <div class="rite-hd">
                    <h2>
                        <img align="absmiddle" src="../images/phn-icon.png" width="27" height="17" />
                        &nbsp; Request A Secure Gold Pack</h2>
                </div>
                <div class="rite-mid">
                    <div class="form-main">
                        <div>
                            <img src="../images/form-top.png" width="290" height="7" /></div>
                        <div class="form-mid">
                            <h2>
                                FILL IN THE FORM BELOW TO REQUEST<br />
                                A FULLY INSURED GOLDPACK</h2>
                            <div class="form-inner" >
                                <asp:TextBox ID="firstname" runat="server" ></asp:TextBox>
                                <asp:TextBox ID="lastname" runat="server" ></asp:TextBox>                             
                                <asp:TextBox ID="Address" runat="server" ></asp:TextBox>                                
                                <asp:TextBox ID="City" runat="server" ></asp:TextBox>
                                <div>
                                    <asp:DropDownList ID="drpStates" runat="server" CssClass="inpt">
                                        <asp:ListItem Selected="True">State*</asp:ListItem>
                                        <asp:ListItem>ACT</asp:ListItem>
                                        <asp:ListItem>NSW</asp:ListItem>
                                        <asp:ListItem>NT</asp:ListItem>
                                        <asp:ListItem>QLD</asp:ListItem>
                                        <asp:ListItem>SA</asp:ListItem>
                                        <asp:ListItem>VIC</asp:ListItem>
                                        <asp:ListItem>WA</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                    <asp:TextBox ID="postalcode" runat="server" class="inpt" ></asp:TextBox>
                                </div>
                               
                                <asp:TextBox ID="txtPhoneNumber" runat="server" ></asp:TextBox>                                
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                <div class="form-term">
                                    <div class="chk-up">                                     
                                        <asp:CheckBox ID="chkInsurance" runat="server" Text="Yes, include my free $ 15,000 Insurance" />
                                    </div>
                                    <div>                                        
                                        <asp:CheckBox ID="chkNews" runat="server" Text="Yes, I would like to receive latest news" />
                                    </div>
                                </div>
                                <div class="send-btn">                                  
                                    <asp:Button ID="btnSubmit" runat="server" Text=" SEND ME A SECURE GOLD PACK" 
                                        style="background-image: url('../images/send-btn.png');background-repeat: no-repeat;color: #FFFFFF;display: block;font-family: Arial,Helvetica,sans-serif;height: 33px;margin: 10px 0 0;padding: 0px 0 0;text-align: center;text-decoration: none;width: 232px;" 
                                        onclick="btnSubmit_Click" />                               
                                </div>
                            </div>
                        </div>
                        <div>
                            <img src="../images/form-btm.png" width="290" height="7" /></div>
                    </div>
                </div>
                <div>
                    <img src="../images/rite-btm.png" width="321" height="8" /></div>
            </div>
            <div id="content">
                <div id="links" style="font-family: Georgia, 'Times New Roman' , Times, serif">
                    <table >
                        <tr>
                            <td style="padding:10px">
                                <ul>
                                    <li><a href="../Sell-Your-Old-Gold-Jewellery/How-To-Sell.aspx">How to sell</a></li>
                                    <li><a href="../Sell-Your-Old-Gold-Jewellery/Today-Prices.aspx">What we will pay</a>
                                    </li>
                                </ul>
                            </td>
                            <td style="padding:10px">
                                <ul>
                                 <li><a href="../Sell-Your-Old-Gold-Jewellery/Visit-Us-In-Person.aspx">Visit us in person</a>
                                  </li>                                   
                                    <li>&nbsp;<a href="../Sell-Your-Old-Gold-Jewellery/What-We-Buy.aspx">What we buy</a>&nbsp;&nbsp;
                                    </li>
                                </ul>
                            </td>
                        </tr>                      
                    </table>
                </div>
                <h1 style="font-weight: bold;">
                    How to sell your old gold jewellery
                </h1>
                <div>
                  <p>
                    <strong><strong>You can visit our Melbourne office or sell your items online from the comfort and privacy of your home</strong>. </strong>Simply fill in the form on this page and we will send you your free Gold Pack. The pack contains all the information you need to sell your old gold and jewellery for cash. </p>
                  <p>&nbsp;</p>
                  <p>For clients Australia-wide, the Secure Gold Pack Experience combines the ease of remotely selling precious metals with the security, attention and personal service you would expect of a face-to-face transaction. Our streamlined system allows you to sell your items with transparency, speed, and confidentiality. </p>
                  <p>&nbsp;</p>
                </div>
                <div class="gallery-main">
                    <div class="gallry-img">
                        <h3>
                            Fill in the form</h3>
                        <div class="glry-image">
                            <a href="#">
                                <img src="../images/img-1.png" width="128" height="128" /></a></div>
                        <p>
                            STEP 1</p>
                    </div>
                    <div class="gallry-img">
                        <h3>
                            Send in your gold</h3>
                        <div class="glry-image">
                            <a href="#">
                                <img src="../images/img-2.png" width="128" height="128" /></a></div>
                        <p>
                            STEP 2</p>
                    </div>
                    <div class="gallry-img">
                        <h3>
                            Free Evaluation</h3>
                        <div class="glry-image">
                            <a href="#">
                                <img src="../images/img-3.png" width="128" height="128" /></a></div>
                        <p>
                            STEP 3</p>
                    </div>
                    <div class="gallry-img">
                        <h3>
                            Receive Payment</h3>
                        <div class="glry-image">
                            <a href="#">
                                <img src="../images/img-4.png" width="128" height="128" /></a></div>
                        <p>
                            STEP 4</p>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="content-lft style3">
                    <h3>
                        HOW IT WORKS,STEP BY STEP</h3>
                    <p>1. Fill in the form on this page and we will send you your free Gold Pack. The pack
                    contains all the information you need to sell your old gold and jewellery for cash.                        </p>
                    <p>2. Complete and sign all the forms in the gold pack. Make sure to include all the
                      necessary copies of your identification listed in the pack. </p>
                    <p>3. Return the completed Gold Pack back to us by posting it via Australia Post. Make
                        sure to ask for a 'lodgment scan' so we can provide insurance for your pack.</p>
                    <p>4. Once your Gold Pack has been received we will test your gold, sort it by purity,
                              take out any non-gold pieces and stones and weigh the remainder. We will then contact
                          you with a price that you can either accept or reject </p>
                    <p>5. If you choose to accept our price we will pay you immediately via your preferred
                            payment method. </p>
                    <p>6. If you reject our price we will return your items free of charge.</p>
                    <p>&nbsp;</p>
                </div>

          </div>     
            <div class="clear">
            </div>
        </div>
       
    </div>
    <!--start footer-->
    <div style="clear: both;">
    </div>
    <div id="footer">
        &copy; Copyright Golden Bridge Cash Solution Pty Ltd 2011</div>
  
    <script type="text/javascript">

        function setCurrentMenu(liSelector, aSelector) {
            $(liSelector).addClass("activedprocess");
            $(aSelector).addClass("activedprocesstxt");
        }      

     $.validator.setDefaults({
            showErrors: function (map, list) {
                // there's probably a way to simplify this
                var focussed = document.activeElement;
                if (focussed && $(focussed).is("input, textarea")) {
                    $(this.currentForm).tooltip("close", { currentTarget: focussed }, true)
                }
                this.currentElements.removeAttr("title").removeClass("ui-state-highlight");
                $.each(list, function (index, error) {
                    $(error.element).attr("title", error.message).addClass("ui-state-highlight");
                });
                if (focussed && $(focussed).is("input, textarea")) {
                    $(this.currentForm).tooltip("open", { target: focussed });
                }
            }
        });

        $.validator.addMethod("dropDownValidator", function (value, element, parameters) {
            return (value != 'State*');
        });

        (function () {

            $("#firstname").watermark("First Name *", { useNative: false });
            $("#lastname").watermark("Last Name *", { useNative: false });
            $("#Address").watermark("Address *", { useNative: false });
            $("#City").watermark("City *", { useNative: false });

            $("#postalcode").watermark("Postal Code *", { useNative: false });
            $("#txtPhoneNumber").watermark("Phone Number *", { useNative: false });
            $("#txtEmail").watermark("Email *", { useNative: false });


            // use custom tooltip; disable animations for now to work around lack of refresh method on tooltip
            $("#form1").tooltip({
                show: false,
                hide: false
            });


            // validate signup form on keyup and submit
            $("#form1").validate({
                invalidHandler: $.watermark.showAll,
                rules: {
                    color: {
                    dropDownValidator: true},
                    firstname: "required",
                    lastname: "required",
                    Address: "required",
                    City: "required",
                    drpStates: {
                        dropDownValidator: true
                    },
                    postalcode: "required",
                    txtPhoneNumber: "required",                   
                    txtEmail: {
                        required: true,
                        email: true
                    }
                },
                messages: {
                    firstname: "Please enter your first name",
                    lastname: "Please enter your lastname",
                    Address: "Please enter address",
                    City: "Please enter city",
                    drpStates: "Please select State",
                    postalcode: "Please enter Postal Code",
                    txtPhoneNumber: "Please enter Phone Number",
                    email: "Please enter a valid email address"                   
                }
            });


 $("#form1 input:not(:submit)").addClass("ui-widget-content");

//            $(":submit").button();
        })();
    </script>
    <script src="http://jqueryui.com/themeroller/themeswitchertool/"></script>
    <script>
        $.fn.themeswitcher && $('<div/>').css({
            position: "absolute",
            right: 10,
            top: 10
        }).appendTo(document.body).themeswitcher();
    </script>
    </form>
    <script language="javascript" src="../jslib/jquery-cluetip/lib/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript" src="../jslib/customActions.js" type="text/javascript"></script>
</body>
</html>
