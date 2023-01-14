<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/14/2023
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Successful</title>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
  body{
    background: radial-gradient(circle, rgba(61,0,0,1) 18%, rgba(0,0,0,1) 68%, rgba(0,0,0,1) 100%);
    display: flex;
    align-content: center;
    justify-content: center;
    color: white;
    font-family: 'Roboto-Condensed', sans-serif;
  }
  button{
    width: 140px;
    height: 70px;
    background: transparent;
    border-radius: 30px;
    border: 4px solid white;
    color: white;
    font-size: 15px;
    transition: 1s;
  }
  button:hover{
    background: red;
    transition: 1s;
    transform: scale(1.1);
  }
</style>
<body>
  <div style="display: flex; flex-direction: column; align-content: center; justify-content: center">
    <h1 style="padding-bottom: 50px; font-size: 36px">Payment Successful</h1>
    <center><i class="fa fa-check-circle" aria-hidden="true" style="color: #3C9721; font-size: 90px; padding-bottom: 50px"></i></center>
    <center><button onclick="location.href='index.jsp'">Return to Home</button></center>
  </div>
</body>
</html>
