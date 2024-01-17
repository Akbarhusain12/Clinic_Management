<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Clinic_Management.Views.Admin.Receptionist"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
<div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>
                    Receptionist Detail</h2>
                <form>
                <div class="mb-3">
                    <label for="RecNameTb" class="form-label">Name</label>
                    <input type="text" class="form-control" id="RecNameTb" runat="server" />
                    
                </div>

                <div class="mb-3">
                    <label for="RecEmailTb" class="form-label">
                        Email</label>
                    <input type="text" class="form-control" id="RecEmailTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="AddressTb" class="form-label">
                        Address</label>
                    <input type="text" class="form-control" id="RecAddressTb" runat="server" />
                </div>
                

                <div class="mb-3">
                    <label for="PhoneTb" class="form-label">
                        Phone Number</label>
                    <input type="text" class="form-control" id="RecPhoneTb" runat="server" />
                    
                </div>

                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">
                        Password</label>
                    <input type="password" class="form-control" id="RecPasswordTb" runat="server" />
                </div> 

                <label runat="server" id="ErrMsg" class="text-danger"></label><br />
                <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-warning" 
                    onclick="btnEdit_Click" />
                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" 
                    onclick="btnSave_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger" 
                    onclick="btnDelete_Click" />
         
                </form>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/reception.jpg" alt="error"  width="100%" height="450px"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Receptionist Details</h1>
                        <asp:GridView ID="gvReceptionist" class="table table-hover" runat="server" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            AutoGenerateSelectButton="True" 
                            onselectedindexchanged="gvReceptionist_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
