/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.demo.entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thien
 */
public class Cart {
    private ArrayList<LineItem> items;
    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }
    public int getAmount(String id){
        return getItemById(id).getAmount();
    }
    public LineItem getItemById(String id){
        for (LineItem i:items){//so sanh string dung equals ok hon la ==
            if(i.getProduct().getId().equals(id)){return i;}
        }
        return null;
    }
    public void addItem(LineItem t){
        if(getItemById(t.getProduct().getId())!=null){
            LineItem m=getItemById(t.getProduct().getId());
            m.setAmount(m.getAmount()+t.getAmount());//lay so luong co san + them so luong moi
        }
        else items.add(t);
    }
    public void removeItem(String id){
        if(getItemById(id)!=null){
            items.remove((getItemById(id)));
        }
    }
    public double getTotalMoney(){
        double t=0;
        for (LineItem i:items){
            t+=i.getTotal();
        }
        return t;
    }
    public Product getProductById(String id,List<Product> list){ // dung de lay san pham trong list o cookie
        for (Product i : list) {
            //System.out.print("Lap san pham");
            String k = i.getId();
            if (k.equals(id)) {

                return i;
            }

        }
        return null;
    }
    public Cart(String txt,List<Product> list){
        items=new ArrayList<>();
        try{
        if(txt!=null&&txt.length()!=0){// kiem tra txt co rong~ ko
            String[] s=txt.split("/");//dung dau , de phan biet cac LineItem
            String[] n;
            for(String i:s){
                n=i.split(":");//dung dau : de phan biet san pham va so luong
                String id=n[0];
                
                int amount=Integer.parseInt(n[1]);
        
                Product p=getProductById(id,list);//lay cai san pham trong cai list
                LineItem t= new LineItem(p,amount);
                
                addItem(t);
            }
        }
        }catch(NumberFormatException e){
        
        }
        
        
    }
    
    
//    public void addItem(LineItem item) {
//        String id = item.getProduct().getId();
//        int quantity = item.getAmount();
//        for (LineItem cartItem : items) {
//            if (cartItem.getProduct().getId().equals(id)) {
//                cartItem.setAmount(quantity);
//                return;
//            }
//        }
//        items.add(item);
//    }
//
//    public void removeItem(LineItem item) {
//        String id = item.getProduct().getId();
//        for (int i = 0; i < items.size(); i++) {
//            LineItem lineItem = items.get(i);
//            if (lineItem.getProduct().getId().equals(id)) {
//                items.remove(i);
//                return;
//            }
//        }
//    }
}
