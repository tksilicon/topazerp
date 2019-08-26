/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.util.Date;

/**
 *
 * @author THANKGOD
 */
public class DailyInvoiceTotal {
    
    private String branchId;
    private Date invoiceDate;
    private int totalInvoice;
    private int dateOfYear;

    public DailyInvoiceTotal() {
    }

    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }

    public int getDateOfYear() {
        return dateOfYear;
    }

    public void setDateOfYear(int dateOfYear) {
        this.dateOfYear = dateOfYear;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public int getTotalInvoice() {
        return totalInvoice;
    }

    public void setTotalInvoice(int totalInvoice) {
        this.totalInvoice = totalInvoice;
    }
    
    
    
    
    
  
    
}
