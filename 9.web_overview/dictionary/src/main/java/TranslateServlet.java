import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslateServlet", urlPatterns = "/translate")
public class TranslateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictinary =  new HashMap<>();
        dictinary.put("Hi", "Xin chao");
        dictinary.put("book", "Sach");
        dictinary.put("Love", "Yeu thuong");
        dictinary.put("Computer", "May tinh");

        String search =request.getParameter("txtSearch");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");

            String result = dictinary.get(search);
            if(result != null){
                writer.println("Word " + search);
                writer.println("Result " + result);
            }else {
                writer.println("Not Found");
            }
        writer.println("</html>");
    }
}
