import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteProduct")
public class deleteprodect extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Get the product ID to be deleted from the request parameter
        String productId = request.getParameter("productId");
        PrintWriter out = response.getWriter();
        
        // Check if productId is not null and not empty
        if(productId != null && !productId.isEmpty()) {
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");
                
                // Connect to the MySQL database
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001");
                
                // SQL query to delete the product with the given ID
                String sql = "DELETE FROM product WHERE productId = ?";
                
                // Create a PreparedStatement to execute the SQL query
                PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.setString(1, productId);
                
                // Execute the PreparedStatement to delete the product
                pstmt.executeUpdate();
                
                // Close the PreparedStatement and database connection
                pstmt.close();
                con.close();
                
                // Redirect back to the product details page after successful deletion
                response.sendRedirect("productdetails.jsp");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Handle any exceptions
            }
        } else {
            // Handle invalid or missing productId
            out.println("Invalid product ID.");
        }
    }
}
