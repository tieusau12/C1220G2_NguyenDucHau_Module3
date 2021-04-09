package servlet;

import bean.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = {"","/StudentServlet"})
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student(123,"Nguyen Duc Hau","02/04/1997",1,4.0));
        studentList.add(new Student(456,"Le Duc Sang","02/04/1998",0,9.0));
        studentList.add(new Student(789,"Tran Hong Gia Dong","02/04/1999",1,7.0));

        request.setAttribute("studentListServlet" , studentList);
        request.getRequestDispatcher("list_by_jstl.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
