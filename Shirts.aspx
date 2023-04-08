<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shirts.aspx.cs" Inherits="Shirts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
      <!---- <asp:DataList ID="DataList1" runat="Server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        HorizontalAlign="Center" RepeatColumns="3" 
        onselectedindexchanged="DataList1_SelectedIndexChanged"> ---->
        
        <asp:DataList ID="DataList1" runat="Server" BackColor="LightGoldenrodYellow"
        BoederColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" HorizontalAlign="Center" RepeatColumns="3"
        OnItemCommand="DataList1_ItemCommand">
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
                
                <asp:LinkButton ID="LinkButton1" runat="Server" Text="view details" CommandName="Assign" CommandArgument='<%# Eval("pid") %>'>
                      </asp:LinkButton>

         
                </ItemTemplate>


        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
</asp:Content>


