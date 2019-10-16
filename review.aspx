<%@ Page Language="C#" AutoEventWireup="true" CodeFile="review.aspx.cs" Inherits="review" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        
    <TUser:navbar ID="Header" runat="server"/>
     <link rel="stylesheet" href="review.css" type="text/css"/>
        
        <div id="Review" >
           <asp:Label ID="Label1" runat="server" Text="Purchase Review" Font-Bold="True" Font-Underline="True" ></asp:Label>
           <asp:Table ID="myTable" runat="server" Width="30%">
            
                <asp:TableRow>
                    <asp:TableCell>Products</asp:TableCell>
                    <asp:TableCell>Price</asp:TableCell>
                    
                </asp:TableRow>

        
        </asp:Table> 
        <div id="message" runat="server"></div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Complete Purchase" />
        </div>


        


    </form>
</body>
</html>
