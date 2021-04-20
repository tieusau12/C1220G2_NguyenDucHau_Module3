package controller;

import model.bean.Customer;
import model.service.CRUDService;
import model.service.impl.CustomerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", urlPatterns = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private CRUDService<Customer> customerCRUDService =new CustomerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null){
            actionClient = "";
        }
        switch (actionClient){
            case "create":
                request.getRequestDispatcher("view/customer/create_customer.jsp").forward(request,response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "sort":
                break;
            default:
                loadListCustomer(request, response);
        }



    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null){
            actionClient = "";
        }
        switch (actionClient){
            case "create":
                String id = request.getParameter("id");
//                String name
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                loadListCustomer(request, response);
        }
    }


    private void loadListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerListServlet", this.customerCRUDService.findAll());
        request.setAttribute("customerType", this.customerCRUDService.findAllType());
        request.getRequestDispatcher("view/customer/customer_list.jsp").forward(request, response);
    }
}
