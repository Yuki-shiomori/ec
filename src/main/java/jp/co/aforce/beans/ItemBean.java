package jp.co.aforce.beans;

import java.io.Serializable;

public class ItemBean implements Serializable {
	 private String item_id;
	    private String item_name;
	    private int item_price;
	    private int item_quantity;//購入数
	    private String item_img;
	    private int quantity;//在庫数
	    
	   
	    
	    public void setItem_id(String item_id){
	        this.item_id = item_id;
	    }
	    
	    public String getItem_id(){
	        return item_id;
	    }
	    
	    public void setItem_name(String item_name){
	        this.item_name = item_name;
	    }
	    
	    public String getItem_name(){
	        return item_name;
	    }
	    
	     public void setItem_price(int item_price){
	        this.item_price = item_price;
	    }
	    
	    public int getItem_price(){
	        return item_price;
	    }
	    
	    public void setQuantity(int quantity){
	        this.quantity= quantity;
	    }
	    
	    public int getQuantity(){
	        return quantity;
	    }
	    
	    public void setItem_img(String item_img) {
	    	this.item_img =item_img;
	    }
	    
	    public String getItem_img() {
	    	return item_img;
	    }
	    
	    public void setItem_quantity(int item_quantity){
	    	 this.item_quantity=item_quantity;
	    }	
	    
	    public int getItem_quantity(){
	        return item_quantity;
	    }
	    
	   
}
