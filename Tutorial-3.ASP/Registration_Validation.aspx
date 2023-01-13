<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Validation.aspx.cs" Inherits="Tutorial_3.ASP.Registration_Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1>Registration Form</h1>
            <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RVD1" runat="server" ErrorMessage="Name is require"  Text="*" ForeColor="Red" ControlToValidate="txtfname" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtlanme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RVD2" runat="server" ErrorMessage="Last name is require" Text="Last name is require" ForeColor="Red" ControlToValidate="txtlanme"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="Rbl1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RVD3" runat="server" ErrorMessage="Choose any 1" ForeColor="Red"  ControlToValidate="Rbl1" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RVD4" runat="server" ErrorMessage="Password is require" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lblConfirmpassword" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtConfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CV1" runat="server" ErrorMessage="Password is not same as above" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpassword" ForeColor="Red"></asp:CompareValidator>
            <br /><br />

            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RVD5" runat="server" ErrorMessage="Address is require" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            <br /><br />        

            <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label>
            <asp:TextBox ID="txtContact" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="Enter valid contact no" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lblcgpa" runat="server" Text="CGPA"></asp:Label>
            <asp:TextBox ID="txtCGPA" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" 
                runat="server" 
                ErrorMessage="CGPA must be in given range" 
                ControlToValidate="txtCGPA" 
                OnServerValidate="CustomValidator1_ServerValidate"
                SetFocusOnError="True"></asp:CustomValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <br />
        
    </form>
</body>
</html>
