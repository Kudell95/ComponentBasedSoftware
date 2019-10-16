<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 66%;
        }
        .auto-style7 {
            width: 292px;
        }
        .auto-style8 {
            width: 295px;
        }
        .auto-style9 {
            width: 204px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <TUser:navbar ID="Header" runat="server"/>

        
        <br />
        <div id="UserInfo">
        <asp:Panel runat="server" >
        <table class="auto-style3">
            <tr>

                <td class="auto-style7">
                    <asp:Label ID="lblmsg" Text="Customer Information" runat="server" />
         
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
            <asp:Label runat="server">Name</asp:Label><br />
                
            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="Input">
                <asp:ListItem>Mr</asp:ListItem>
                <asp:ListItem>Mrs</asp:ListItem>
                <asp:ListItem>Ms</asp:ListItem>
                <asp:ListItem>Dr</asp:ListItem>
            </asp:DropDownList>

            </td>
                <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="input" CausesValidation="True" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvname" 
                   runat="server" ControlToValidate ="TextBox1"
                   ErrorMessage="*" 
                   InitialValue="*" 
                   ValidateEmptyText="true" Display="Dynamic" ForeColor="Red" EnableClientScript="False" ValidationGroup="input" ViewStateMode="Enabled">* Required</asp:RequiredFieldValidator>
            </td>
                  
            </tr>
            <tr>
                <td class="auto-style7">
                    Country: <asp:TextBox ID="Country" runat="server" ValidationGroup="Input" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="Country"  ErrorMessage="Please enter a country"  InitialValue="Please enter a country" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    State: <asp:TextBox ID="state" runat="server" ValidationGroup="Input" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="state"  ErrorMessage="Please enter a state"  InitialValue="Please enter a state" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    City: <asp:TextBox ID="city" runat="server" ValidationGroup="Input" CausesValidation="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="city"  ErrorMessage="Please enter a city"  InitialValue="Please enter a city" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                </td>


            </tr>


                <tr>
                    <td class="auto-style7">
                    <asp:Button ID="btnsubmit" runat="server" onclick="Btnsubmit_Click" 
                    style="text-align: center;width:140px" Text="Submit" OnClientClick="False" />
                    </td>
                </tr>
                
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="" ValidateEmptyText="true"></asp:CustomValidator>
            </table>
         </asp:Panel>
        </div>

    </form>
</body>
</html>
