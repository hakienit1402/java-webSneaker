package vn.edu.nlu.fit.model;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DoSendMail")
public class DoSendMail extends HttpServlet {
    String host;
    String port;
    String user;
    String pass;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().println("fdsfsfsd");
        String recipient = request.getParameter("email");
        String name = request.getParameter("name");
        String message = request.getParameter("message");



        String resultMessage = "";

        try {

            SendMail.sendEmail(host, port, user, pass, recipient, name, message);

            resultMessage = "Mail xác thực đã gửi tới email " + recipient;
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
