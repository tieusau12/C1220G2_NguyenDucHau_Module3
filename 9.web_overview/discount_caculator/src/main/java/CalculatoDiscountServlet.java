import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatoDiscountServlet", urlPatterns = "/display-discount")
public class CalculatoDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String description = request.getParameter("description");
            float list_price = Float.parseFloat(request.getParameter("list_price"));
            float discount_percent = Float.parseFloat(request.getParameter("discount_percent"));
            float discount_amount = (float) (list_price * discount_percent * 0.01);
    }
}
