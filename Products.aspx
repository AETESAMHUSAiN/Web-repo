<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
     <h1 align="center" style="margin-left: 40px">Add Product</h1>
    <table border=0 style="padding: 20px; width:50%; height: 70%; top: 20px;" 
    align="center">
    
        <tr align="center">
            <td colspan=3 align="center" style="font-size: large; font-weight: bolder" 
                bgcolor="#9999FF">
                PRODUCT INFO</td>
     
        </tr>
        <tr align="center">
            <td class="style3" align="center" bgcolor="#99CCFF" style="font-size: large">
                Enter
                Product Name</td>
            <td class="style6" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox1" runat="server" Width="287px" Height="34px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td bgcolor="#99CCFF" class="style7">
                </td>
        </tr>
       
        <tr align="center" bgcolor="#99CCFF">
            <td class="style3" align="center" bgcolor="#99CCFF" style="font-size: large">
                Enter Rate</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="185px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
                 </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF" style="font-size: large">
                Upload
                Image</td>
            <td class="style4" align="center" bgcolor="#99CCFF" >
                <asp:FileUpload ID="FileUpload1" runat="server" />
             </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF" style="font-size: large">
                Quantity</td>
            <td class="style4" align="center" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="182px"></asp:TextBox>
             </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style3" align="center" bgcolor="#99CCFF" style="font-size: large">
                Enter Product Info</td>
            <td class="style4" align="center" bgcolor="#99CCFF">
                <asp:TextBox ID="TextBox6" runat="server" Height="77px" Width="339px"></asp:TextBox>
             </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#99CCFF">
                &nbsp;</td>
            <td class="style4" bgcolor="#99CCFF">
                <asp:Button ID="Button3" runat="server" Height="39px" Text="Add" 
                    Width="97px" onclick="Button3_Click" style="margin-left: 0px"/>
                <asp:Button ID="button04" runat="server" Height="35px" style="margin-left: 94px" 
                    Text="Update" Width="98px" onclick="Button4_Click1" />
                <asp:Button ID="Button1" runat="server" style="margin-left: 108px" Text="Delete" 
                    Width="109px"  Height="35px" onclick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
            <td bgcolor="#99CCFF">
                &nbsp;</td>
        </tr>
        

        
        </table>
          <center>
        
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         GridLines="Vertical" style="margin-left: 0px" Width="336px" 
                 AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                  onselectedindexchanged="GridView1_SelectedIndexChanged">
                 <Columns>

                 <asp:BoundField DataField="pid" HeaderText="ProductId" />
                 <asp:BoundField DataField="pname" HeaderText="EnterProductName" />
                 <asp:BoundField DataField="EnterRate" HeaderText="EnterRate" />
                 <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                 <asp:BoundField DataField="EnterProductInfo" HeaderText="EnterProductInfo" />
                 <asp:ImageField DataImageUrlField="UploadImage" HeaderText="UploadImage" ControlStyle-Height = "100" />
                 </Columns>

                 <AlternatingRowStyle BackColor="Gainsboro" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
               </center>
    
     </asp:Content>



