<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllProduct.aspx.cs" Inherits="AllProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnItemCommand="DataList1_ItemCommand"
        HeaderStyle-HorizontalAlign="Center" RepeatColumns="4"
        RepeatDirection="Horizontal" 
        HorizontalAlign="Center" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderTemplate>
         
                Product Details</HeaderTemplate>

                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" BorderWidth="2px"
                HorizontalAlign="Center" />

                <ItemTemplate>

                </b>images:</b><br />
                <asp:Image ID="Image1" ImageUrl='<%# Eval("UploadImage") %>' runat="Server" Height="245px"
                           Width="213px" ImageAlign="Middle" Style="padding-left:40px" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" /><br />
                <b>Product Id:</b>
                     
                <asp:Label ID="ProductID" runat="Server" Text='<%# Eval("pid") %>'></asp:Label>
                                 
                <br />
                
                <b>ProductName:</b>
                <asp:Label ID="ProductsName" runat="Server" Text='<%# Eval("pname") %>'></asp:Label>

                <br />

                
                <b>EnterRate:</b>

                <asp:Label ID="ProductRate" runat="Server" Text='<%# Eval("EnterRate") %>'></asp:Label>

                <br />

                      <asp:LinkButton ID="LinkButton1" runat="Server" Text="view details" CommandName="Assign" CommandArgument='<%# Eval("pid") %>'>
                      </asp:LinkButton>
                      

                </ItemTemplate>

        <SelectedItemStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
    </asp:DataList>
</asp:Content>


