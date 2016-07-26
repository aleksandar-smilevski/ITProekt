<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProbaIT.SignUp" MasterPageFile="~/Default.Master" %>


    <asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <div> 
        <h1 class="auto-style2">Sign up</h1>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4">username</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">firstname</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">lastname</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>