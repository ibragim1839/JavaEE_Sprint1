package ibragim.bitlab.sprint1.servlets;

import ibragim.bitlab.sprint1.managing.ItemsManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        if(ItemsManager.checkUsers(login, password)){
            req.getRequestDispatcher("/loginPage.jsp?success").forward(req,resp);
        }
        else{
            req.getRequestDispatcher("/loginPage.jsp?error").forward(req,resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/loginPage.jsp").forward(req,resp);
    }
}
