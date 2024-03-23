import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/reg")
public class reg extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phonenumber");

        String confirmPassword = request.getParameter("confirm");
        PrintWriter pw = response.getWriter();

    	
		if(password.equals(confirmPassword))
		{
		try
		{   
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","rahul2001");
			PreparedStatement ps = con.prepareStatement("insert into user (username, password, email, address, phonenumber) values(?,?,?,?,?)");
			ps.setString(1,userName);
			ps.setString(2,password);
			ps.setString(3,email);
			ps.setString(4,address);
			ps.setString(5,phoneNumber);

			
			ps.executeUpdate();
			response.sendRedirect("login.jsp");
		}
		catch(Exception e1)
		{
			pw.println(e1);
		} finally {
		}
		}else 
		{
			response.sendRedirect("index.jsp");
		}
		
	}

}
