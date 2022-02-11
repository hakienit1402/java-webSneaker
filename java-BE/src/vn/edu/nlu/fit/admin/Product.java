package vn.edu.nlu.fit.admin;

import com.mysql.jdbc.PreparedStatement;

import vn.edu.nlu.fit.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/adminProduct")
public class Product extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String sql= " SELECT* FROM sanpham ";
            PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            ResultSet rs = s.executeQuery();
            request.setAttribute("rs",rs);


         request.getRequestDispatcher("Nhom25_WebBanGiayNam/Admin/Admin/pages/sanpham.jsp").forward(request, response);
}
catch (ClassNotFoundException| SQLException e){
    e.printStackTrace();
}
    }
}
