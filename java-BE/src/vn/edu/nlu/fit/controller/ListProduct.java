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

@WebServlet("/ListProduct")
public class ListProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String type = request.getParameter("type");
        int type = -1;
        try {
            type= Integer.parseInt(request.getParameter("type"));
        }catch (NumberFormatException e){
            type=-1;
        }
        int page = 1;
        try {
            page= Integer.parseInt(request.getParameter("page"));
        }catch (NumberFormatException e){
            page=1;
        }
        if(page<1)page=1;
//        String nam = request.getParameter("nam");
        int nam = -1;
        try {
            nam= Integer.parseInt(request.getParameter("nam"));
        }catch (NumberFormatException e){
            nam=-1;
        }
        String loai = null;
        try {
            loai=request.getParameter("loai");
        } catch (Exception e) {
            loai=null;
        }
        try {
            String sql = "SELECT* FROM hang WHERE active=1";
            PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            ResultSet rs = s.executeQuery();
            request.setAttribute("rs",rs);

            String sql2 = "SELECT* FROM nam WHERE active = 1";
            PreparedStatement s2 = (PreparedStatement) DBConnect.getPreparedStatement(sql2);
            ResultSet rs2 = s2.executeQuery();
            request.setAttribute("rs2",rs2);

            sql2 ="SELECT* FROM loai WHERE active = 1";
            s2 = (PreparedStatement) DBConnect.getPreparedStatement(sql2);
            rs2=s2.executeQuery();
            request.setAttribute("loai",rs2);

            sql= "SELECT* FROM danhsachsanpham WHERE active=1";
            if(type!=-1) {
                sql+=" and hang = ?";
            }
            if(nam!=-1){sql+=" and nam =?";}
            if(loai!=null){sql+=" and loai =?";}
            sql+= " LIMIT ?,12";

            PreparedStatement s1 = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            if (type!=-1){
                s1.setInt(1, type);
                s1.setInt(2, (page-1)*12);
            }else if (nam!=-1){
                    s1.setInt(1,nam);
                    s1.setInt(2, (page-1)*12);
                }else if(loai!=null){
                    s1.setString(1,loai);
                    s1.setInt(2, (page-1)*12);
                }else {
                s1.setInt(1, (page-1)*12);
            }


            ResultSet rs1 = s1.executeQuery();
            request.setAttribute("rs1",rs1);

            String sql5 = "SELECT COUNT(id) as sum FROM danhsachsanpham WHERE active=1 ";
            if(type!=-1) {
                sql5+="and hang = ?";
            }
            if (nam!=-1){
                sql5+="and nam= ?";
            }
            if (loai!=null){
                sql5+="and loai= ?";
            }

            PreparedStatement sp = (PreparedStatement) DBConnect.getPreparedStatement(sql5);
                if (type!=-1){
                    sp.setInt(1, type);
                }
                if (nam!=-1){
                    sp.setInt(1,nam);
                }
                if (loai!=null){
                    sp.setString(1,loai);
                }
            ResultSet rs4 = sp.executeQuery();
            rs4.next();
            request.setAttribute("sum",(rs4.getInt(1)/12) + (rs4.getInt(1)%12==0?0:1));
            String phanloai;
            if (type!=-1){
                phanloai="type="+type+"&";
                request.setAttribute("phanloai",phanloai);
            }else if (nam!=-1){
                phanloai="nam="+nam+"&";
                request.setAttribute("phanloai",phanloai);
            }else if (loai!=null){
                phanloai="loai="+loai+"&";
                request.setAttribute("phanloai",phanloai);
            }else {
                phanloai="";
                request.setAttribute("phanloai",phanloai);
            }
            String trang = "page="+page;
            request.setAttribute("trang",trang);
            request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/danhsachsanpham.jsp").forward(request,response);

        }catch (ClassNotFoundException| SQLException e){
            e.printStackTrace();
        }
    }
}
