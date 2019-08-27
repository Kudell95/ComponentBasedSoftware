<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductsList.aspx.cs" Inherits="Assignment_Default" %>
<%@ Register Src="WebUserControl.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 213px;
            width: 691px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
     <TUser:navbar ID="Header" runat="server" />
         
        <div>
           
            
                       
        </div>
         <div>
             <hr />
         </div>
       
         
         <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Kudell0061060303/Products.xml" TransformSource="~/Kudell0061060303/productlist.xslt"></asp:Xml>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
