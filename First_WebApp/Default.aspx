<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="First_WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <br />

    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" />

    <br />
    <br />

    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />

    


    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>

    


</asp:Content>
