import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    int count = 0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html");
        String name = request.getParameter("name");
        if(name == null){
            name = "World";
        }
        System.out.println(name);
        String reset = request.getParameter("reset");
        if(reset != null){
            count = 0;
        }else{
            count++;
        }
        response.getWriter().println("<h1>Hello " + name + "!</h1>");
        response.getWriter().println("<p>Page visits = " + count + "</p>");


}
}