<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Online_Pharmacy.Views.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
    <div class="row mt-5">
            <div class="col-md-4 bg-white">
                        <div class="row mb-3">
                            <div class="col">
                               <input type="text" class="form-control" autocomplete="off" placeholder="Category name" id="CatNameTb" runat="server">
                            </div>
                            
                        </div>
                <div>
                            <label id="ErrMsg" class="text-danger" runat="server"></label></div>
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
                        <h2>Categories List</h2>
                        <asp:GridView ID="CategoryList" Class="table table-success" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoryList_SelectedIndexChanged"></asp:GridView>
                </div>

        </div> 
        </div>
</asp:Content>
