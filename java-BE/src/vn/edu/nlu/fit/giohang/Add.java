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

@WebServlet("/AddCart")
public class Add extends HttpServlet {
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
            if (p!=null){
                c.put(p);
            }
            session.setAttribute("Cart",c);

        }catch (NumberFormatException e){
        }
        String a = request.getParameter("trangchu");
        String type = request.getParameter("type");
        String nam = request.getParameter("name");
        String loai = request.getParameter("loai");
        String page = request.getParameter("page");
        if(a!=null) {
            response.sendRedirect("http://localhost:8080/Demo/TrangChu");
        }else if (type!=null){
            response.sendRedirect("http://localhost:8080/Demo/ListProduct?type="+type+"&page="+page);
        }else if (nam!=null){
            response.sendRedirect("http://localhost:8080/Demo/ListProduct?nam="+nam+"&page="+page);
        }else if (loai!=null){
            response.sendRedirect("http://localhost:8080/Demo/ListProduct?loai="+loai+"&page="+page);
        }
        else {
            response.sendRedirect("http://localhost:8080/Demo/ListProduct?page="+request.getParameter("page"));
        }
    }
}
