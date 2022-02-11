package vn.edu.nlu.fit.model;

import java.util.Collection;
import java.util.HashMap;

public class Cart {
    HashMap<Integer,Product> data;
    public Cart(){
        this.data= new HashMap<>();
    }
    public Product get(int id){
        return data.get(id);
    }
    public int put(Product item) {
        if (data.containsKey(item.getId()))
            data.get(item.getId()).soluongUp();
        else data.put(item.getId(),item);
        return data.get(item.getId()).getSoluong();
    }
    public int put (int id, int soluong){
        if (data.containsKey(id)) data.get(id).soluongUp(soluong);
        return data.get(id).getSoluong();
    }
    public boolean remove (int id){
        return data.remove(id)==null;
    }
    public double tongtien(){
        double sum =0;
        for (Product p : data.values())
            sum+=(p.soluong*p.price);
        return sum;
    }
    public Collection<Product> list(){
        return data.values();
    }
}
