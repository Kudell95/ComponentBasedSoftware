<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductsList.aspx.cs" Inherits="Assignment_Default" %>
<%@ Register Src="WebUserControl.ascx" TagName="navbar" TagPrefix="TUser" %>
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
                <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" OnItemCommand="ListView_OnItemCommand" GroupItemCount="3" align="center">
                    <EditItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;color: #000080;">name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />price:
                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />brand:
                            <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                            <br />category:
                            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
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
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />price:
                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />brand:
                            <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                            <br />category:
                            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br /></td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        
                        <td runat="server" style="background-color: #FFFBD6;color: #333333;" >
                            <div id="item">
                            <a href="ProductDetails.aspx?pid=<%#Eval("productId")%>"><img style="width:200px;height:200px;" src="img/<%# Eval("slug")%><%# Eval("imgtype")%>"/></a>
                            <br />
                            
                            <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />price:
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />
                            <asp:Button ID="Button1" runat="server" CommandName="AddToCart" Text="Add To Cart" />
                            </div>
                            <br /></td>

                        
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
                                <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
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
                        <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">name:
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />price:
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />brand:
                            <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' />
                            <br />category:
                            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
                </div>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Products.accdb" SelectCommand="SELECT [name], [price], [brand], [category], [productId], [slug], [imgtype] FROM [product]"></asp:AccessDataSource>
                
         <br />
    </form>
</body>
</html>
