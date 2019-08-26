/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

/**
 *
 * @author THANKGOD
 */
public class TodaySales {
    
    private InvoiceDetails details;
    private Sale sale;

    public TodaySales() {
    }

    public InvoiceDetails getDetails() {
        return details;
    }

    public void setDetails(InvoiceDetails details) {
        this.details = details;
    }

    public Sale getSale() {
        return sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
    }
    
    
    
}
