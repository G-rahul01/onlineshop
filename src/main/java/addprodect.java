import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addProduct")
public class addprodect extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String productImage = request.getParameter("productImage"); // Assuming productImage contains the URL of the image
        String productPrice = request.getParameter("productPrice");
        String productQuantity = request.getParameter("productQuantity");

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the MySQL database (replace 'jdbc:mysql://localhost:3306/database_name' with your database URL)
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");

            // SQL query to insert the product details into the 'product' table
            String sql = "INSERT INTO product (productName, productImage, productPrice, productQuantity) VALUES (?, ?, ?, ?)";

            // Create a PreparedStatement to execute the SQL query
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, productName);
            pstmt.setString(2, productImage);
            pstmt.setString(3, productPrice);
            pstmt.setString(4, productQuantity);

            // Execute the PreparedStatement to insert the product details
            pstmt.executeUpdate();

            // Close the PreparedStatement and database connection
            pstmt.close();
            con.close();

            // Redirect the user back to the addproducts.jsp page after successful product addition
            response.sendRedirect("productdetails.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any exceptions (e.g., display an error message)
        }
    }
}
