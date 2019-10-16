<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductsList.aspx.cs" Inherits="Assignment_Default" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" type="text/css" href="ProductList.css"/>
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
                <div id="item_container" >
                <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1" OnItemCommand="ListView_OnItemCommand" GroupItemCount="3" align="center">
                    <EditItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;color: #000080;">category:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br /></td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">
                            category:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br /></td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        
                        <td runat="server" style="background-color: #FFFBD6;color: #333333;" >
                              <a href="ProductDetails.aspx?pid=<%#XPath("productId")%>">
                            <div id="item">
                            <img style="width:200px;height:200px;" src="img/<%# XPath("slug")%><%# XPath("imgtype")%>"/>
                            <br />
                            
                            <asp:Label ID="brandLabel" runat="server" Text='<%# XPath("brand") %>'></asp:Label>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# XPath("name") %>' />
                            <br />price:
                            <asp:Label ID="priceLabel" runat="server" Text='<%# XPath("price") %>' />
                            <br />
                            <asp:Button
                                ID="Button1"
                                runat="server"
                                CommandName="AddToCart"
                                CommandArgument='<%#XPath("productId") + "," + Eval("category") + "," + XPath("name") + "," + XPath("price")%>'
                                Text="Add To Cart"
                                
                            />
                            </div>
                            </a>
                            <br />

                        </td>
                        
                        
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" class="items" align ="center">
                            <tr runat="server" align ="center">
                                <td runat="server"  style="padding:15px;" align ="center">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server" >
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">category:
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Products.xml" ></asp:XmlDataSource>
                </div>
                
                
         <br />
    </form>
</body>
</html>
