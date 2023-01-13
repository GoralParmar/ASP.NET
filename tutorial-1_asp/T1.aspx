<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T1.aspx.cs" Inherits="tutorial_1_asp.T1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="Click" />
        </div>
    </form>
</body>
</html>
