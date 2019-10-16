<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchaseComplete.aspx.cs" Inherits="purchaseComplete" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="review.css" type="text/css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <TUser:navbar ID="Header" runat="server" />
        <div id="thanks" >
            <div runat="server" id="purchase"></div>
            <br />
            Thank you for your purchase!
            <br />
           
            

             
            <a href="Home.aspx" id="return">Return Home</a>
        </div>
        
    </form>
</body>
</html>
