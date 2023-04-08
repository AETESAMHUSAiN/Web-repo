<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<center>
        <table style="width:60%;" height=200px;  bgcolor="#00CC99">
        <tr>
                <td colspan="3" align="center" bgcolor="#9999FF">
                   LOGIN</td>
                
            </tr>
            <tr>
                <td class="style7" align="center" bgcolor="#00CC99">
                    Username</td>
                <td class="style8" bgcolor="#00CC99"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="style9" bgcolor="#00CC99">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7" align="center" bgcolor="#00CC99">
                    Password</td>
                <td class="style8" bgcolor="#00CC99" >
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                </td>
                <td class="style9" bgcolor="#00CC99">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="#00CC99">
                    <asp:Button ID="Button1" runat="server" Text="Log In" Width="81px" 
                        onclick="Button1_Click" />
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        PostBackUrl="~/Registration Form.aspx">If You Are New User Register Here</asp:LinkButton>
                </td>
                
                
            </tr>
        </table>
        </center>
</asp:Content>


