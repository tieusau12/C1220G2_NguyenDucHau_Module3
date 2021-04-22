package controller;

import model.bean.Student;
import model.service.CRUDService;
import model.service.impl.StudentServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "/studentServlet")

public class StudentServlet extends HttpServlet {
    private CRUDService service = new StudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient) {
            case "create":
                request.getRequestDispatcher("view/list.jsp").forward(request, response);
                break;
            case "edit":
//                showFormUpdate(request,response);
                break;
            case "delete":
                showDeleteService(request,response);
                break;
            case "sort":
//                List<Service> list  = serviceCRUDService.sort();
//                request.setAttribute("ServiceListServlet", list);
                request.getRequestDispatcher("view/service/service_list.jsp").forward(request, response);
                break;
            default:
                listService(request, response);
        }
    }

    private void showDeleteService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id =request.getParameter("id");
        Student student = service.findById(id);
        request.setAttribute("studentObj",student);
        request.getRequestDispatcher("view/delete.jsp").forward(request,response);
    }

    private void listService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("studentListServlet",this.service.findAll());
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient){
            case "create":
//                createService(request, response);
                break;
            case "edit":
//                editService(request,response);
                break;
            case "delete":
                deleteService(request,response);
                listService(request,response);
                break;
            case "search":
                String keyword = request.getParameter("name");
//                List<Service> list = serviceCRUDService.searchByName(keyword);
//                request.setAttribute("ServiceListServlet", list);
                request.setAttribute("keyword", keyword);
                request.getRequestDispatcher("view/service/search_service.jsp").forward(request,response);
                break;
            default:
                listService(request, response);
        }
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String confirm = request.getParameter("confirm");
        if (confirm.equals("Yes")){
            service.delete(id);
        }
    }
}
