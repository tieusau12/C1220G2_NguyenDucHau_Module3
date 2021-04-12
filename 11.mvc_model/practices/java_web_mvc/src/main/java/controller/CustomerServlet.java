package controller;

import model.bean.Customer;
import model.service.CustomerService;
import model.service.impl.CustomerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",  urlPatterns = {"","/Customer"})
public class CustomerServlet extends HttpServlet {

    private CustomerService customerService = new CustomerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null){
            actionClient = "";
        }

        switch (actionClient){
            case "create":
                break;
            case "update":
                Integer id = Integer.parseInt(request.getParameter("id"));
                Customer customerFromService = this.customerService.findById(id);

                request.setAttribute("customerObj",customerFromService);
                request.getRequestDispatcher("update_customer.jsp").forward(request,response);
                break;
            case "delete":
                break;
            default:
                request.setAttribute("customerListServlet", this.customerService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request,response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
