﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="CIS2003_Kudell0061060303_ProductDetails" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="details.css"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

        <TUser:navbar ID="Header" runat="server" />
        <br />
        <br />
        <div id="product_info">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1">
            <ItemTemplate>
                
                <img style="width:200px;height:200px;" src="img/<%# Eval("slug")%><%# Eval("imgtype")%>"/>
                <br />
                <h1>
                <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' /> <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </h1>
                <br />
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra id lacus eget consectetur. Aenean tempor justo quis velit bibendum venenatis eu quis ex. Mauris eu massa a purus ultrices luctus et id sapien. Vivamus ac orci rutrum, fringilla arcu bibendum, sagittis est. Aenean scelerisque mi dolor, at aliquam est faucibus sed. Integer vitae dapibus mauris. Sed nec egestas nisi. Sed condimentum dolor velit, eget maximus nisi pulvinar id.

                In et urna mauris. Ut tincidunt velit a mi venenatis mollis. Pellentesque ex lacus, dapibus a ligula ut, fringilla auctor eros. Sed ac nunc sit amet leo vulputate suscipit id at mi. Sed dignissim, urna eget sollicitudin congue, sem libero convallis mi, ac convallis turpis turpis id eros. Quisque et tempor nisi. Nunc et arcu sit amet orci molestie pharetra id id turpis.
                </p>
                <br/>
                <h2>
                price: $
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                </h2>
                <br />
                
                <br />
                <br />
             
            </ItemTemplate>
        </asp:DataList>
        <br />
               
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Products.accdb" SelectCommand="SELECT * FROM [product] WHERE ([productId] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="productId" QueryStringField="pid" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        <br /> <br />    
        <input type="button" id="Button1" runat="server" onServerClick="Button1_Click1" value="Add To Cart"/>        
     
    </div>
       
    </form>
</body>
</html>
