<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5; 
            padding: 20px; 
        }
        h1 {
            color: #ff3e6c;
            text-align: center; 
            margin-bottom: 20px;
        }
        table {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            width: 100%;
        }
        th, td {
            padding: 10px; 
            text-align: center;
        }
        th {
            background-color: #ff3e6c;
            color: #fff; 
        }
        tbody tr:nth-child(even) {
            background-color: #f2f2f2; 
        }
        .btn {
            background-color: #ff3e6c;
            border-color: #f44336; 
            color: #fff; 
            font-weight: bold; 
            transition: background-color 0.3s, border-color 0.3s, color 0.3s; 
        }
        .btn:hover {
            background-color: #dc3545; 
            border-color: #dc3545;
        }
    </style>
</head>
<body>
    <h1>Product Details</h1>

    <div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Image</th>
                    <th>Product Price</th>
                    <th>Quantity</th>
                    <th>Actions</th> 
                </tr>
            </thead>
            <tbody>
                <% 
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("SELECT * FROM product");

                    while (rs.next()) {
                %>
                        <tr>
                            <td><%= rs.getString(1) %></td>
                            <td><%= rs.getString(2) %></td>
                            <td><img src="./image/<%= rs.getString(3) %>" style="max-width:100px; max-height:100px;" alt="Product Image"></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
                            <td>
                                <form action="deleteProduct" method="post" style="display: inline;">
                                    <input type="hidden" name="productId" value="<%= rs.getString(1) %>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                <%
                    }
                    st.close();
                    con.close();
                } catch(Exception e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>
    <a href="adminhome.html" class="btn btn-primary">Back</a>
</body>
</html>
