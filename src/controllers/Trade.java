package controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/trade")
public class Trade extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) {

        String message = "";
        String action = request.getParameter("action");

        if(action == null) {
        } else if (action.equals("addSecurity")) {

        } else if (action.equals("addOrder")) {

        } else if (action.equals("viewTrades")) {

        }

        message = "lol";

        try {
            RequestDispatcher rd =
                    request.getRequestDispatcher("trade.jsp?message=" + message);
            rd.forward(request, response);
        } catch (ServletException e) {
            System.out.print(e.getMessage());
        } catch (IOException e) {
            System.out.print(e.getMessage());
        }
    }
} 