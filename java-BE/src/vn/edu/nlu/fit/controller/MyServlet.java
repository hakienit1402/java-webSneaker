package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        if (session.getAttribute("Auth")!=null){
            User u = (User) session.getAttribute("Auth");
            if (u.level==1){
                response.sendRedirect("http://localhost:8080/Demo/TrangChu");
            }else if (u.level==2){
                response.sendRedirect("");
            }
        }else {
            response.getWriter().println("Ban chua dang nhap");
        }
    }
}
