<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ProbaIT.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10">
        <div class="row" style="margin: 0 auto; width:78.2%">
            <div class="col-md-12" style="margin-top:5%">
                <h2 class="text-center">Your Orders</h2>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>      
        </div>
    </div>
</asp:Content>
