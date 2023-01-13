<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Online_Pharmacy.Views.Seller.Billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <h4 class="text-success">Online Billing</h4>
        </div>

        <div class="row">
            <div class="col-md-4">
                <!-- Left Side Column-->

                <div class="row mb-3">
                            <div class="col">
                                <label class="h6 text-success">Medicine Code</label>
                               <input type="text" class="form-control" placeholder="Medicine Name" runat="server" id="MedNameTb">
                            </div>
                            <div class="col">
                                <label class="h6 text-success">Medicine Price</label>
                               <input type="text" class="form-control" placeholder="Medicine name" runat="server" id="MedPriceTb">
                            </div>
                            
                        </div>

                <div class="row mb-3">
                            <div class="col">
                                <label class="h6 text-success">Medicine Quantity</label>
                               <input type="text" class="form-control" placeholder="Medicine Quantity" runat="server" id="MedQtyTb">
                            </div>
                            <div class="col">
                                <label class="h6 text-success">Billing Date</label>
                               <input type="date" class="form-control"  runat="server" id="BillingDate">
                            </div>              
                        </div>
                <div class="row">
                    <label class="text-danger text-center" id="ErrMsg" runat="server"></label>
                    <div class="col">
                       <asp:Button ID="AddtoBillBtn" Text="Add to Bill" class="btn btn-success btn-block btn-block" runat="server" OnClick="AddtoBillBtn_Click"/>

                    </div>
                    <div class="col">
                       <asp:Button ID="ResetBtn" Text="Reset" class="btn btn-danger btn-block btn-block" runat="server" OnClick="ResetBtn_Click" />
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-8">
                        <h2>Medicine List</h2>
                        <asp:GridView ID="MedicineList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicineList_SelectedIndexChanged" ></asp:GridView>

                    </div>

                </div>
            </div>

            <div class="col-md-8">
                 <h4 class="text-center text-success">Client's Bill</h4>
                        <asp:GridView ID="BillGV" Class="table" runat="server"  ></asp:GridView>
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-6">
                        <label class="h5 text-danger text-center" id="GrdTotalTb" runat="server"></label>
                    </div>

                </div>       
                
                <div class="row">
                    <div class="col">
                       <asp:Button ID="PrintBtn" Text="Print" class="btn btn-success btn-block btn-block" runat="server" OnClick="PrintBtn_Click"/>

                    </div>
                    <div class="col">
                       <asp:Button ID="ClearBtn" Text="Clear" class="btn btn-warning btn-block btn-block" runat="server" />
                    </div>

                </div>
            </div>
            
        </div>


    </div>


</asp:Content>
