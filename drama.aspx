﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="drama.aspx.cs" Inherits="skin_care" %>

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
           border-style: outset;
             border-color: inherit;
             border-width: medium;
             background-color: #808080;
             color:white;
             text-align:center;
             text-decoration:none;
             font-size:19px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
            height: 25px; 
            width: 80px;
        }
        .cart1 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
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
           .a
         {
            font-size:18px;
            
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <div class="Navigation">
            <nav style="background-color: #C4AEAD"><br>
               <a href="Login.aspx" class="log1" style="font-family:Andalus;">Log in</a>/
                <a href="Register.aspx" style="font-family:Andalus;">Register</a>&nbsp;&nbsp;
                <a href="Admin/l1.aspx"><img src="img/m2.png" class="cart1" /></a>
                <br />
                &nbsp;
                <img src="img/l3.png" style="width:17%; height: 124px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="Home.aspx" class="a">Home ></a>
            <a href="Product.aspx" class="a">All Product ></a>Drama Books &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
          <br />
       &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
             <img src="img/29.png" width="80%" style="height: 211px"/>

        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Drama Books</h1>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                           ConnectionString="<%$ ConnectionStrings:mycon %>" 
                                                SelectCommand="SELECT * FROM [product] where s_name='Drama' "  
                                            ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>"></asp:SqlDataSource>
						               <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                        DataKeyField="id" RepeatColumns="4" Height="562px" Width="700px" CellPadding="10" align="center" >
                                     <ItemTemplate> 
                                     <table align="center" border="1" style="border:groove;">                               
                                          <tr><div class="grid_1_of_4 images_1_of_4 products-info">
                                              <td>
					                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>'  Width="200" Height="200"/>                                                                          
                                          
                                        <tr />
                                        <tr>
                                            <td>
                                            <asp:Label ID="Label1" ForeColor="#204056" runat="server" Font-Size="1em" Text='<%# Eval("P_name") %>'></asp:Label>
					                     
                                             
                                                  <h3>Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("prise") %>'></asp:Label>						
                                          </h3>
                                           </tr>
                                            <tr>
					                            <td align="center">
					 	                    
					 	                        <a href='demo.aspx?id=<%#Eval("id")%>'  class="cart">Buy Now</a>  
					                        </tr>
					                        </div>				                            				                    
				                          </tr>                                                     
                                       </table>  
                                      </ItemTemplate>
                                      
                                 </asp:DataList>                           
        
       

    </div>
        <br />
            <p style="text-align:center; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft" >Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Divyesh Ambaliya and Deep Sorathiya</a></p>

    
    </div>
    </form>
</body>
</html>
