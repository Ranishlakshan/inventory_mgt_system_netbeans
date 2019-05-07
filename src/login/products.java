/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

/**
 *
 * @author user
 */
public class products {
        public int id;
        public String product_name;
        public int quantity;
        public int price;
        public int discount;
        public String warranty;
        public String details;
        public int low_level;

        public products(int pid, String pname, int pquantity, int pprice,int discount,String warranty, String pdetails,int low_level){
            this.id = pid;
            this.product_name = pname;
            this.quantity = pquantity;
            this.price = pprice;
            this.discount = discount;
            this.warranty = warranty;
            this.details = pdetails;
            this.low_level =low_level; 
        }
        
        public int getid(){
            return id;
        }
        
    /**
     *
     * @return
     */
    public String getproduct_name(){
            return product_name;
        }
        
    /**
     *
     * @return
     */
    public int getquantity(){
            return quantity;
        }
    
    public int getprice(){
            return price;
        }
    
    public String getdetails(){
            return details;
        }
    public void updateQuantity(int qty){
        quantity = quantity + qty ; 
    }
    public int getdiscount(){
        return discount;
        }
    public String getwarranty(){
        return warranty;
        }
    public int getlow(){
        return low_level;
        }
    
}

