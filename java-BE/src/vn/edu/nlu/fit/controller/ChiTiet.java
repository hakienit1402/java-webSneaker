package vn.edu.nlu.fit.controller;

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

@WebServlet("/ChiTiet")
public class ChiTiet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id1 = request.getParameter("id");
        try {
//            Statement s1 = ConnectDB.connect();
            String sql1="SELECT* FROM danhsachsanpham WHERE id<5";
            PreparedStatement s1 = (PreparedStatement) DBConnect.getPreparedStatement(sql1);
            ResultSet rs1= s1.executeQuery();
            request.setAttribute("rs1",rs1);

            String sql= "SELECT* FROM danhsachsanpham WHERE active=1 ";
            if (id1!=null){
                sql +="and id="+id1;
            }
            PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            ResultSet rs = s.executeQuery();
            request.setAttribute("rs",rs);
            request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/chitiet.jsp").forward(request,response);

        }catch (ClassNotFoundException| SQLException e){
            e.printStackTrace();
        }
    }
}
