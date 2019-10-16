<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="Kudell0061060303_cart" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <TUser:navbar ID="Header" runat="server"/>

        <br />
        <br />
        <div style="padding-left:2%;">
        <asp:Label ID="Label1" runat="server" Text="Cart Items: "></asp:Label>
        <asp:Table ID="myTable" runat="server" Width="23%">
            
        <asp:TableRow>
            <asp:TableCell>Product</asp:TableCell>
            <asp:TableCell>Price</asp:TableCell>
            <asp:TableCell><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear Cart" /></asp:TableCell>
        </asp:TableRow>

        
        </asp:Table> 
        <div id="message" runat="server">


        </div>
        <asp:Button ID="CheckOut" runat="server" OnClick="Checkout" Text="Checkout" />
        </div>
    </form>
</body>
</html>
