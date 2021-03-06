<%@ page contentType="text/html; charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="uengine" uri="http://www.uengine.io/tags" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org"
      lang="en">
<!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>uEngine Billing | HOME</title>

  <%@include file="../template/header_js.jsp" %>
</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
  <div>
    <div>

      <h1 class="logo-name">uEngine</h1>

    </div>
    <h3>Account already exists.</h3>
    <p>Already Signed Up? Click <a href="/auth/login">Sign In</a> to login your account.</p>

    <br>
    <p id="mailExist"></p>

    <form id="register_form" class="m-t" role="form">
      <button type="submit" class="btn btn-primary block full-width m-b">Login Page</button>
    </form>
    <p class="m-t"> <small>uEngine subscription billing app &copy; 2016</small> </p>
  </div>
</div>

<%@include file="../template/footer_js.jsp" %>

</body>


<script>
  $(function () {
    $('#register_form').submit(function (e) {
      e.preventDefault();
      location.href = '/auth/login';
    });
    $('#mailExist').text('${responseEmail}' + ' is already subscribed.');

  })
</script>
</body>
</html>
