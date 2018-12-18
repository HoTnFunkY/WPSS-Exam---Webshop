package Control;


import Model.DataAccess.UserMapper;
import Model.Domain.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thomas
 */
public class Login extends HttpServlet {

     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();
        session.setAttribute("user", username);
        
        UserMapper um = new UserMapper();
        
        boolean isAuthenticated = um.authenticateUser(username, password);
        if(isAuthenticated){
            response.getWriter().print("Du er nu logget ind");
            PrintWriter out = response.getWriter();
            request.setAttribute("user",username);
            request.getRequestDispatcher("loggedin.jsp").forward(request, response);
        }else{
            response.getWriter().print("Unfortunately " + username + " could not be logged in, try a different user name or password");
        }
        
        //if("neo".equals(username)){
          //  response.sendRedirect("loggedin.jsp");
        //}else{
        
          //  PrintWriter out = response.getWriter();
            //out.println("Unfortunately " + username + " could not be authenticated");
            //out.close();
        
        //}
    }

   
  

}
