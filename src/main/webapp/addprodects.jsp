<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #ff3e6c; 
            padding: 20px; 
        }
        .container {
            background-color: #fff;
            padding: 20px; 
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            max-width: 500px; 
            margin: 0 auto;
        }
        h2 {
            color: #ff3e6c; 
            text-align: center; 
            margin-bottom: 20px; 
        }
        .form-label {
            color: #333; 
            font-weight: bold; 
        }
        .form-control {
            border-color: #ccc;
            border-radius: 5px; 
        }
        .form-control:focus {
            border-color: #f44336;
            box-shadow: none;
        }
        .btn-primary {
            background-color: #ff3e6c; 
            border-color: #f44336;
            color: #fff; 
            font-weight: bold;
            transition: background-color 0.3s, border-color 0.3s, color 0.3s; 
        }
        .btn-primary:hover {
            background-color: #dc3545;
            border-color: #dc3545; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Products</h2>
        <form action="addProduct" method="post">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="productName" name="productName" required>
            </div>
            <div class="mb-3">
                <label for="productImage" class="form-label">Product Image URL</label>
                <input type="file" class="form-control" id="productImage" name="productImage" required>
            </div>
            <div class="mb-3">
                <label for="productPrice" class="form-label">Product Price</label>
                <input type="number" class="form-control" id="productPrice" name="productPrice" step="0.01" min="0" required>
            </div>
            <div class="mb-3">
                <label for="productQuantity" class="form-label">Quantity</label>
                <input type="number" class="form-control" id="productQuantity" name="productQuantity" min="0" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Product</button>
        </form>
    </div>
</body>
</html>
