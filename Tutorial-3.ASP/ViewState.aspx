<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="Tutorial_3.ASP.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblEnrl" runat="server" Text="Enrollment no"></asp:Label>
            <asp:TextBox ID="txtEnrl" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
            <asp:HiddenField ID="HiddenField2" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
            <br />
            <br />
            <asp:Button ID="btnStore" runat="server" Text="Store" OnClick="btnStore_Click" />
            <asp:Button ID="btnTransfer" runat="server" Text="Transfer" OnClick="btnTransfer_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <br /><br />

            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtbox1" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Enrollment no"></asp:Label>
            <asp:TextBox ID="txtbox2" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>

</html>
