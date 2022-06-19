package ibragim.bitlab.sprint1.servlets;

import ibragim.bitlab.sprint1.managing.ItemsManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home")

public class StoreMainPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setAttribute("allItems", ItemsManager.getAllItems());
        }catch (Exception e){
            e.printStackTrace();
        }
        req.getRequestDispatcher("/StoreMainPage.jsp").forward(req,resp);
    }
}
