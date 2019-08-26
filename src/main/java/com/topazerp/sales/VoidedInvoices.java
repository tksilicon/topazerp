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
public class VoidedInvoices {
    
    private String invoiceno;
    private Date dateInvoice;
    private String branch;
    private String staffName;

    public VoidedInvoices() {
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public Date getDateInvoice() {
        return dateInvoice;
    }

    public void setDateInvoice(Date dateInvoice) {
        this.dateInvoice = dateInvoice;
    }

    public String getInvoiceno() {
        return invoiceno;
    }

    public void setInvoiceno(String invoiceno) {
        this.invoiceno = invoiceno;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }
    
    
    
}
