package controller;

import model.bean.User;
import model.service.UsersService;
import model.service.impl.UsersServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = {"", "/userServlet"})
public class UserServlet extends HttpServlet {
    private UsersService usersService = new UsersServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "sort":
                List<User>list= usersService.sort();
                request.setAttribute("usersListServlet",list);
                request.getRequestDispatcher("index.jsp").forward(request,response);
                break;
            default:
                loadlist(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient) {
            case "create":
                createUser(request, response);
                break;
            case "edit":
                editUser(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                loadlist(request, response);
                break;
            case "search":
                String keyword = request.getParameter("name");
                List<User> list = usersService.searchByName(keyword);
                request.setAttribute("usersListServlet", list);
                request.setAttribute("keyword",keyword);
                request.getRequestDispatcher("index.jsp").forward(request, response);

                break;
            default:
                loadlist(request, response);
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String confirm = request.getParameter("confirm");
        if (confirm.equals("Yes")) {
            usersService.remove(id);
        } else {
            usersService.remove(id);
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        User user = usersService.findById(id);
        request.setAttribute("userObj", user);
        request.getRequestDispatcher("view/delete.jsp").forward(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        boolean check = usersService.save(user);
        String msg = null;
        if (check) {
            msg = " Create successfully!";
        } else {
            msg = "Create faile!";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("usersObj", user);
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }


    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        User userFromService = this.usersService.findById(id);

        request.setAttribute("usersObj", userFromService);
        request.getRequestDispatcher("view/edit.jsp").forward(request, response);
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User user = new User(id, name, email, country);
        String msg = null;
        if (this.usersService.updateUsers(user)) {
            msg = "Update successfully!";
        } else {
            msg = "Update failed!";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("usersObj", user);
        request.getRequestDispatcher("view/edit.jsp").forward(request, response);

    }

    private void loadlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("usersListServlet", this.usersService.findAll());
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

}
