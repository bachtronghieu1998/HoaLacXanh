/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieu bach
 */
public class Cart {
    List<CartItem> items;
    double total;
    public Cart() {
        items=new ArrayList();
    }
    
    public void addItem(int pid,String pname, double Price,int quantity,String imageName){
        for(int i=0;i<items.size();i++){
            if(items.get(i).pid==pid){
                items.get(i).quantity+=quantity;
                return;
            }
        }
        items.add(new CartItem(pid, pname, Price, imageName, quantity));
    }

    public List<CartItem> getItems() {
        return items;
    }
    
    public double getTotal(){
        total=0;
        for(int i=0;i<items.size();i++){
            total+=items.get(i).getTotal();
        }
        return total;
    }
    
    public void updateItem(int pid,int quantity){
        for(int i=0;i<items.size();i++){
            if(items.get(i).pid==pid){
                items.get(i).setQuantity(quantity);
            }
        }
    }
    
    
    
}
