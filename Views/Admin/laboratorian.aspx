<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="laboratorian.aspx.cs" Inherits="Clinic_Management.Views.Admin.laboratorian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
 <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>
                    Laboratorian Detail</h2>
                <form>
                <div class="mb-3">
                    <label for="NameTb" class="form-label">Name</label>
                    <input type="text" class="form-control" id="NameTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="EmailTb" class="form-label">
                        Email</label>
                    <input type="text" class="form-control" id="EmailTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">
                        Password</label>
                    <input type="password" class="form-control" id="PasswordTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="PhoneTb" class="form-label">
                        Phone Number</label>
                    <input type="text" class="form-control" id="PhoneTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="AddressTb" class="form-label">
                        Address</label>
                    <input type="text" class="form-control" id="AddressTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="GenderTb" class="form-label">
                        Gender</label>
                    <asp:DropDownList ID="GenderTb" runat="server" class="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                
                <label runat="server" id="ErrMsg" class="text-danger"></label><br />
                <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-warning" 
                    onclick="btnEdit_Click"/>
                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" 
                    onclick="btnSave_Click"/>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger" 
                    onclick="btnDelete_Click"/>
                </form>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/lab.jpg"  width="100%" height="500px"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Laboratorian Details</h1>
                        <asp:GridView ID="gvLaboratorian" class="table table-hover" runat="server" 
                            AutoGenerateSelectButton="True" 
                            onselectedindexchanged="gvLaboratorian_SelectedIndexChanged"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
