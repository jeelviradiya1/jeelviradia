﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_pw.aspx.cs" Inherits="forgot_pw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .Navigation 
        {            
           background-color:#f3a268;
            width:100%;
            color:white;
            font-size:20px;
            
        }
           .cart 
        {
            height: 56px; 
            width: 56px;
            border:none;
            
        }
           .menu1 {
             text-decoration:none;             
             font-size:x-large;  
                        
        }
        .btn
         {
            border-style: outset;
            border-color: inherit;
            border-width: medium;
            background-color: #666666;
             color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
            height: 32px;
            width: 143px;
        }
            
        .auto-style1 {
            height: 171px;
        }
        #l1, #l2 {
            font-family:Calibri;

        } 
         .footer 
        {
            position:fixed;
            width:100%;
            height:20%;
            background-color:gray;
            color:white;
            text-align:center;
            padding:20px;
        }
        .ft {
            font-size:25px;
            color:#aaa;
            text-align:center;
         
        }
        .footer-copy
        {
	        padding:0.5em 0.5em;
	        background:#333333;
	        text-align:center;
            color:#aaa;
        }
        .log1 
        {
            margin-left:1100px;
            
        }
        .menu1 {
             text-decoration:none;             
             font-size:x-large;  
             font-family:Andalus;
                        
        }

        .auto-style2 {
            width: 199px;
        }
          .new 
        {
            border-style: outset;
            border-color: inherit;
            border-width: medium;
background-color:#996633;
            color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
        }
                  .cart1 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
        }
         
        .auto-style3 {
            height: 75px;
        }
        .auto-style4 {
            width: 199px;
            height: 75px;
        }
         
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="Container">
        <div class="Navigation">
            <nav style="background-color: #C4AEAD"><br>
                <a href="Login.aspx" class="log1" style="font-family:Andalus;">Log in</a>/
                <a href="Register.aspx" style="font-family:Andalus;">Register</a>&nbsp;&nbsp;
                <a href="Admin/l1.aspx"><img src="img/m2.png" class="cart1" /></a>
                <br />
                &nbsp;
                <img src="img/l3.png" style="width:17%; height: 124px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Home.aspx" class="menu1">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Product.aspx" class="menu1">All Product</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <a href="About_us.aspx" class="menu1">About Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Account.aspx" class="new">My Account</a>
                <a href="OderStatus.aspx" class="new">Order Status</a>
                
                <a href="Home.aspx" class="new">LogOut</a>
                
                
            </nav>

        </div>
    
        <div>
            <br />
             <table align="center" border="0">
                <tr>
                    <th colspan="3" class="auto-style1">
                        <h1 style="font-family:Calibri">Forget Password</h1>
                        <asp:ValidationSummary ID="vs1" ShowMessageBox="true" runat="server" ShowSummary="false" />
                        
                    </th>                    
                </tr>
                  <tr>
                    <td rowspan="6">
                        <img src="img/fp3.jpg" style="border-style: inset; border-color: inherit; border-width: medium; height: 311px; width: 312px; "  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:Label ID="l1" runat="server" Text="UserName :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style4">
                        <asp:TextBox ID="t1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter UserName " Display="None" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
               
                 <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="New Password :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style2">
                        <asp:TextBox ID="t2" runat="server" Height="28px" Width="164px" TextMode="Password"></asp:TextBox></td>
                        <asp:RequiredFieldValidator ID="rf2" runat="server" ErrorMessage="Enter Answer" Display="None" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Confirm Password :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style2">
                       
                         <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="164px" TextMode="Password"></asp:TextBox>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="t2" ControlToValidate="TextBox1" ErrorMessage="Please Check Password.... " ForeColor="Red"></asp:CompareValidator>
                         </td>
            
                    </td>
                </tr>
                <tr>
                     <td colspan="2" align="center"><br />
                        <asp:Label ID="l3" runat="server"></asp:Label><br />
                        <asp:Button ID="b1" runat="server" Text="Submit" CssClass="btn" Height="50px" Width="97px" OnClick="btn_login"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="b2" runat="server" Text="Reset" CssClass="btn" OnClick="btn_reset"  Height="50px" Width="97px" />
                        
                    </td>
                </tr>
            </table>
    
    </div>
        <br />
            <p style="text-align:center; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft" >Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Divyesh Ambaliya and Deep Sorathiya</a></p>

    
    </form>
</body>
</html>
