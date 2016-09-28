<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ProbaIT.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: rgba(0, 0, 0, 0.7);
            margin-top: 15px;
            margin-bottom: 10px;
            padding: 12px 24px;
            color: white;
            border-radius: 4px;
            margin-left: 40px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-9 col-lg-10 backImg" style="height: 100vh">
        <div id="divCart" class="row well-grey text-center" style="margin-left: 30%; margin-top: 20%; width: 363px; height: 60px;" runat="server">
            <asp:Label runat="server" Text="Your cart is empty!" Font-Bold="True" ID="lblCartEmpty" Font-Size="20pt" ForeColor="White" CssClass="text-center"></asp:Label>
        </div>
        <div id="divGrid" runat="server">
            <div class="text-center" style="margin-left: 30%; margin-bottom: 10%; margin-top: 20%;">
                <asp:GridView ID="gvCart" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" CssClass="auto-style2" Width="567px" AllowPaging="True" OnPageIndexChanging="gvCart_PageIndexChanging" OnRowCancelingEdit="gvCart_RowCancelingEdit" OnRowEditing="gvCart_RowEditing" OnRowUpdating="gvCart_RowUpdating" PageSize="5" OnRowDeleting="gvCart_RowDeleting">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="Type" HeaderText="Type" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name of product" ReadOnly="True" />
                        <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" />
                        <asp:BoundField DataField="Price" HeaderText="Price per unit" ReadOnly="True" />
                        <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
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
                &nbsp;&nbsp;&nbsp;
                <div class="auto-style1" style="width: 432px">
                    <asp:Label ID="lblPriceInCart" runat="server" Text="Price in cart:" ForeColor="White" Font-Size="14pt"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbPrice" runat="server" ReadOnly="True" Enabled="False" BackColor="White" ForeColor="Black" Width="75px">0</asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
