<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Clinic_Management.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body style="background-image: url(../../Assets/Images/registration.jpg); background-size: cover">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.aspx">Clinic</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Laboratorian</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Receptionist</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Home.aspx">Home</a>
        </li>  
        <%--<li class="nav-item" style="margin-left: 850px;" >
          <a class="nav-link" href="../../Appoinment.aspx">Appointment</a>
        </li> --%>
        
        </ul>
        
    </div>
  </div>
</nav>

    <div class="container-fluid">
        <div class="row" style="height: 20px">
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-5">
                <h1>
                    Registration</h1>
                <br />
                <form id="form1" runat="server">
                <div class="mb-3">
                    <label for="FName" class="form-label">
                        First Name</label>
                    <input type="text" class="form-control" id="FName" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="FName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="LName" class="form-label">
                        Last Name</label>
                    <input type="text" class="form-control" id="LName" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="LName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="Emailtb" class="form-label">
                        Email</label>
                    <input type="text" class="form-control" id="Emailtb" runat="server" /><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email"
                        ControlToValidate="Emailtb" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <label for="DOB" class="form-label">
                        Date of Birth</label>
                    <input type="text" class="form-control" id="DOB" runat="server" /><br />
                    <%--<asp:TextBox ID="DOB" runat="server" TextMode="Date" class="form-control"></asp:TextBox>  --%>
                </div>
                <div class="mb-3">
                    <label for="GenderTb" class="form-label">
                        Gender</label>
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-3">
                    </div>
                    <asp:DropDownList ID="GenderTb" runat="server" class="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
                <div class="mb-3">
                    <label for="Add" class="form-label">
                        Address</label>
                    <input id="Add" type="text" class="form-control" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="Add" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="PhoneN" class="form-label">
                        Phone Number</label>
                    <input type="text" class="form-control" id="PhoneN" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="PhoneN" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
                <div class="mb-3">
                   <label runat="server" id="ErrMsg" class="text-danger">
                </label>
                    <asp:Button ID="btnLogin" runat="server" Text="Register" class="btn btn-primary btn-block form-control"
                        OnClick="btnLogin_Click"/></div>

                    <%--<asp:Button ID="btnEdit" runat="server" Text="Back to Home" class="btn btn-warning" 
                        style="margin-right: 30px;" PostBackUrl="~/Views/Guest/Home.aspx"/>--%>
                    <%--<asp:Button ID="btnDelete" runat="server" Text="Appoinment" class="btn btn-danger" />--%>
                
                </form>
                <br />
                <br />
                <div class="row" style="height: 58px; width: 822px;">
                </div>
            </div>
        </div>
    </div>
    <%--<div class="row">
                    <div class="col" style="margin-left: 210px;">
                      <h1 align="center">Your Information</h1><br />
                        <asp:DataList ID="dlRegistration" runat="server" BackColor="White" 
                            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            DataKeyField="ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" align="center">
                            <AlternatingItemStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <ItemTemplate>
                                ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                                <br />
                                FName&nbsp; :
                                <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                                <br />
                                LName&nbsp; :
                                <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                                <br />
                                Email&nbsp;&nbsp;&nbsp; :
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                <br />
                                Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                <br />
                                Gender&nbsp; :
                                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                                <br />
                                Address :
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                <br />
                                Phone&nbsp;&nbsp;&nbsp; :
                                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                                <br /><br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            
                        </asp:DataList>
                        <input id="Button1" type="button" value="Appoinment" align="center" class="btn btn-primary btn-block"/>
                        <asp:Button ID="Button1" runat="server" Text="Appoinment" align="center" class="btn btn-primary btn-block"/>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Users\Akbar Husain\Documents\ClinicDB.mdf&quot;;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                            ProviderName="System.Data.SqlClient" 
                            SelectCommand="SELECT * FROM [RegistrationTbl]"></asp:SqlDataSource>--%>
    <%--<asp:GridView ID="gvRegistration" runat="server" 
                            style="margin-left: 0px; margin-right: 3px" Width="1020px" CellPadding="4" 
                            ForeColor="#333333" GridLines="None" >
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
                        </asp:GridView>--%>
    <%-- <br />
                        <br />
                        <br />
                  </div>
            </div>--%>
    <%--<div class="container-fluid">
        <div class="row" style="height:20px"></div>
        <div class="row">
        <div class="col-md-4">
            </div>
            <div class="col-md-5">
                <h1>Your  Information</h1><br />
                <form id="form2">
                <div class="mb-3">
                    <label for="FName" class="form-label" id="Fname">
                        First Name</label></div>

                <div class="mb-3">
                    <label for="LName" class="form-label" id="Lname">
                        Last Name</label></div>

                 <div class="mb-3">
                    <label for="Emailtb" class="form-label" id="Email">Email</label>
                 </div>

                <div class="mb-3">
                    <label for="DOB" class="form-label" id="DOBtb"> 
                        Date of Birth</label><br /></div>

                <div class="mb-3">
                    <label for="GenderTb" class="form-label" id="Gender"> Gender</label> </div>

                 <div class="mb-3">
                    <label for="Add" class="form-label" id="Add">
                        Address</label>
                     
                </div>
               
                <div class="mb-3">
                    <label for="PhoneN" class="form-label" id="Phone">
                        Phone Number</label>
                    
                    
                </div> </form>

                <div class="row" style="height:58px; width: 822px;"></div>
            </div>
         
        
    </div>
    </div>--%>
</body>
</html>
