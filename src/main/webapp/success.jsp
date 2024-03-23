<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ff3e6c;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1, h2 {
            color: #ff6600;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #ff6600;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #e65c00;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Order Successfully Placed</h1>
        <p>Thank you for your order! Your order has been successfully placed.</p>
        
        <h2>Order Details:</h2>
        <% 
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM orders ORDER BY order_id DESC LIMIT 1");

                if (rs.next()) {
        %>
                    <ul>
                        <li>Order ID: <%= rs.getString(1) %></li>
                        <li>Order Product: <%= rs.getString(2) %></li>
                        <li>Total Amount: <%= rs.getString(7) %></li>
                    </ul>
        <%
                } else {
        %>
                    <p>No orders found.</p>
        <%
                }
                st.close();
                con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        %>
        
        <p>For any inquiries or issues regarding your order, please contact our customer support.</p>
        
        <a href="Home.jsp">Continue Shopping</a>
    </div>
</body>
</html>
