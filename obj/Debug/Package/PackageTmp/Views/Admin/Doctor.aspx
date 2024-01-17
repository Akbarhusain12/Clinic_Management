<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="Doctor.aspx.cs" Inherits="Clinic_Management.Views.Admin.Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>
                    Doctors Detail</h2>
                <form>
                <div class="mb-3">
                    <label for="DocNameTb" class="form-label">
                        Doctor Name</label>
                    <input type="text" class="form-control" id="DocNameTb" runat="server" />
                    
                </div>

                <div class="mb-3">
                    <label for="DocPhoneTb" class="form-label">
                        Phone Number</label>
                    <input type="text" class="form-control" id="DocPhoneTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="DocExpTb" class="form-label">
                        Experience</label>
                    <input type="text" class="form-control" id="DocExpTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="SPZTb" class="form-label">
                        Specialization</label>
                    <input type="text" class="form-control" id="SPZTb" runat="server"/>
                    
                </div>

                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">
                        Password</label>
                    <input type="password" class="form-control" id="PasswordTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="GenderTb" class="form-label"> Gender</label>
                    <asp:DropDownList ID="GenderTb" runat="server" class="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                   
                </div>

                <div class="mb-3">
                    <label for="DocAddressTb" class="form-label">
                        Address</label>
                    <input type="text" class="form-control" id="DocAddressTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="DOBTb" class="form-label">
                        Date Of Birth</label>
                    <%--<asp:TextBox ID="DOBTb" runat="server" TextMode="Date"></asp:TextBox>--%>
                    <input  type="text" class="form-control" id="DOBTb" runat="server"/>
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
                        <img src="../../Assets/Images/doctors.jpg" alt="Error" width="100%" height="550px"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Doctor Details</h1>
                        <asp:GridView ID="gvDoctor" class="table table-hover" runat="server" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onselectedindexchanged="gvDoctor_SelectedIndexChanged" 
                            AutoGenerateSelectButton="True">
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
