package servlet;

import customer.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"","/CustomerServlet"})
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer>  customerList = new ArrayList<>();
        customerList.add(new Customer("YessiCa Hiz","02/1/1998","America USA","anh1.jpeg"));
        customerList.add(new Customer("Maria Ozz","02/12/1997","Nga Ngo","anh2.jpeg"));
        customerList.add(new Customer("Simple","02/8/1999","Chin chon","anh3.jpeg"));

        request.setAttribute("customerListServlet", customerList);
        request.getRequestDispatcher("list_customer.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
