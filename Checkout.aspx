<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>
<%@ Register Src="navbar.ascx" TagName="navbar" TagPrefix="TUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 66%;
            margin-right: 338;
        }
        .auto-style14 {
            width: 298px;
        }
        .auto-style17 {
            width: 207px;
        }
        .auto-style19 {
            width: 188px;
        }
        .auto-style20 {
            width: 259px;
        }
        .auto-style22 {
            width: 264px;
        }
        .auto-style23 {
            width: 216px;
            height: 26px;
        }
        .auto-style24 {
            width: 188px;
            height: 26px;
        }
        .auto-style25 {
            width: 298px;
            height: 26px;
        }
        .auto-style26 {
            width: 216px;
        }
        .auto-style27 {
            margin-left: 6px;
        }
        .auto-style28 {
            margin-left: 0;
        }
        .auto-style29 {
            margin-left: 15px;
        }
        .auto-style32 {
            width: 477px;
        }
        .auto-style35 {
            margin-left: 14;
        }
        .auto-style37 {
            width: 93px;
        }
        .auto-style38 {
            width: 305px;
        }
        .auto-style40 {
            width: 249px;
        }
        .auto-style41 {
            margin-left: 67px;
        }
        .auto-style42 {
            width: 207px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <TUser:navbar ID="Header" runat="server"/>

        <div style="padding-left:2%;">
        <br />
        <asp:Label ID="Label2" runat="server" Text="Checkout" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True"></asp:Label>
        <br />
         <br />
        <asp:Label ID="lblmsg" Text="Customer Information" runat="server" />
        
        <div id="UserInfo">
        <asp:Panel runat="server" >
        
        <table class="auto-style3">
           
            <tr>
                <td class="auto-style37">
                    Title:
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" ValidationGroup="Input">
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Dr</asp:ListItem>
                    </asp:DropDownList>
                    <br />

            </td>
                <td class="auto-style20">
                    First Name
                    <asp:TextBox ID="Fname" runat="server" Width="166px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Fname" Display="Dynamic" ErrorMessage="First name required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <br />
            </td>
            <td class="auto-style22">
                &nbsp;Last Name&nbsp;
                <asp:TextBox ID="Lname" runat="server" OnTextChanged="Fname0_TextChanged" Width="166px"></asp:TextBox>
            </td>
            <td>
                
                Phone Number<asp:TextBox ID="phone" runat="server" Width="120px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="phone" Display="Dynamic" ErrorMessage="City required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Incorrect Phone Number" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
                
                </td>
                  
            </tr>

            </table>
            <br />
            <table>
            <tr>
                <td class="auto-style26"><asp:Label ID="Label1" Text="Payment Address" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style26">
                    Country:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Country" runat="server" ValidationGroup="Input" CausesValidation="True" CssClass="auto-style28" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate ="Country"  ErrorMessage="Country Required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="state" runat="server" ValidationGroup="Input" CausesValidation="True" Width="92px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate ="state"  ErrorMessage="State Required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">
                    City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="city" runat="server" ValidationGroup="Input" CausesValidation="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate ="state"  ErrorMessage="City required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>


            </tr>
            <tr>
                <td class="auto-style23">
                    Suburb:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Suburb" runat="server" ValidationGroup="Input" CausesValidation="True" CssClass="auto-style27" Width="119px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="Suburb0"  ErrorMessage="Suburb required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style24">
                    Street type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="Road"></asp:ListItem>
                        <asp:ListItem>Street</asp:ListItem>
                        <asp:ListItem>Lane</asp:ListItem>
                        <asp:ListItem>Court</asp:ListItem>
                        <asp:ListItem>Place</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style25">
                    Street Name:&nbsp;&nbsp; <asp:TextBox ID="streetName" runat="server" ValidationGroup="Input" CausesValidation="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="streetName"  ErrorMessage="Street name required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>


            </tr>

                <tr>
                    <td class="auto-style26">
                       
                    
                        Street number:
                        <asp:TextBox ID="Suburb0" runat="server" CausesValidation="True" Height="16px" ValidationGroup="Input" Width="70px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Suburb0" Display="Dynamic" ErrorMessage="Suburb required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       
                    
                    </td>
                     <td class="auto-style17">
                       
                    
                         Unit Number:<asp:TextBox ID="Suburb1" runat="server" CausesValidation="True" CssClass="auto-style29" Height="16px" ValidationGroup="Input" Width="70px"></asp:TextBox>
                       
                    
                    </td>
                </tr>
                
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="" ValidateEmptyText="true"></asp:CustomValidator>
            </table>
            <br />
            <br />
            <table>
                <tr>
                    <td class="auto-style40">Payment Information</td>
                </tr>
                <tr>
                    <td class="auto-style40">Type of Card:&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style35" Height="21px" Width="94px">
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Mastercard</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style38">Card Number: 
                        <asp:TextBox ID="CardNumber" runat="server" CausesValidation="True" CssClass="auto-style27" ValidationGroup="Input" Width="172px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="CardNumber" Display="Dynamic" ErrorMessage="Card Number Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator7" runat="server" ControlToValidate="CardNumber" Display="Dynamic" ErrorMessage="Invalid Card Number" ForeColor="Red">*</asp:CustomValidator>
                    </td>
                    <td class="auto-style32">CSV:
                        <asp:TextBox ID="CSV" runat="server" CausesValidation="True" CssClass="auto-style27" ValidationGroup="Input" Width="172px"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator6" runat="server" ControlToValidate="CSV" ErrorMessage="Invalid CSV" ForeColor="Red" OnServerValidate="CustomValidator6_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style40">Name:
                        <asp:TextBox ID="NameOnCard" runat="server" CausesValidation="True" CssClass="auto-style27" ValidationGroup="Input" Width="157px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="NameOnCard" Display="Dynamic" ErrorMessage="Name on card Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>Date:<asp:TextBox ID="date" runat="server" CausesValidation="True" ssClass="auto-style27" placeholder="Day/Month/Year" ValidationGroup="Input" Width="172px" CssClass="auto-style41"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="date" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="date" Display="Dynamic" ErrorMessage="Incorrect Date" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Date">*</asp:CompareValidator>
                    </td>
                </tr>

            </table>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Use different address for delivery" />
            
            <div id="delivery" runat="server" >
                 <div>
                     <table>
                         <tr>
                             <td class="auto-style26">
                                 <asp:Label ID="Label3" runat="server" Text="Payment Address" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style26">Country:&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" CssClass="auto-style28" ValidationGroup="Input" Width="120px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Country" Display="Dynamic" ErrorMessage="Country Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
                             <td class="auto-style19">State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" ValidationGroup="Input" Width="92px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="State Required" ForeColor="Red" SetFocusOnError="True" EnableTheming="True">*</asp:RequiredFieldValidator>
                             </td>
                             <td class="auto-style14">City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                 <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True" ValidationGroup="Input"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="state" Display="Dynamic" ErrorMessage="City required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style23">Suburb:&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" CssClass="auto-style27" ValidationGroup="Input" Width="119px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Fname" Display="Dynamic" ErrorMessage="Suburb required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
                             <td class="auto-style24">Street type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                                 <asp:ListItem Value="Road"></asp:ListItem>
                                 <asp:ListItem>Street</asp:ListItem>
                                 <asp:ListItem>Lane</asp:ListItem>
                                 <asp:ListItem>Court</asp:ListItem>
                                 <asp:ListItem>Place</asp:ListItem>
                                 </asp:DropDownList>
                                 &nbsp;&nbsp;&nbsp; </td>
                             <td class="auto-style25">Street Name:&nbsp;&nbsp;
                                 <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True" ValidationGroup="Input"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="streetName" Display="Dynamic" ErrorMessage="Street name required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style23">Street number:
                                 <asp:TextBox ID="TextBox6" runat="server" CausesValidation="True" Height="16px" ValidationGroup="Input" Width="70px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="Fname" Display="Dynamic" ErrorMessage="Suburb required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
                             <td class="auto-style42">Unit Number:<asp:TextBox ID="TextBox7" runat="server" CausesValidation="True" CssClass="auto-style29" Height="16px" ValidationGroup="Input" Width="70px"></asp:TextBox>
                             </td>
                         </tr>
                         <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="" ValidateEmptyText="true"></asp:CustomValidator>
                     </table>
                 </div>


             </div>  

            <br />
            <br />

            



             &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Button ID="btnsubmit" runat="server" onclick="Btnsubmit_Click" 
                    style="text-align: center;width:140px" Text="Finalise Purchase" OnClientClick="False" />
         </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
