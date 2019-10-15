<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>
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
        <div id="UserInfo">
        <asp:Panel runat="server" DefaultButton="regButton">
        <asp:Label runat="server">Name</asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="Input">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem>Mrs</asp:ListItem>
            <asp:ListItem>Ms</asp:ListItem>
            <asp:ListItem>Dr</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="Input"></asp:TextBox>
        

            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your address please" Text="*" ControlToValidate="TextBox1"  EnableClientScript="False" Display="Dynamic" ValidationGroup="Input" ValidateEmptyText="true"/>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="" ValidateEmptyText="true"></asp:CustomValidator>
            
            <asp:Button runat="server" id="regButton" Text="Register please" ValidationGroup="Registration" />
         </asp:Panel>
        </div>

    </form>
</body>
</html>
