<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="com.sample.oauth.core.FBConnection"%>
<%@ page import="com.sample.oauth.core.FBConnection" %>
<%
  FBConnection fbConnection = new FBConnection();
%>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="https://www.freeiconspng.com/uploads/handshake-icon-30.png">

  <title>Join Us</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css">

</head>

<body class="bg-light">

<div class="container">
  <div class="py-5 text-center">
    <i class="fa fa-handshake-o fa-5x"></i>
    <h2>Join Us</h2>
    <p>Fill the requested details to join with us</p>
    <hr>
      <div style="margin-top:50px; alignment: center">
          <a href="<%=fbConnection.getFBAuthUrl()%>"><img class="img-fluid d-block mx-auto mb-4" src="https://i.stack.imgur.com/oL5c2.png" width="300" alt=""></a>
      </div>
      <div class="mb-3"><h4>USER INFORMATION</h4></div>
  </div>

  <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
      <form action="">
        <div class="row">
            <div class="col-md-3 "></div>
            <div class="col-md-6 " >
                <label for="profile-picture">Your Profile Picture</label>
                <img src="<%= request.getAttribute("id")==null ?"https://www.freeiconspng.com/uploads/blue-user-head-png-18.png": "https://graph.facebook.com/"+request.getAttribute("id")+"/picture?width=500&height=500"%>" class="center rounded img-thumbnail d-block" width="200" height="200" alt="...">
            </div>
            <div class="col-md-3 "></div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
            <input type="text" class="form-control" id="firstName" placeholder="First name" value="<%= request.getAttribute("first_name")==null ?"": request.getAttribute("first_name")%>" required>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <input type="text" class="form-control" id="lastName" placeholder="Last name" value="<%= request.getAttribute("last_name")==null ?"": request.getAttribute("last_name")%>" required>
          </div>
        </div>

        <div class="mb-3">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" placeholder="Email" value="<%= request.getAttribute("email")==null ?"": request.getAttribute("email")%>" required>
        </div>

        <div class="mb-3">
          <label for="hometown">Home Town</label>
          <input type="text" class="form-control" id="hometown" placeholder="Home Town" value="<%= request.getAttribute("hometown")==null ?"": request.getAttribute("hometown")%>">
        </div>

        <div class="mb-3">
          <label for="current-location">Current location</label>
          <input type="text" class="form-control" id="current-location" placeholder="Current location" value="<%= request.getAttribute("location")==null ?"": request.getAttribute("location")%>" required>
        </div>

        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="dob">Date of birth</label>
            <input id="dob" class="form-control" placeholder="Date of birth" value="<%= request.getAttribute("birthday")==null ?"": request.getAttribute("birthday")%>" required>
          </div>
          <div class="col-md-6 mb-3">
            <label for="gender">Gender</label>
            <div class="custom-control custom-radio">
              <input type="radio" class="custom-control-input" name="gender" id="male" checked value="Male">
              <label class="custom-control-label" for="male">Male</label>
            </div>
            <div class="custom-control custom-radio">
              <input type="radio" class="custom-control-input" name="gender" id="female" value="Female">
              <label class="custom-control-label" for="female">Female</label>
            </div>
          </div>
        </div>
        <%
          String gend = (String) request.getAttribute("gender");
          if(gend == null || "male".equals(gend)){%>
        <script>
            document.getElementById("male").checked = true;
        </script>
        <%}else {%>
        <script>
            document.getElementById("female").checked = true;
        </script>
        <%}%>
        <hr class="mb-4">

        <button class="btn btn-primary btn-lg btn-block" type="submit">Join With Us</button>
      </form>
      </div>
      <div class="col-md-3"></div>
  </div>

</div>

<!-- Bootstrap core JavaScript
================================================== -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
<script>
    $('#dob').datepicker({
        uiLibrary: 'bootstrap4'
    });
</script>

</body>
</html>

