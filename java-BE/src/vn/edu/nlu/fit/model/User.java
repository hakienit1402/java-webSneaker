package vn.edu.nlu.fit.model;

import vn.edu.nlu.fit.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
    public int id;
    public String name;
    public String email;
    public String pass;
    public int level;
    public String sdt;
    public String diachi;
    public User(){

    }
    public User(int id, String name, String email, String pass, int level,String sdt, String diachi){
        this.id=id;
        this.name=name;
        this.email=email;
        this.pass=pass;
        this.level=level;
        this.sdt=sdt;
        this.diachi=diachi;
    }
    @Override
    public String toString() {
        return id +"-"+name+"-"+email+"-"+pass+"-"+level+"-"+sdt+"-"+diachi;
    }
}
