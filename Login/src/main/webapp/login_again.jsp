<%--
  Created by IntelliJ IDEA.
  User: sheha
  Date: 3/28/2023
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-color: #f8f8f8;
        }
        .container {
            width: 400px;
            margin: 100px auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }
        h1 {
            margin-top: 0;
            font-weight: normal;
            text-align: center;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="password"].error {
            border-color: red;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
        .cancelbtn {
            background-color: #f44336;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }
        img.avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }
        .container > p {
            text-align: center;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <div class="imgcontainer">
        <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
    </div>
    <form>
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>
        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        <span id="error-msg"></span>
        <button type="submit" onclick="validateForm()">Login</button>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
    </form>
    <p>Forgot <a href="#">password?</a></p>
</div>
<script>
    function validateForm() {
        var password = document.getElementsByName("password")[0].value;
        if (password !== "secret") {
            document.getElementsByName("password")[0].classList.add("error");
            document.getElementById("error-msg").innerHTML = "Wrong Password";
        } else {
            document.getElementsByName("password")[0].classList.remove("error");
            document.getElementById("
