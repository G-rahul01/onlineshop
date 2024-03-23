<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfume project</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="cart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

       .header {
    background-color: #ff3e6c; 
    color: white;
    padding: 20px;
    position: sticky;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    padding: 15px 0;
}

.header h2 {
    margin-left: 20px;
    color: white; 
    font-size: 36px;
    font-family: 'Arial Black', sans-serif; 
    text-shadow: 0 2px 4px rgba(0,0,0,0.5);
    
}

.nav-links {
    list-style: none;
    margin-left: 70%;
}

.nav-links li {
    display: inline;
    margin-right: 10px;
}

.nav-links li a {
    color: white;
    text-decoration: none;
    font-size: 20px; 
     font-family: 'Arial Black', sans-serif; 
    text-shadow: 0 2px 4px rgba(0,0,0,0.5); 
}

.nav-links li a:hover {
    color: black;
    font-weight: bold;
}

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }

        .product-box {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
            margin: 10px;
            padding: 20px;
            width: 250px;
        }

       .product-box img {
    width: 220px;
    height: 220px;
    border-radius: 8px;
}

        .product-box h3 {
            margin-top: 10px;
            font-size: 18px;
            color: #333;
        }

        .product-box h4 {
            margin-top: 5px;
            font-size: 16px;
            color: #777;
        }

        .product-box button {
            margin-top: 15px;
            background-color: #ff6b6c;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .product-box button:hover {
            background-color: #ff4d4f;
        }

        .contact {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
            padding: 20px;
            margin-top: 20px;
            text-align: center;
        }
        .footer{
    padding-top:50px;
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(200px,auto));
    background: #1a242f;
    position: static;
    padding-left:200px;
}
.footer-content p{
    color: #d6d6d6;
}
.footer-content h3{
    color: white;
    margin-bottom: 1.5rem;
    font-size: 20px;
}
.footer-content h3,p{
    padding-right: 70px;
}

.footer-content h4{
    color: white;
    margin-bottom: 1.5rem;
    font-size: 20px;
}
.add{

    margin-top: 1.0rem;

}
.icons a{
display: inline-block;
margin-right: 17px;
transition: all.40s ease;
padding-bottom: 20px;
}
.icons a:hover{
    transform: translateY(-3px) translateY(-5px);
    cursor: pointer;
}

.footer-content li{
    margin: bottom 10px;
}
.footer-content li{
    margin-top: 16px;
    display: block;
    color: #d6d6d6;
    font-weight: 400;
    font-size: 15px;
    transition: all.40s ease;
    
}
.footer-content li:hover{
color: #9b0a0a;
transform: translateY(-3px) translateY(-5px); 
cursor: pointer;
}
.footer-content p:hover{
    color: #b51919;
    transform: translateY(-3px) translateY(-5px);
    cursor: pointer;
    }
.copyright{
background-color:black;
  color: #777;
    text-align: center;
    padding: 10px;
    width:1000px;
        margin-left: 50px;
    
}
        
    </style>
</head>
<body>
    <div class="header">
        <h2>Perfumy</h2>
        <ul class="nav-links">
            <li><a href="cart.html">Cart</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </div>

    <div class="container product-container">
        <% 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");
            
            String sql = "SELECT * FROM product";
            
            Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
        %>
            <div class="product-box">
                <img src="./image/<%= rs.getString("productImage") %>" alt="<%= rs.getString("productName") %>">
                <h3><%= rs.getString("productName") %></h3>
                <h4>Price: ₹<%= rs.getString("productPrice") %></h4>
                <button onclick="addToCart('<%= rs.getString("productName") %>', <%= rs.getString("productPrice") %>)">Add to Cart</button>    
            </div>
        <%
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        %>
    </div><br>

    <section class="footer">
    <div class="footer-content">
        <h3>OUR PROMISE</h3>
      <p>At Perfume Palace, we promise an olfactory journey defined by quality and innovation. Our commitment to using high-quality ingredients ensures exceptional fragrances in every bottle.we create delightful shopping experiences that leave a lasting impression.</p>
        <br>
    <div class="icons">
        <a href="https://wa.me/qr/HPRZNEANPSVKE1"><img src="./image/whatsapp.png" width="40" height="30"/></a>
        <a href="https://www.facebook.com/profile.php?id=100038506965517&mibextid=zLoPMf" ><img src="./image/facebook.png"width="40" height="30"/></a>
        <a href="https://instagram.com/iam_rahulg_?igshid=YzAwZjE1ZTI0Zg=="><img src="./image/instagram.png"width="40" height="30"></a>
        <a href="mailto:rg429948@gmail.com?"><img src="./image/gmail.png"width="40" height="30"></a>
       
    </div>
    
    
    </div>
    <div class="footer-content">
        <h4>CATEGORIES</h4>
        <li>Women's Perfume</li>
        <li>Men's Cologne</li>
        <li>Unisex Fragrances</li>
        <li>All Fragrances</li>
    
    </div>
    <div class="footer-content">
        <h4>INFORMATION</h4>
        <li>Blogs</li>
        <li>About_Us</li>
        <li>Contact_Us</li>
        <li>Terms_of_Service</li>
    
    </div>
    
    
    
    <div class="footer-content">
        <h4>SUPPORT</h4>
        <li>Privacy_Policy</li>
        <li>Shipping_Policy</li>
        <li>Refund_&_Return_Policy</li>
        <li>Terms_&_Conditions</li>
    
    </div>
    
    <div class="footer-content">
    <h4>Address</h4>
    <p  class="add">Address:55,Thiruvalluvar street,Rajendrasozhagan post,Kattumannarkoil,Cuddalore,<br>Tamilnadu-606301.<br>Phone.no:8973461155</p>
    </div>
    
    <hr style="color: #1a242f">
    <hr>
    <hr>
    <hr>
    <hr>
    <hr>
    <br>
    <h5 class="copyright">Copyright © Perfumy Private Limited. All rights reserved.</h5>
    
        </section>
   
    
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
 