<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appoinment.aspx.cs" Inherits="Clinic_Management.Appoinment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="Stylesheet" href="Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body style="background-image: url(../Assets/Images/appointment.jpg); background-size: cover">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="Views/Guest/Home.aspx">Clinic</a>
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
          <a class="nav-link" href="Views/Guest/Home.aspx">Home</a>
        </li>   
        <li class="nav-item" style="margin-left: 850px;" >
          <a class="nav-link" href="Views/Guest/Registration.aspx">Registration</a>
        </li>
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
                    Appointment Form</h1>
                <br />
                Please fill out this Appointment Form and we will get back to you as soon as possible.
                <hr style="border: 2px solid black" />
                <form id="form1" runat="server">
                <div class="mb-3">
                    <label for="FName" class="form-label">
                        Name</label>
                    <input type="text" class="form-control" id="FName" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="FName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="AgeTb" class="form-label">
                        Age</label>
                    <input id="AgeTb" type="text" class="form-control" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="AgeTb" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <%--<div class="mb-3">
                    <label for="DOB" class="form-label">
                        Date of Birth</label>
                    <input type="text" class="form-control" id="DOB" runat="server"/><br />
                    <%--<asp:TextBox ID="DOB" runat="server" TextMode="Date" class="form-control"></asp:TextBox>                 
                </div>--%>
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
                    <label for="PhoneN" class="form-label">
                        Phone Number</label>
                    <input type="text" class="form-control" id="PhoneN" runat="server" /><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required"
                        ControlToValidate="PhoneN" ForeColor="Red"></asp:RequiredFieldValidator>
                    <div class="mb-3">
                        <label for="doctorTb" class="form-label">
                            Doctor</label>
                        <asp:DropDownList ID="doctorTb" runat="server" class="form-control">
                            <asp:ListItem>--Select Doctor--</asp:ListItem>
                            <asp:ListItem>Abid - Surgen</asp:ListItem>
                            <asp:ListItem>Haider - Radiologist</asp:ListItem>
                            <asp:ListItem>Shiraj - Dermatologist</asp:ListItem>
                            <asp:ListItem>Abbas - Cardiologist</asp:ListItem>
                            <asp:ListItem>Ahesan - Orthopedic</asp:ListItem>
                            <asp:ListItem>Sajid - Neurologist</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                    <label for="Rapp" class="form-label">
                        Reason For Appointment</label>
                        <asp:DropDownList ID="Rapp" runat="server" class="form-control">
                        <asp:ListItem>-- Select Reason --</asp:ListItem>
                        <asp:ListItem>Asthma review</asp:ListItem>
                        <asp:ListItem>Blood pressure review</asp:ListItem>
                        <asp:ListItem>Blood test</asp:ListItem>
                        <asp:ListItem>Depression and low mood</asp:ListItem>
                        <asp:ListItem>ECG (heart trace)</asp:ListItem>
                        <asp:ListItem>Minor eye conditions</asp:ListItem>
                        <asp:ListItem>Well person check</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                       </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="Desc" class="form-label">
                        Please briefly describe your Medical history, including any relevant conditions or previous treatments</label>
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                </div>
                    <%--<div class="mb-3">
                        <label for="AppD" class="form-label">
                            Appointment Date</label>
                        <asp:TextBox ID="AppD" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                    </div>--%>
                    <%-- <div class="mb-3">
                        <label for="Apptime" class="form-label">
                            Appointment Time</label>
                        <asp:TextBox ID="Apptime" runat="server" class="form-control"></asp:TextBox>
                    </div>--%>
                </div>
                <br />
                <asp:Label ID="lblResult" runat="server" EnableViewState="false"></asp:Label>
                <label runat="server" id="ErrMsg" class="text-danger">
                </label><br />
                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnLogin_Click" 
                style="margin-left: 165px; margin-right: 20px; font-size:18px"/>
                
                
                
            <!DOCTYPE html>
                <html xmlns="http://www.w3.org/1999/xhtml">
                <head id="Head1">
                    <title>Modal Popup Example</title>
                    <!-- Include Bootstrap CSS -->
                    <link rel="stylesheet" href="Libs/Bootstrap/css/bootstrap.min.css" />
                </head>
                <body>
                    <form id="form2">
                    
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal" style="font-size:18px">
                       Your Details
                    </button>
                    
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                               
                                <div class="modal-header">
                                    <h4 class="modal-title">
                                        Your Details</h4>
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;</button>
                                </div>
                                
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <label for="FName" class="form-label">
                                            Name :
                                        </label>
                                        <asp:Label ID="FirName" runat="server" class="form-control"></asp:Label>

                                        <label for="Age" class="form-label">
                                            Age :
                                        </label>
                                        <asp:Label ID="AgeTab" runat="server" class="form-control"></asp:Label>

                                        <label for="GenderTb" class="form-label">
                                            Gender :
                                        </label>
                                        <asp:Label ID="GenderTab" runat="server" class="form-control"></asp:Label>

                                        <label for="PhoneN" class="form-label">
                                            Phone Number :
                                        </label>
                                        <asp:Label ID="PhoneTab" runat="server" class="form-control"></asp:Label>

                                        <label for="DoctorT" class="form-label">
                                            Doctor :
                                        </label>
                                        <asp:Label ID="DoctorTab" runat="server" class="form-control"></asp:Label>

                                        <label for="RappTab" class="form-label">
                                            Reason :
                                        </label>
                                        <asp:Label ID="RappT" runat="server" class="form-control"></asp:Label>

                                        <label for="DescTab" class="form-label">
                                            Description
                                        </label>
                                        <asp:Label ID="DescT" runat="server" class="form-control"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblModalContent" runat="server" Text=""></asp:Label>
                                </div>

                                <div class="modal-footer">
                                    
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
                    <!-- Include Bootstrap JS and jQuery -->
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                </body>
                </html>
                <div class="row">
                </div>
                </form>
                <br />
                <br />
                <div class="row" style="height: 58px; width: 822px;">
                </div>
            </div>
        </div>
    </div>
</body>
</html>


















<%-- <div class="container">
                    <div class="modal fade" id="mymodal" data-backdrop="false" role="dailog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">
                                        Add New Record</h4>
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;</button>
                                </div>
                                <div class="modal-body">
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                                        Close</button>
                                    <asp:Button ID="btnSave" runat="server" Text="save" CssClass="btn btn-primary" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
<%--   <pages>
    <controls>
        <add tagPrefix="ajaxToolkit" assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" />
    </controls>
</pages>--%>
<%-- <%@ register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajax" %>
                <asp:ScriptManager runat="server" ID="ScriptManager1" />
                <div>
                    
                    <ajax:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup"
                        PopupControlID="YourPopupPanel" BackgroundCssClass="modalBackground">
                    </ajax:ModalPopupExtender>
                    <asp:Panel ID="YourPopupPanel" runat="server" CssClass="modalPopup" Style="display: none;">
                        <!-- Your popup content goes here -->
                 <div class="mb-3">
                    <label for="FName" class="form-label">
                        Name :
                    </label>
                    <asp:Label ID="FirName" runat="server" class="form-control"></asp:Label>
                    <label for="Age" class="form-label">
                        Age :
                    </label>
                    <asp:Label ID="AgeTab" runat="server" class="form-control"></asp:Label>
                    <label for="GenderTb" class="form-label">
                        Gender :
                    </label>
                    <asp:Label ID="GenderTab" runat="server" class="form-control"></asp:Label>
                    <label for="PhoneN" class="form-label">
                        Phone Number :
                    </label>
                    <asp:Label ID="PhoneTab" runat="server" class="form-control"></asp:Label>
                    <label for="DoctorT" class="form-label">
                        Doctor :
                    </label>
                    <asp:Label ID="DoctorTab" runat="server" class="form-control"></asp:Label>
                    
                </div>
                        <asp:Button ID="btnClosePopup" runat="server" Text="Close Popup" />
                    </asp:Panel>
                </div>--%>
<%--<script type="text/javascript">
        
        function PrintGridView() {
            
            var PGrid = document.getElementById('<%=gvAppointment.ClientID %>');
            
            PGrid.border = 0;
            
            var Pwin = window.open('', 'PrintGrid', 'left=100,top=100,width=1024,height=768,tollbar=0,scrollbars=1,status=0,resizable=1');
            
            Pwin.document.write(PGrid.outerHTML);
            
            Pwin.document.close();
            
            Pwin.focus();
            
            Pwin.print();
            
            Pwin.close();
            
        }
        
</script>--%>