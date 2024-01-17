<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Clinic_Management.Views.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="../Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body style="background-image:url(../Assets/Images/login.jpg);background-size:cover">
    <div class="container-fluid">
        <div class="row" style="height:120px"></div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-5">
                <h1>HeathHub Care Clinic</h1>
                <form id="form1" runat="server">
                <div class="mb-3">
                    <label for="EmailTb" class="form-label">
                        Email address</label>
                    <input type="text" class="form-control" id="EmailTb" runat="server"/>
                </div>
                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">
                        Password</label>
                    <input type="password" class="form-control" id="PasswordTb" runat="server"/><br />


                    
                    <asp:DropDownList ID="RoleTb" runat="server" class="form-control">
                    <asp:ListItem>--Select Role--</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="d-grid">
                 <label runat="server" id="ErrMsg" class="text-danger"></label><br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                        class="btn btn-primary btn-block" onclick="btnLogin_Click"/>

                </div>
                
                </form>

                <div class="row" style="height:10px"></div>
            </div>

            <div class="col-md-3">
            </div>
        </div>
    </div>
</body>
</html>
