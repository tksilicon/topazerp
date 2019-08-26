/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

/**
 *
 * @author THANKGOD
 */
public class InvoiceBody {
    
    private String branch;
    private String invoiceid;
    private String itemid;
    private double price;
    private int qty;
    private String priceType;
    private double totaldiscount;
    private double totalshadow;
    private double total;

    public InvoiceBody() {
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getInvoiceid() {
        return invoiceid;
    }

    public void setInvoiceid(String invoiceid) {
        this.invoiceid = invoiceid;
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPriceType() {
        return priceType;
    }

    public void setPriceType(String priceType) {
        this.priceType = priceType;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getTotaldiscount() {
        return totaldiscount;
    }

    public void setTotaldiscount(double totaldiscount) {
        this.totaldiscount = totaldiscount;
    }

    public double getTotalshadow() {
        return totalshadow;
    }

    public void setTotalshadow(double totalshadow) {
        this.totalshadow = totalshadow;
    }

    @Override
    public String toString() {
        return "InvoiceBody{" + "branch=" + branch + ", invoiceid=" + invoiceid + ", itemid=" + itemid + ", price=" + price + ", qty=" + qty + ", priceType=" + priceType + ", totaldiscount=" + totaldiscount + ", totalshadow=" + totalshadow + ", total=" + total + '}';
    }
    
    
    
}
