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

@WebServlet("/TrangChu")
public class TrangChu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String nam = request.getParameter("nam");
        try {
            String sql = "SELECT* FROM hang WHERE active=1";
            PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            ResultSet rs = s.executeQuery();
            request.setAttribute("rs",rs);

            String sql5 = "SELECT* FROM hang WHERE active=1";
            PreparedStatement s5 = (PreparedStatement) DBConnect.getPreparedStatement(sql5);
            ResultSet rs5 = s5.executeQuery();
            request.setAttribute("rs5",rs5);

            String sql2 = "SELECT* FROM nam WHERE active = 1";
            PreparedStatement s2 = (PreparedStatement) DBConnect.getPreparedStatement(sql2);
            ResultSet rs2 = s2.executeQuery();
            request.setAttribute("rs2",rs2);

            sql2 ="SELECT* FROM loai WHERE active = 1";
            s2 = (PreparedStatement) DBConnect.getPreparedStatement(sql2);
            rs2=s2.executeQuery();
            request.setAttribute("loai",rs2);
            sql= "SELECT* FROM danhsachsanpham WHERE active=1 ";
            if(type!=null) {
                sql+="and loai ="+type;
            }
            if(nam!=null){sql+="and nam ="+nam;}
            PreparedStatement s1 = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            ResultSet rs1 = s1.executeQuery();
            request.setAttribute("rs1",rs1);

            String sql3 = "SELECT* FROM danhsachsanpham WHERE active = 1 and trangchu=1";
            PreparedStatement s3 = (PreparedStatement) DBConnect.getPreparedStatement(sql3);
            ResultSet rs3 = s3.executeQuery();
            request.setAttribute("rs3",rs3);

            String sql4 = "SELECT* FROM danhsachsanpham WHERE active = 1 and trangchu=2";
            PreparedStatement s4 = (PreparedStatement) DBConnect.getPreparedStatement(sql4);
            ResultSet rs4 = s4.executeQuery();
            request.setAttribute("rs4",rs4);

            request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/index.jsp").forward(request,response);

        }catch (ClassNotFoundException| SQLException e){
            e.printStackTrace();
        }
    }
}
