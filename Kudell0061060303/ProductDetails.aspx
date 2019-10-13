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
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Kudell0061060303/Products.xml" TransformSource="~/Kudell0061060303/details.xslt"></asp:Xml>
        <br /> <br />    
        <input type="button" id="Button1" runat="server" onServerClick="Button1_Click1" value="Add To Cart"/>
            
        </div>
    </form>
</body>
</html>
