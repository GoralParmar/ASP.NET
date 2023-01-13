<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T-2(Q-1).aspx.cs" Inherits="Tutotial_2.ASP.T_2_Q_1_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertise.xml" Height="480px" OnAdCreated="AdRotator1_AdCreated" Width="480px" />
        <br />
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Label ID="Label1" runat="server" Text="Selected Dtae"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Current Date"></asp:Label><br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
