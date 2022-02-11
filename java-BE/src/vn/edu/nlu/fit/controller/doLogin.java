package vn.edu.nlu.fit.controller;
import com.mysql.jdbc.PreparedStatement;
import vn.edu.nlu.fit.DBConnect;
import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/doLogin")
public class doLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");

            String name =request.getParameter("name") == null ? "" : request.getParameter("name").trim();
            String pass =request.getParameter("pass") == null ? "" : request.getParameter("pass").trim();
            String a ="null";
            request.setAttribute("a",a);

            String sql = "SELECT * FROM test1.`user` WHERE uname = ? AND pass= ? AND active=1";
            PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
            s.setString(1,name);
            s.setString(2,pass);
            ResultSet rs = s.executeQuery();
            rs.last();
            if (rs.getRow()==1){
                rs.first();
                if (name.equals(rs.getString("uname"))&&pass.equals(rs.getString("pass"))){
                    User u = new User(rs.getInt("id"),rs.getString("uname"),rs.getString("email"),rs.getString("pass"),rs.getInt("level"),rs.getString("sdt"),rs.getString("diachi"));
                    HttpSession session = request.getSession(true);
                    session.setAttribute("Auth",u);
                    if (u.level==1) {
                        response.sendRedirect("http://localhost:8080/LTWeb/TrangChu");
                    }else if (u.level==2){

                    }
                }else {
                    String err = "Sai email hoặc password";
                    request.setAttribute("err",err);
                    request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/Login.jsp").forward(request,response);
                }
            }else {
                String err = "Sai email hoặc password";
                request.setAttribute("err",err);
                request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/Login.jsp").forward(request,response);
            }

        }
        catch (ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
    }
}
