package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;

@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
            response.setCharacterEncoding("UTF-8");
            request.setCharacterEncoding("UTF-8");

            String name = request.getParameter("name") == null ? "" : request.getParameter("name").trim();
            String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
            String pass = request.getParameter("pass") == null ? "" : request.getParameter("pass").trim();
            String repass = request.getParameter("repass") == null ? "" : request.getParameter("repass").trim();
            String sdt = request.getParameter("sdt") == null ? "" : request.getParameter("sdt").trim();
            String diachi = request.getParameter("diachi") == null ? "" : request.getParameter("diachi").trim();

            //error
            String errtaikhoan = "";
            String errmatkhau = "";
            String errmatkhaucon = "";
            String errten = "";
            String errsdt = "";
            String errmail = "";
            String errdiachi = "";
            //check
            boolean checkTaikhoan = false;
            boolean checkMatKhau = false;
            boolean checkMatKhauCon = false;
            boolean checkTen = false;
            boolean checkSdt = false;
            boolean checkMail = false;
            boolean checkDiachi = false;

            String sqlcheckExits = "SELECT uname FROM test1.`user` WHERE uname = ?";
            PreparedStatement ps = DBConnect.getPreparedStatement(sqlcheckExits);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            boolean exit = rs.next();
            String regexUser = "^[a-z0-9._-]{8,15}$";
            String regexPass = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
            String regexMail = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
            String regexName = "^[\\p{L} .'-]+$";
            String regexSDT = "\\d{10}";

            Pattern paUser = Pattern.compile(regexUser);
            Pattern paPass = Pattern.compile(regexPass);
            Pattern paMail = Pattern.compile(regexMail);
            Pattern paName = Pattern.compile(regexName);
            Pattern paPhone = Pattern.compile(regexSDT);

            paUser.matcher(name).matches();
            paPass.matcher(pass).matches();
            paMail.matcher(email).matches();
            paPhone.matcher(sdt).matches();

            if (name.length() < 8) {
                errtaikhoan = "Tài khoản phải có ít nhất 8 ký tự";
            } else if (paUser.matcher(name).matches() == false) {
                errtaikhoan = "Tài khoản không hợp lệ";
            } else if (exit == true) {
                errtaikhoan = "Tài khoản đã tồn tại";
            } else {
                errtaikhoan = "";
                checkTaikhoan = true;
            }

            if (pass.length() < 8) {
                errmatkhau = "Mật khẩu phải hơn 8 ký tự";
            } else if (paPass.matcher(pass).matches() == false) {
                errmatkhau = "Phải có ít nhật 1 ký tự thường,hoa,số,ký tự đặc biệt";
            } else {
                errmatkhau = "";
                checkMatKhau = true;
            }

            if (pass.equals(repass) == false) {
                errmatkhaucon = "Mật khẩu không trùng khớp";
            } else {
                errmatkhaucon = "";
                checkMatKhauCon = true;
            }
            if (paMail.matcher(email).matches() == false) {
                errmail = "Email của bạn không hợp lê";
            } else {
                errmail = "";
                checkMail = true;
            }
            if (sdt.length() < 10) {
                errsdt = "Số điện thoại của bạn không đúng";
            } else if (paPhone.matcher(sdt).matches() == false) {
                errsdt = "Số điện thoại không hợp lệ";
            } else {
                errsdt = "";
                checkSdt = true;
            }
            if (diachi.length() < 20) {
                errdiachi = "Xin hãy cho biết nơi ở của bạn";
            } else {
                errdiachi = "";
                checkDiachi = true;
            }
            request.setAttribute("name", name);
            request.setAttribute("pass", pass);
            request.setAttribute("repass", repass);
            request.setAttribute("sdt", sdt);
            request.setAttribute("email", email);
            request.setAttribute("diachi", diachi);
            request.setAttribute("errtaikhoan", errtaikhoan);
            request.setAttribute("errmatkhau", errmatkhau);
            request.setAttribute("errmatkhaucon", errmatkhaucon);
            request.setAttribute("errten", errten);
            request.setAttribute("errsdt", errsdt);
            request.setAttribute("errmail", errmail);
            request.setAttribute("errdiachi", errdiachi);
            request.getRequestDispatcher("Nhom25_WebBanGiayNam/interface/dangKy.jsp").forward(request, response);
            if (checkTaikhoan == true
                    && checkMatKhau == true
                    && checkMatKhauCon == true
                    && checkSdt == true
                    && checkMail == true
                    && checkDiachi == true
            ) {
                String sqlInsert = "INSERT INTO `user` (uname,email,pass,sdt,diachi,level,active) VALUES(?,?,?,?,?,1,1)";
                PreparedStatement ps3 = DBConnect.getPreparedStatement(sqlInsert);
                ps3.setString(1, name);
                ps3.setString(2, email);
                ps3.setString(3, pass);
                ps3.setString(4, sdt);
                ps3.setString(5, diachi);
                ps3.executeUpdate();
                response.sendRedirect("Nhom25_WebBanGiayNam/interface/Login.jsp");
            }
//           if (!pass.equalsIgnoreCase(repass)){
//                String errPass = "mật khẩu không đúng";
//                request.setAttribute("errPass",errPass);
//            }else
//            if (name!=null&email!=null&pass!=null&sdt!=null&diachi!=null) {
//                String sql = "INSERT INTO `user` (uname,email,pass,sdt,diachi,level,active) VALUES('?','?','?','?','?',1,1)";
//                PreparedStatement s = DBConnect.getPreparedStatement(sql);
//                s.setString(1, name);
//                s.setString(2, email);
//                s.setString(3, pass);
//                s.setString(4, sdt);
//                s.setString(5, diachi);
//                ResultSet rs1 = s.executeQuery();
//                request.setAttribute("rs",rs);
//                response.sendRedirect("Nhom25_WebBanGiayNam/interface/Login.jsp");
//            }
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        doGet(request,response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException | NoClassDefFoundError | NullPointerException e) {
            e.printStackTrace();
        }
    }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
