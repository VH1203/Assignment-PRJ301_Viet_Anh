<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css" />
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <title>Assignment PRJ301</title>
        <link rel="shortcut icon" href="assets/img/Title.png" type="image/x-icon"/>
    </head>
    <style>
        body{
            background-image: url(img/lg.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style media="screen">
        *,
        *:before,
        *:after{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-color: #080710;
        }
        .background{
            width: 430px;
            height: 520px;
            position: absolute;
            transform: translate(-50%,-50%);
            left: 50%;
            top: 50%;
        }
        .background .shape{
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }
        .shape:first-child{
            background: linear-gradient(
                #1845ad,
                #23a2f6
                );
            left: -80px;
            top: -80px;
        }
        .shape:last-child{
            background: linear-gradient(
                to right,
                #ff512f,
                #f09819
                );
            right: -30px;
            bottom: -80px;
        }
        form{
            height: 520px;
            width: 400px;
            background-color: rgba(255,255,255,0.13);
            position: absolute;
            transform: translate(-50%,-50%);
            top: 50%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255,255,255,0.1);
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            padding: 50px 35px;
        }
        form *{
            font-family: 'Poppins',sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        form h1{
            font-size: 40px;
            font-weight: 700;
            line-height: 42px;
            text-align: center;
        }

        label{
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
        }
        input{
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        ::placeholder{
            color: #e5e5e5;
        }
        button{
            margin-top: 50px;
            width: 100%;
            background-color: #ffffff;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }
        .social{
            margin-top: 30px;
            display: flex;
        }
        .social div{
            background: red;
            width: 150px;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            background-color: rgba(255,255,255,0.27);
            color: #eaf0fb;
            text-align: center;
        }
        .social div:hover{
            background-color: rgba(255,255,255,0.47);
        }
        .social .fb{
            margin-left: 25px;
        }
        .social i{
            margin-right: 4px;
        }
        .password-field {
            position: relative;
            margin-bottom: 1rem;

        }
        input[type=checkbox] {
        -webkit-transform: scale(0.3);}
        .password-toggle {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;

        }
    </style>
    <script>
        function togglePasswordVisibility(fieldId) {
            var field = document.getElementById(fieldId);
            var icon = document.getElementById('togglePassword');
            if (field.type === "password") {
                field.type = "text";
                icon.classList.remove('far', 'fa-eye');
                icon.classList.add('fas', 'fa-eye-slash');
            } else {
                field.type = "password";
                icon.classList.remove('fas', 'fa-eye-slash');
                icon.classList.add('far', 'fa-eye');
            }
        }
        function setRememberMeCookie() {
            var rememberMe = document.getElementById('rememberMe').checked;
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;

            if (rememberMe) {
                document.cookie = "username=" + username + "; path=/; max-age=" + (30 * 24 * 60 * 60); // 30 days
                document.cookie = "password=" + password + "; path=/; max-age=" + (30 * 24 * 60 * 60); // 30 days
            } else {
                document.cookie = "username=; path=/; max-age=0";
                document.cookie = "password=; path=/; max-age=0";
            }
        }

        window.onload = function() {
            var cookies = document.cookie.split("; ");
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].split("=");
                if (cookie[0] === "username") {
                    document.getElementById('username').value = cookie[1];
                }
                if (cookie[0] === "password") {
                    document.getElementById('password').value = cookie[1];
                }
            }
        }
    </script>
   <body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <div>
        <form action="login" method="POST" onsubmit="setRememberMeCookie()">
            <h1>LOGIN</h1>

            <label for="username">Username</label>
            <input type="text" placeholder="Username" name="username" id="username" required>

            <label for="password">Password</label>
            <div class="password-field">
                <input type="password" placeholder="Password" name="password" id="password" required>
                <span class="password-toggle" onclick="togglePasswordVisibility('password')">
                    <i class="far fa-eye" id="togglePassword"></i>
                </span>
            </div>

            <% if (request.getAttribute("errorMessage") != null) { %>
            <p style="color: red; text-align: center; margin-top: 20px"><%= request.getAttribute("errorMessage") %></p>
            <% } %>
            <button type="submit">Login</button>
            <div >
                <div >
                <input style="padding: 10px" type="checkbox" id="rememberMe" name="rememberMe">
<!--                <label for="rememberMe">Remember Me</label>-->
                </div>
            </div>
        </form>
    </div>
</body>
</html>
