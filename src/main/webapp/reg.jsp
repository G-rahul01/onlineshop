<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }
        nav {
            background-color: #ff3e6c;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            width: 80%;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .box {
            margin: 20px;
        }
        h2 {
            text-align: center;
            color: white;
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
        }
        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus {
            border-color: #ff3e6c;
        }
        button[type="submit"] {
            background-color: #ff3e6c;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        button[type="submit"]:hover {
            background-color: #d52c58;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .register-link a {
            color: #ff3e6c;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .register-link a:hover {
            color: #d52c58;
        }
    </style>
</head>
<body>
    <nav>
        <h2>Register Your Account</h2>
    </nav>
         
    <div class="container"> 
        <div class="box"> 
            <h2>Create Your Account</h2> 
            <form action="reg" method="post">
                <input type="text" id="username" name="username" placeholder="Username" required><br>
                <input type="password" id="password" name="password" placeholder="Password" required><br>
                <input type="password" id="confirm" name="confirm" placeholder="Confirm Password" required><br>
                <input type="email" id="email" name="email" placeholder="E-Mail" required><br>
                <input type="text" id="address" name="address" placeholder="Address" required><br>
                <input type="text" id="phonenumber" name="phonenumber" placeholder="Phone Number" required><br>
                <button type="submit">Register</button>
            </form>
                
            <div class="register-link">
                <p>Already have an account? <a href="login.jsp">Login Now</a></p>
            </div>
        </div>
    </div>
</body>
</html>
