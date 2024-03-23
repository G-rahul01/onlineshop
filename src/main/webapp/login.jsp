<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        nav {
            background-color: #ff3e6c; 
            color: white;
            padding: 20px;
            position: sticky;
            text-align: center;
        }
        
        .container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            border: 1px solid #ff3e6c; 
            border-radius: 10px;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); 
        }
        
        h2 {
            text-align: center;
            background-color: #ff3e6c;
            color: white;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
        }
        
        button {
            background-color: #ff3e6c; 
            color: white;
            border: none;
            padding: 10px;
            width: 100px;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s; 
        }
        
        button:hover {
            background-color: #d52c58;
        }
        
        body {
            background-color: #f8f9fa; 
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            color: #333; 
        }
        
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
        }
        
        input[type="radio"] {
            margin-right: 5px;
        }
        
        p {
            margin-top: 20px;
            text-align: center;
        }
        
        a {
            color: #ff3e6c; 
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <nav>
        <h2>Login Your Account</h2>
    </nav>
    <div class="container">
        <form action="login" method="post">
            <h2>Sign In</h2>
            <label for="username">User Name:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <p>Select Your Role:</p>
            <input type="radio" id="user" name="choose" value="User" required>
            <label for="user">User</label>
            <input type="radio" id="admin" name="choose" value="Admin" required>
            <label for="admin">Admin</label>
            <br>
            <button type="submit">Sign In</button>
        </form>
        <p>New to Perfumy? <a href="reg.jsp">Sign up</a></p>
    </div>
    
</body>
</html>
