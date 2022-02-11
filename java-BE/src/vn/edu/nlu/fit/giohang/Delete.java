package vn.edu.nlu.fit.giohang;

import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("id"));
            Product p = Product.find(id);
            Cart c = (Cart) session.getAttribute("Cart");
            if(c==null) {c=new Cart();}
           c.remove(id);
            session.setAttribute("Cart",c);

        }catch (NumberFormatException e){
        }
        response.sendRedirect("http://localhost:8080/Demo/GioHang");
    }
}
