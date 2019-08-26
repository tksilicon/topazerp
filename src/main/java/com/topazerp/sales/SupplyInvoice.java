/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.sql.Date;

/**
 *
 * @author THANKGOD
 */
public class SupplyInvoice implements Comparable<SupplyInvoice> {

    private String invoiceno;
    private Date date;
    private String branch;
    private String sendingBranch;
    private String status;
    private String supplyStatus = "false";
    private int availabilityCount = 0;
    private int invoiceQty;

    public SupplyInvoice() {
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getInvoiceno() {
        return invoiceno;
    }

    public void setInvoiceno(String invoiceno) {
        this.invoiceno = invoiceno;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSupplyStatus() {
        return supplyStatus;
    }

    public void setSupplyStatus(String supplyStatus) {
        this.supplyStatus = supplyStatus;
    }

    public int getAvailabilityCount() {
        return availabilityCount;
    }

    public void setAvailabilityCount(int availabilityCount) {
        this.availabilityCount = availabilityCount;
    }

    public int getInvoiceQty() {
        return invoiceQty;
    }

    public void setInvoiceQty(int invoiceQty) {
        this.invoiceQty = invoiceQty;
    }

    public String getSendingBranch() {
        return sendingBranch;
    }

    public void setSendingBranch(String sendingBranch) {
        this.sendingBranch = sendingBranch;
    }

    public int compareTo(SupplyInvoice o) {
        return this.getDate().compareTo(o.getDate());
    }
}
