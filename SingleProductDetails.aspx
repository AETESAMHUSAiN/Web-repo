<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SingleProductDetails.aspx.cs" Inherits="SingleProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        HorizontalAlign="Center" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />

         <HeaderTemplate>
                  Product Information</HeaderTemplate>
                <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px"
                HorizontalAlign="Center" />
                <ItemTemplate>

                </b>IMAGE:</b><br />
                <asp:Image ID="Image1" ImageUrl='<%# Eval("UploadImage") %>' runat="Server" Height="250"
                           Width="250" ImageAlign="Middle" Style="padding-left:40px" /><br />
                <b>Product Id:</b>
                     
                <asp:Label ID="ProductID" runat="Server" Text='<%# Eval("pid") %>'></asp:Label>
                                 
                <br />
                
                <b>ProductName:</b>
                <asp:Label ID="ProductsName" runat="Server" Text='<%# Eval("pname") %>'></asp:Label>

                <br />

                
                <b>Price:</b>

                <asp:Label ID="ProductRate" runat="Server" Text='<%# Eval("EnterRate") %>'></asp:Label>

                <br />
                <b>Quantity:</b>
                <asp:Label ID="Label1" runat="Server" Text='<%# Eval("Quantity") %>'></asp:Label>

                <br /><b>ProductInfo:</b>
                <asp:Label ID="Label2" runat="Server" Text='<%# Eval("EnterProductInfo") %>'></asp:Label>

            
                <br />
                
                <br />
                <b>AddToCart:</b>
                <asp:LinkButton Id="LinkButton1" runat="Server" NevigateUrl="Add To Cart" 
                        Text="Add To Cart" CommandName="Assign" CommandArgument='<%# Eval("pid") %>' 
                        PostBackUrl="~/Add To Cart.aspx"></asp:LinkButton>

                <br />

         
                </ItemTemplate>

        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
</asp:Content>


