<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Q-2.aspx.cs" Inherits="tutorial_1_asp.Q_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="C"></asp:Label><br /><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="F"></asp:Label><br /><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
             
            <br />
            <br />
            <asp:Button ID="btnCalcius" runat="server"  Text="Celcius" OnClick="btnCalcius_Click"/><br /><br />
            <asp:Button ID="btnFeranhit" runat="server"  Text="Feranhit" OnClick="btnFeranhit_Click" />
        </div>
    </form>
</body>
</html>
