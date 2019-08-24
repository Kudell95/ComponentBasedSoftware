<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductsList.aspx.cs" Inherits="Assignment_Default" %>
<%@ Register Src="WebUserControl.ascx" TagName="User" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <TUser:User ID="Header" runat="server" />
        </div>
    </form>
</body>
</html>
