package servlet;

import calculator.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet" ,urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double number1 = Double.parseDouble(request.getParameter("firstNumber"));
        double number2 = Double.parseDouble(request.getParameter("secondNumber"));
        String operator = request.getParameter("operator");

        String result = Calculator.calculator(number1,number2,operator);

        request.setAttribute("firstNumber", number1);
        request.setAttribute("secondNumber", number2);
        request.setAttribute("operator", operator);
        request.setAttribute("result", result);
        request.getRequestDispatcher("show_result.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
