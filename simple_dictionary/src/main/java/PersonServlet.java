import Classes.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"", "/personServlet"})
public class PersonServlet extends HttpServlet {
    static ArrayList<Person> list = new ArrayList<>();
    static {
        list.add(new Person(1, "Luon Thanh Do", "Cao Bang", "img"));
        list.add(new Person(2, "Ha Duc James", "Ha Noi", "img"));
        list.add(new Person(3, "Nguyen Messi", "Hai Phong", "img"));
        list.add(new Person(4, "Mason Quang Nui", "Yen Bai", "img"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("listPerson", list);
        RequestDispatcher rd = req.getRequestDispatcher("ShowPerson.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String img = req.getParameter("img");
        list.add(new Person(id, name, address, img));

        req.setAttribute("listPerson", list);
        RequestDispatcher rd = req.getRequestDispatcher("ShowPerson.jsp");
        rd.forward(req, resp);
    }
}
