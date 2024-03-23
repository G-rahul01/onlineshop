<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5; 
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #ff3e6c; 
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff; 
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #ff3e6c; 
            color: #fff;
        }

        .btn-primary {
            display: block;
            width: 120px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #ff3e6c;
            color: #fff;
            text-decoration: none;
            border-radius: 5px; 
            transition: background-color 0.3s; 
        }

        .btn-primary:hover {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    <h1>Order Details</h1>

    <div>
        <table>
            <tr>
                <th>Order ID</th>
                <th>Product Names</th>
                <th>Prices</th>
                <th>Username</th>
                <th>Address</th>
                <th>Payment Mode</th>
                <th>Total Price</th>
            </tr>

            <% 
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM orders");

                while (rs.next()) {
            %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><%= rs.getString(7) %></td>
                    </tr>
            <%
                }
                st.close();
                con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
    </div>
    <a href="adminhome.html" class="btn btn-primary">Back</a>
</body>
</html>
