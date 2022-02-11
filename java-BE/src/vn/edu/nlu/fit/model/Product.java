package vn.edu.nlu.fit.model;

import vn.edu.nlu.fit.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {
    int id;
    String name;
    int soluong;
    double price;
    String img;
    public Product(){

    }
    public Product(int id, String name, int soluong, double price,String img){
        this.id=id;
        this.name=name;
        this.soluong=soluong;
        this.price=price;
        this.img=img;
    }
    public static Product find(int id) {
        try {
            PreparedStatement s = DBConnect.getPreparedStatement("SELECT id,`name`,price,img FROM danhsachsanpham WHERE id = ? AND active=1");
            s.setInt(1, id);
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.id = rs.getInt(1);
                p.name = rs.getString(2);
                p.price = rs.getInt(3);
                p.img = rs.getString(4);
                p.soluong = 1;
                return p;
            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            return null;
        }
    }
    public void soluongUp(){
        this.soluong++;
    }
    public void soluongUp(int soluong){
        setSoluong(soluong);
    }
    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSoluong() {
        return soluong;
    }

    public int setSoluong(int soluong) {
        if (soluong<1)soluong=1;
        this.soluong=soluong;
        return soluong;
    }
    public double total(){
        double tong=0;
       tong= soluong*price;
       return tong;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
