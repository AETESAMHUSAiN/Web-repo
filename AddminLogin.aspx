<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddminLogin.aspx.cs" Inherits="AddminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><style type="text/css">
        .style3
        {
            width: 534px;
        }
        .style4
        {
            width: 534px;
            height: 29px;
        }
        </style>
        </asp:Content>
     <asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
         <h1 style="background-image: url('LoginPageImage.jpg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         AddLogin Here..</h1>
    <table align="center" 
        style="border: medium outset #000000; width:36%; height: 139px;">
            <tr>
                
                <td align="center" class="style4" 
                    
                    
                    style="background-image: url('login.jpg');">&nbsp; 
                    USER NAME&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="background-image: url('login.jpg');">
                    <asp:TextBox ID="TextBox1" runat="server" Width="226px" align="left"
                        style="margin-left: 138px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>  
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" 
                    style="background-image: url('login.jpg');">PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;</td>"TextBox1_TextChanged1" 
               
            </tr>
            <tr>
                <td class="style4" style="background-image: url('login.jpg')">
                    <asp:TextBox ID="TextBox2" runat="server" Width="235px" align="left"
                        style="margin-left: 129px" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td style="background-image: url('login.jpg')">
                    <asp:Button ID="Button1" runat="server" Text="Login"  Padding=40px 
                        align="Center" Width="124px" onclick="Button1_Click1" 
                        style="margin-left: 169px; margin-top: 0px;" Height="30px" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    
</asp:Content>


