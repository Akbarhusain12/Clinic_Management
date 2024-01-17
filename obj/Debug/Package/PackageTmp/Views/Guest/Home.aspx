<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Clinic_Management.Views.Guest.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body>
    
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Clinic</a>
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
          <a class="nav-link" href="../Login.aspx">Login</a>
        </li>   
        <li class="nav-item" style="margin-left: 745px;" >
          <a class="nav-link" href="Registration.aspx">Registration</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../../Appoinment.aspx">Appointment</a>
        </li>
     </ul>
    </div>
  </div>
</nav>
        <div class="row" style="background-image: url(../../Assets/Images/home.jpg); height: 480px;
            background-size: cover;">
            <div class="col-md-2">
            </div>
            <div class="col-md-5">
                <div class="row" style="height: 100px">
                </div>
                <h1>Shalby Hospitals</h1>
                <h3>
                    Your Health is Our Only Priority</h3>
                <h4>
                    Enhancing Life and Excelling in Care.</h4>
                <%--<p class="h5">
                    Our Clinic has been created in 2015 by a group of person who really taking care
                    of People</p>--%>
                <br />
                <button class="btn btn-primary">
                    Contact Us</button>
                <button class="btn border-primary text-primary bg-transparent">
                    FeedBack</button>
            </div>
        </div>
        <div class="row bg-primary-subtle">
            <div class="row" style="height: 20px">
            </div>
            <div class="row">
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Surgery</h4>
                            <p align="center">
                                The Clinic has Surgery Department with highly qualified Doctor</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Dermatology</h4>
                            <p align="center">
                                Highly-trained and reliable dermatologists at your service</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row ">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Neurology
                            </h4>
                            <p align="center">
                                We deal with brain circuits that generate the reality of life</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="height: 22px">
            </div>
        </div>
        <div class="row bg-primary-subtle">
            <div class="row" style="height: 20px">
            </div>
            <div class="row">
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row ">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Cardiology</h4>
                            <p align="center">
                                Only the best care for your heart, come see us for the start.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row ">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Orthopedics</h4>
                            <p align="center">
                                Let us boost your bones- let's make them stronger than stones</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 bg-light offset-1 rounded-3">
                    <div class="row ">
                        <div class="col-3">
                            <img src="../../Assets/Images/cli.png" />
                        </div>
                        <div class="col-7">
                            <h4 class="text-center">
                                Radiology</h4>
                            <p align="center">
                                Never lie to a radiologist, we can see right through you</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row" style="height: 22px">
            </div>
                    </div>
    </div>
    <div class="row" style="background-image: url(../../Assets/Images/appointment.jpg); height: 700px; background-size: cover;">
            <div class="hospitaldetailsWrap" align="center">
                <%--<div class="container flex-container">--%>
                    <%--<div class="hospitaldetailsLeft col-lg-6 col-md-6 col-sm-12">--%><br /><br />
                        <h1>Hospital Overview</h1>
                       <%-- <div class="DetailsInnerWrapper">--%>
                            <div class="customContent">
                               <h5> <p style="line-height:35px">
                                    What is true happiness? Living a healthy, pain-free life and enjoying a revitalized
                                    sense of living every day is the definition of true happiness. With the mission
                                    to help one live life in full vigor, no matter what age you are or where you come
                                    from, Shalby Hospitals was established in 1994 by Dr. Vikram Shah, world-renowned
                                    joint replacement surgeon and visionary healthcare entrepreneur. His main objective


                                    was to provide extraordinary care and treatment as per the international standards
                                    to the people of his country.
                                </p>
                                <p style="line-height:35px">
                                    Known as the leading orthopaedic center of the world, Shalby Hospitals gradually
                                    expanded its horizons across the length and breadth of India. From just one hospital,
                                    today, Shalby is the largest chain of hospitals in Western and Central India. With
                                    a team of experts in diverse medical specialties like orthopedics &amp; joint replacement,
                                    cardiac care, nephrology, neurology, critical care, gynecology, dental care, etc.,
                                    Shalby has become the centre of excellence for all healthcare needs. Shalby got
                                    listed on BSE/NSE on December, 2017.
                                </p></h5><br /><br />
                               
                                   <h3> <strong>Shalby Limited Group of Companies and Business Verticals </strong></h3><br />
                              
                                <h4>Hospitals</h4>
                                
                                   <h6>SOCE – Shalby Orthopaedic Centres of Excellence</h6>
                                    <h6>Multispecialty</h6>
                                    <h6>Shalby Homecare</h6>
                                   <h6>Shalby Academy</h6>
                               
                                <%--<p>
                                    <strong>Slaney Healthcare (Surgical &amp; Pharma Products)</strong></p>
                                <ul>
                                    <li>Hosply (Hospital Supplies)</li>
                                </ul>
                                <ul>
                                <p>
                                    <strong>MARS Medical Devices</strong>
                                    </p>
                                    <li>SAT – Shalby Advanced Technologies Inc., USA</li>
                                    <li>SGT – Shalby Global Technologies PTE Ltd, Singapore</li>
                                    
                                </ul>--%>
                            </div>
                        </div>
                   <%-- </div>--%>
<%--                    <div class="hospitaldetailsRight col-lg-6 col-md-6 col-sm-12">
                        <img class="hospitaldetailsVideo" data-toggle="modal" data-target="#videoModal" src="http://img.youtube.com/vi/o1NhX6dtrHQ/hqdefault.jpg">
                        <img class="hospitaldetailsPlay" data-toggle="modal" data-target="#videoModal" src="https://www.shalby.org/wp-content/themes/Shalby/images/playYoutube.png">
                        <div class="modal" id="videoModal">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close youtubeclose" data-dismiss="modal" aria-hidden="true">
                                            ×</button>
                                        <div class="iframe-cotainer">
                                            <iframe width="100%" height="350" src="https://www.youtube.com/embed/o1NhX6dtrHQ?autoplay=0&amp;enablejsapi=1"
                                                data-gtm-yt-inspected-9023687_22="true" id="682491811" data-gtm-yt-inspected-8="true"
                                                title="Shalby Hospitals | Best Super Multi-Specialty Hospital in India"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                
            </div>
             <%--</div>--%>
            <%-- </div>--%>
</body>
</html>
