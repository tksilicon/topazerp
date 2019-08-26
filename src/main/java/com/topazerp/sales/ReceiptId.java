/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

/**
 *
 * @author THANKGOD
 */
public class ReceiptId {
    
    
  
    private int maxnumber;
    SalesOperations sales = null;
    String receiptNo = "";
      
    
    public ReceiptId() {
        
        
        sales = new SalesOperations();  
        
        maxnumber = sales.getReceiptNo(); 
        
        maxnumber = maxnumber + 1;
        
        if(maxnumber < 10){
           receiptNo =   "00" +  maxnumber;
        }else if (maxnumber > 9 && maxnumber < 99){
             receiptNo =  "0" + maxnumber;
        }
               
    }

    public int getMaxnumber() {
        return maxnumber;
    }

    public void setMaxnumber(int maxnumber) {
        this.maxnumber = maxnumber;
    }

    public String getReceiptNo() {
        return receiptNo;
    }

    public void setReceiptNo(String receiptNo) {
        this.receiptNo = receiptNo;
    }

    public SalesOperations getSales() {
        return sales;
    }

    public void setSales(SalesOperations sales) {
        this.sales = sales;
    }
    
    
    
}
