/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;



/**
 *
 * @author THANKGOD
 */
public class CashId {
    
    
  
    private int maxnumber;
    SalesOperations sales = null;
    String cashNo = "";
      
    
    public CashId() {
        
        
        sales = new SalesOperations();  
        
        maxnumber = sales.getCashShopNo(); 
        
        maxnumber = maxnumber + 1;
        
        if(maxnumber < 10){
           cashNo =   "00" +  maxnumber;
        }else if (maxnumber > 9 && maxnumber < 99){
             cashNo =  "0" + maxnumber;
        }
               
    }

    public int getMaxnumber() {
        return maxnumber;
    }

    public void setMaxnumber(int maxnumber) {
        this.maxnumber = maxnumber;
    }

    public String getCashNo() {
        return cashNo;
    }

    public void setCashNo(String cashNo) {
        this.cashNo = cashNo;
    }

   

    public SalesOperations getSales() {
        return sales;
    }

    public void setSales(SalesOperations sales) {
        this.sales = sales;
    }
    
    
    
}
