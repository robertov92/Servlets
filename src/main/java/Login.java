import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * My Login class is a servlet class used to manage the login operations of my web application
 */
@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {

    // Post method is used to protect the user's information
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Takes the key-value pairs from the form located in the login.jsp page
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        // Only one user can login in this web application
        // For simplicity, the username and password are hardcoded here
        // In real life however, we would extract this information from a database
        if(user.equals("Roberto") && pass.equals("pass")){

            // A new session object is created if the user inputs the right username and password
            HttpSession session = request.getSession();
            session.setAttribute("username", user);     // A new session attribute, "username", is set
            response.sendRedirect("welcome.jsp");       // The user is redirected to the welcome.jsp page

            // If the credentials are incorrect, the user is redirected to the login.jsp page
        } else  response.sendRedirect("login.jsp");
    }
}
