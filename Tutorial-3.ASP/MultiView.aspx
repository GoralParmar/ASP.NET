<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="Tutorial_3.ASP.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <br />
                <asp:View ID="View1" runat="server">
                    <div>
                      <h1>Student Personal Information</h1>
                    
                    </div>
                    <asp:Label ID="lblName" runat="server" Text="Name:     "></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="lblGender" runat="server" Text="Gender:  "></asp:Label>
                    <input type="radio" name="Male" />Male<input type="radio" name="Female"/>Female
                    <br /><br />
                    <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="lblDegree" runat="server" Text="Degree:   "></asp:Label>
                    <asp:TextBox ID="txtDegree" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <div>
                      <h1>Student Contact Information</h1>
                    </div>
                    <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="lblContact" runat="server" Text="Contact: "></asp:Label>
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />&nbsp&nbsp
                    <asp:Button ID="btnNext1" runat="server" Text="Next" OnClick="btnNext1_Click" />
                    <br />
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="lblSName" runat="server" Text="SName:"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblSAdd" runat="server" Text="SAdress:"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblSDegree" runat="server" Text="SDegree:"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblSEmail" runat="server" Text="SEmail:"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblSContact" runat="server" Text="SContact:"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnPrevious1" runat="server" Text="Previous" OnClick="btnPrevious1_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
