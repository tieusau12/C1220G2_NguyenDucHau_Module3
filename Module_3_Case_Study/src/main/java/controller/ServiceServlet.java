package controller;

import model.bean.Service;
import model.service.CRUDService;
import model.service.impl.ServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServiceServlet", urlPatterns = "/ServiceServlet")
public class ServiceServlet extends HttpServlet {
    private CRUDService<Service> serviceCRUDService = new ServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ServiceListServlet", this.serviceCRUDService.findAll());
        request.getRequestDispatcher("view/service/service_list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
