<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPageNew.aspx.cs" Inherits="LoginPageNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<h1 style="background-image: url('LoginPageImage.jpg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     Login Here..</h1>
    <table align="center" 
        style="border: medium outset #000000; width:36%; height: 139px;">
            <tr>
                
                <td align="center" class="style4" 
                    
                    
                    style="background-image: url('login.jpg');">&nbsp; 
                    USER NAME&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3" 
                    style="background-image: url('login.jpg');">
                    <asp:TextBox ID="TextBox1" runat="server" Width="225px" align="left"
                        style="margin-left: 11px" ontextchanged="TextBox1_TextChanged1" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" 
                    style="background-image: url('login.jpg');">PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;</td>
               
            </tr>
            <tr>
                <td class="style4" style="background-image: url('login.jpg')" align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="225px" align="left"
                        style="margin-left: 11px" ontextchanged="TextBox1_TextChanged1" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                </td>
               
            </tr>
            <tr>
                <td style="background-image: url('login.jpg')">
                    <asp:Button ID="Button1" runat="server" Text="Login"  Padding=40px 
                        align="Center" Width="133px" onclick="Button1_Click1" 
                        style="margin-left: 0px; margin-top: 0px;" Height="30px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Logout"  Padding=40px 
                        align="Center" Width="133px" onclick="Button1_Click1" 
                        style="margin-left: 0px; margin-top: 0px;" Height="30px" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('login.jpg')">
                </td>
            </tr>
        </table>
</asp:Content>


