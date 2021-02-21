import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * My Logout class is a servlet class used to manage the logout operation of my web application
 */
@WebServlet(name = "Logout", value = "/Logout")
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(); // Requests an existing session
        session.removeAttribute("username");     // Removes "username" attribute from session
        session.invalidate();
        response.sendRedirect("index.jsp");      // Redirects the user to the home page
    }

}
