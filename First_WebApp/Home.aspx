<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="First_WebApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
        </div>
    </form>
</body>
</html>
