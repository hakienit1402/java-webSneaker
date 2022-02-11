package vn.edu.nlu.fit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/HelloWord")
public class Form1 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String service = request.getParameter("service");
        String message = request.getParameter("message");
        //kiem tra


        response.getWriter().println("<h1 style='color: blue'> contact</h1>");
        response.getWriter().println("<p>NAME: "+ name +"</p>");
        response.getWriter().println("<p>EMAIL: "+email+"</p>");
        response.getWriter().println("<p>PHONE: "+phone+"</p>");
        response.getWriter().println("<p>SERVICE: "+service+"</p>");
        response.getWriter().println("<p>MESSAGE: "+message+"</p>");
        String ketqua;
        String regemail = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        if(name.length()==0||email.length()==0||(!email.matches(regemail))||phone.length()<13||phone.length()>13){
            ketqua = "sai";
            response.getWriter().println("<p>kiem tra: "+"<a style='color: red'>"+ ketqua +"</a>" +"</p>");
        }else {
            ketqua = "dung";
            response.getWriter().println("<p>kiem tra: "+"<a style='color: red'>"+ ketqua +"</a>" +"</p>");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);

    }

}
