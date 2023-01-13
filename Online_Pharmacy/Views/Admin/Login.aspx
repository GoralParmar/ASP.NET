<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Pharmacy.Views.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css"/>
   
</head>
<body class="bg-success">
  
    <div class="container-fluid">
        <div class="mb-3"></div>

        <div class="row mt-5 mb-3">
            <div class="col-md-4"></div>
            <div class="col-md-4 bg-white">
                <h5 class="text-center">Pharmacy Management System</h5>
                <div class="justify-content-center"><img src="../../Assets/Images/bg-home-1.jpg" height="50px" /></div>
                <form runat="server">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="EmailTb" runat="server" autocomplete="off" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="PasswordTb" runat="server" autocomplete="off">
  </div>
  
                    <div class="d-grid mb-3">
                        <a href="../Seller/SellerLogin.aspx" class="text-success">Seller</a>
                        <asp:Button ID="LoginBtn" Text="Login" class="btn btn-success btn-block" runat="server" OnClick="LoginBtn_Click1"/>
                        </div>
</form>
            </div>
            <div class="col-md-4"></div>

        </div>

    </div>
</body>
</html>
