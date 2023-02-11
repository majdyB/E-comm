
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    <!DOCTYPE html>
<html lang="en">
    <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Doctor</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    </head>
    <body>
      <!-- header section start -->
      <div class="header_section">
        <nav class="destop_header navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"></div>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="doctor.html">Doctor</a>
              </li>
              <li class="nav-item">
                <a class="logo_main" href="index.html"><img src="images/logo.png"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="depatments.html">Depatments</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.jsp">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="images/search-icon.png"></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">LOGIN</a>
              </li>              
            </ul>
          </div>
        </nav>
        <nav class="mobile_header navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"><a href="index.html"><img src="images/logo.png"></a></div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent2">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="doctor.html">Doctor</a>
              </li>
              <li class="nav-item">
                <a class="logo_main" href="index.html"><img src="images/logo.png"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="depatments.html">Depatments</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.jsp">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="images/search-icon.png"></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">LOGIN</a>
              </li>              
            </ul>
          </div>
        </nav>
      </div>
         <div class="services_section layout_padding padding_bottom_0">
        <div class="container">
          <div class="row" style="padding-bottom: 100px">
          <%
 Connection con;
String id=request.getParameter("id");
String title=request.getParameter("title");
String sd=request.getParameter("sd");
String ld=request.getParameter("ld");
String img=request.getParameter("img");
String price=request.getParameter("price");
String notice=request.getParameter("notice");%>
              <h1 class="contact_text" style="color:#343a40">Add Service</h1>
<form action="EditeService.jsp?id=<%=id %>" method="post">
 <div class="form-group">
                    <input type="text"  class="email-bt" value=<%=title %> name="title">
                  </div>
                  

                  <div class="form-group">
                    <input type="text" class="email-bt" value=<%=sd %>  name="SD">
                  </div>
                  <div class="form-group">
                      <textarea class="massage-bt" valuer=<%=ld %> placeholder=<%=ld %> rows="5" id="comment" name="LD"></textarea>
                    </div>
                  
                  <div class="form-group">
                    <input type="text" class="email-bt" value=<%=img %> name="img">
                  </div>
                   <div class="form-group">
                    <input type="text" class="email-bt" value=<%=price %> name="price">
                  </div>
                  <div class="form-group">
                    <input type="text" class="email-bt" value=<%=notice%> name="notice">
                   </div>
                
                    <input style="background-color: #0cd268;  color: white;  padding: 12px 24px;  border: none;  cursor: pointer; border-radius: 100px; width: 300px; height: 50px" type="submit" value="Save" >
                  </form>
                  
                 
              </div>
          </div>
        </div>


 </body>
 </html>
