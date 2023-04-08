<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add To Cart.aspx.cs" Inherits="Add_To_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p style="border-style: groove; background-color: #00FFFF; padding: 5px; margin: 3px; height: 34px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="border: medium groove #000000; width: 5px; height: 10px;">ADD TO 
        CART&nbsp;&nbsp; </strong>
    </p>

    <table border=0 style="padding: 20px; width:50%; height: 70%; top: 20px; background-color: #CCFFFF;" 
    align="center">
    
        <tr align="center">
            <td colspan=3 align="center" style="font-size: large; font-weight: bolder; background-color: #FF3300;" 
                bgcolor="#9999FF">
                ADD CART ON HERE...</td>
     
        </tr>
        <tr align="center">
            <td class="style3" align="center" bgcolor="#99CCFF" 
                style="font-size: large; background-color: #808080;">
                Product Id</td>
            <td class="style6" bgcolor="#99CCFF" style="background-color: #808080">
                <asp:TextBox ID="TextBox1" runat="server" Width="287px" Height="34px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td bgcolor="#99CCFF" class="style7" style="background-color: #808080">
                </td>
        </tr>
       
        <tr align="center" bgcolor="#99CCFF">
            <td class="style3" align="center" bgcolor="#99CCFF" 
                style="font-size: large; background-color: #808080;">
                Products Name</td>
            <td class="style4" style="background-color: #808080">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="185px"></asp:TextBox>
            </td>
            <td bgcolor="Gray">
                &nbsp;</td>
                 </tr>
         <tr>
            
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF" 
                 style="font-size: large; background-color: #808080;">
                Quantity</td>
            <td class="style4" align="center" bgcolor="Gray">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="98px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
             </td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="Gray" style="font-size: large">
                Price</td>
            <td class="style4" align="center" bgcolor="Gray">
                <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="335px"></asp:TextBox>
             </td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                &nbsp;</td>
            <td class="style4" bgcolor="Gray">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" 
                    ImageUrl="~/images/Add To Cart.jpeg" onclick="ImageButton1_Click" 
                    Width="137px" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        

        
        </table>
&nbsp;&nbsp; 
</asp:Content>


