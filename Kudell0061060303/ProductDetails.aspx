<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="CIS2003_Kudell0061060303_ProductDetails" %>
<%@ Register Src="WebUserControl.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <TUser:navbar ID="Header" runat="server" />
        <br />
        <div id="product_info">        
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Kudell0061060303/Products.xml" TransformFile="~/Kudell0061060303/productlist.xslt"></asp:XmlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1">
            </asp:ListView>
        <br /> <br />    
        <input type="button" id="Button1" runat="server" onServerClick="Button1_Click1" value="Add To Cart"/>
            
        </div>
    </form>
</body>
</html>
