/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

/**
 *
 * @author THANKGOD
 */
public class InvoiceId {    
    
    private String branchId;
    private int maxnumber;
    SalesOperations sales = null;
    String invoiceNo = "";
   

    public InvoiceId() {
    }
    
    public InvoiceId(String branch_id) {
        branchId = branch_id;
        
        sales = new SalesOperations();  
        
        maxnumber = sales.getInvoiceId(branch_id); 
        
        maxnumber = maxnumber + 1;
        
        if(maxnumber < 10){
           invoiceNo += "00";
        }else if (maxnumber > 9 && maxnumber < 99){
             invoiceNo += "0";
        }
        invoiceNo = branch_id + "-" + this.maxnumber;        
       
        
    }
    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }

    public int getMaxnumber() {
        return maxnumber;
    }

    public void setMaxnumber(int maxnumber) {
        this.maxnumber = maxnumber;
    }

    public void tosaveNumber(){
        maxnumber += 1;        
    }

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }

    public SalesOperations getSales() {
        return sales;
    }

    public void setSales(SalesOperations sales) {
        this.sales = sales;
    }

    @Override
    public String toString() {
        return "InvoiceId{" + "branchId=" + branchId + ", maxnumber=" + maxnumber + ", invoiceNo=" + invoiceNo + '}';
    }

    
    
    
}
