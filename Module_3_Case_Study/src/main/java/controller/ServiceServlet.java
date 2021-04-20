package controller;

import model.bean.Service;
import model.service.CRUDService;
import model.service.impl.ServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServiceServlet", urlPatterns = "/ServiceServlet")
public class ServiceServlet extends HttpServlet {
    private CRUDService<Service> serviceCRUDService = new ServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null){
            actionClient = "";
        }
        switch (actionClient){
            case "create":
                request.getRequestDispatcher("view/service/create_service.jsp").forward(request,response);
                break;
            case "edit":
                showFormUpdate(request,response);
                break;
            case "delete":
                showDeleteService(request,response);
                break;
            case "sort":
                List<Service> list  = serviceCRUDService.sort();
                request.setAttribute("ServiceListServlet", list);
                request.getRequestDispatcher("view/service/service_list.jsp").forward(request,response);
                break;
            default:
                listService(request, response);
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
                createService(request, response);
                break;
            case "edit":
                editService(request,response);
                break;
            case "delete":
                deleteService(request,response);
                listService(request,response);
                break;
            case "search":
                String keyword = request.getParameter("name");
                List<Service> list = serviceCRUDService.searchByName(keyword);
                request.setAttribute("ServiceListServlet", list);
                request.setAttribute("keyword", keyword);
                request.getRequestDispatcher("view/service/search_service.jsp").forward(request,response);
                break;
            default:
                listService(request, response);
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        Double area = Double.parseDouble(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer capacity = Integer.parseInt(request.getParameter("capacity"));
        String standard = request.getParameter("standard");
        String description = request.getParameter("description");
        Double pool_area = Double.parseDouble(request.getParameter("pool_area"));
        Integer number_of_floors = Integer.parseInt(request.getParameter("number_of_floors"));
        Integer rent_type_id = Integer.parseInt(request.getParameter("rent_type_id"));
        Integer service_type_id =Integer.parseInt(request.getParameter("service_type_id"));

        Service service = new Service(id,name,area,cost,capacity,standard,description,pool_area,number_of_floors,rent_type_id,service_type_id);
        String msg = null;
        if (this.serviceCRUDService.edit(service)){
            msg = "Edit service successfully!";
        }else {
            msg = "Edit false !";
        }

        request.setAttribute("msg", msg);
        request.setAttribute("serviceObj",service);
        request.getRequestDispatcher("view/service/update_service.jsp").forward(request,response);
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) {
            String id = request.getParameter("id");
            String confirm = request.getParameter("confirm");
            if (confirm.equals("Yes")){
                serviceCRUDService.delete(id);
            }

    }

    private void createService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        Double area = Double.parseDouble(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer capacity = Integer.parseInt(request.getParameter("capacity"));
        String standard = request.getParameter("standard");
        String description = request.getParameter("description");
        Double pool_area = Double.parseDouble(request.getParameter("pool_area"));
        Integer number_of_floors = Integer.parseInt(request.getParameter("number_of_floors"));
        Integer rent_type_id = Integer.parseInt(request.getParameter("rent_type_id"));
        Integer service_type_id =Integer.parseInt(request.getParameter("service_type_id"));

        Service service =new Service(id,name, area,cost,capacity,standard,description,pool_area,number_of_floors,rent_type_id,service_type_id);
        String msg= null;
        boolean check= serviceCRUDService.insertInto(service);
        if (check){
            msg = " Create service successfully!";
        }else {
            msg =" Create service false!";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("serviceObj", service);
        request.getRequestDispatcher("view/service/create_service.jsp").forward(request, response);
    }


    private void listService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ServiceListServlet", this.serviceCRUDService.findAll());
        request.getRequestDispatcher("view/service/service_list.jsp").forward(request, response);
    }
    private void showDeleteService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Service service =  serviceCRUDService.findById(id);
        request.setAttribute("serviceObj",service);
        request.getRequestDispatcher("view/service/delete_service.jsp").forward(request,response);

    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Service serviceForm = this.serviceCRUDService.findById(id);
        request.setAttribute("serviceObj", serviceForm);
        request.getRequestDispatcher("view/service/update_service.jsp").forward(request,response);
    }
}
