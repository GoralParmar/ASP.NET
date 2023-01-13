<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="Online_Pharmacy.Views.Admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        
        <div class="row mt-5">
            <div class="col-md-4 ">
               
                        <div class="row mb-3">
                            <div class="col">
                               <input type="text" class="form-control" placeholder="Medicine Code" runat="server" id="MedCodeTb">
                            </div>
                            <div class="col">
                               <input type="text" class="form-control" placeholder="Medicine name" runat="server" id="MedNameTb">
                            </div>
                            
                        </div>

                        

                        <div class="row mb-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Medicine Price"  runat="server" id="PriceTb">
                              </div>
                            <div class="col">
                               <input type="text" class="form-control" placeholder="Medicine Stock" runat="server" id="Qtytb">
                            </div>
                        </div>
                           

                        <div class="row mb-3">
                                <div class="col">
                                  <input type="date" class="form-control" runat="server" id="ExpDate">
                                </div>

                                <div class="col">
                                    <asp:DropDownList runat="server" class="form-control" id="CatCb">
                                    <asp:ListItem Value="">Medicine Category</asp:ListItem>

                                    
                                </asp:DropDownList>
                                </div>
                            </div>
                <div>
                    <label id="ErrMsg" class="text-danger" runat="server"></label>
                </div>
              
                         <div class="row">
                            <div class="col d-grid">
                                <asp:Button ID="EditBtn" runat="server" Text="Edit" Class="btn btn-success btn-block" OnClick="EditBtn_Click" />

                            </div>
                            <div class="col d-grid">
                                <asp:Button ID="SaveBtn" runat="server" Text="Save" Class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />

                            </div>
                            <div class="col d-grid">
                                <asp:Button ID="DeleteBtn" runat="server" Text="Delete" Class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />

                            </div>

                        </div>


                    </div>
                    <div class="col-md-8">
                        <h2>Medicine List</h2>
                        <asp:GridView ID="MedicineList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicineList_SelectedIndexChanged"></asp:GridView>
                </div>
        
    
    </div>
    </div>
    
</asp:Content>
