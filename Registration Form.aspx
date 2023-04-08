<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration Form.aspx.cs" Inherits="Registration_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
            .style3
            {
                width: 214px;
            }
           .style4
                {
                width: 516px;
            }
         .style5
         {
           width: 214px;
            height: 64px;
        }
        .style6
         {
             width: 516px;
             height: 64px;
         }
        .style7
          {
            height: 64px;
           }
        .style8
        {
            width: 214px;
            height: 81px;
        }
        .style9
        {
            width: 516px;
            height: 81px;
        }
        .style10
        {
            height: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table border=0 style="padding: 20px; width:50%; height: 70%; top: 20px;" 
    align="center">
    
        <tr align="center">
            <td colspan=3 align="center" style="font-size: large; font-weight: bolder" 
                bgcolor="#9999FF">
                Registration</td>
     
        </tr>
        <tr align="center">
            <td class="style5" align="center" bgcolor="#99CCFF" style="font-size: large">
                Name</td>
            <td class="style6" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#99CCFF" class="style7">
                </td>
        </tr>
       
        <tr align="center" bgcolor="#99CCFF">
            <td class="style3" align="center" bgcolor="#99CCFF">
                Mobile</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
                 <tr>
            <td class="style3" align="center" bgcolor="#99CCFF">
                Address</td>
            <td class="style4" align="center" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td  align="center" bgcolor="#99CCFF">
        </tr>
        </tr>
         <tr>
            <td class="style8" align="center" bgcolor="#99CCFF">
                E-Mail</td>
            <td class="style9" align="center" bgcolor="#99CCFF" >
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </td>
            <td bgcolor="#99CCFF" class="style10">
                </td>
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF">
                User Name</td>
            <td class="style4" align="center" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF">
                Password</td>
            <td class="style4" align="center" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#99CCFF">
                </td>
            <td class="style4" bgcolor="#99CCFF">
                <asp:Button ID="Button1" runat="server" style="margin-left: 197px" Text="Save" 
                    Width="89px" onclick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
                <!---<asp:Button ID="Button2" runat="server" Text="Label" Height="20px" 
                    onclick="Button2_Click" />--->
            </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>



