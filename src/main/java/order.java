import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/order"})
public class order extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve request parameters
        String id = request.getParameter("id");

        String productNames = request.getParameter("productNames");
        String prices = request.getParameter("prices");
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String paymentMode = request.getParameter("paymentMode");
        String totalprice = request.getParameter("totalprice");


        // Process the order and insert into the database
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection to the database
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "rahul2001")) {
                // Prepare SQL statement for inserting order details
                String sql = "INSERT INTO orders (order_id,product_names, prices, username, address, payment_mode, total_price) VALUES ( ?, ?, ?, ?, ?,?,?)";
                try (PreparedStatement pstmt = con.prepareStatement(sql)) {
                    pstmt.setString(1, id);

                    pstmt.setString(2, productNames);
                    pstmt.setString(3, prices);
                    pstmt.setString(4, username);
                    pstmt.setString(5, address);
                    pstmt.setString(6, paymentMode);
                    pstmt.setString(7, totalprice);


                    // Execute the SQL statement
                    pstmt.executeUpdate();
                }
            }
            
            // Redirect to a thank you page
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            // Handle any errors
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
