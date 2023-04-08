<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNew.master" AutoEventWireup="true" CodeFile="View Feedback.aspx.cs" Inherits="View_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<center>
    
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         GridLines="Vertical" style="margin-left: 0px" Width="336px" 
                 AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                  onselectedindexchanged="GridView1_SelectedIndexChanged">
                 <Columns>

                 <asp:BoundField DataField="cid" HeaderText="cid" />
                 <asp:BoundField DataField="name" HeaderText="Name" />
                 <asp:BoundField DataField="massage" HeaderText="Messeges" />
                 <asp:BoundField DataField="email" HeaderText="Email" />
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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

