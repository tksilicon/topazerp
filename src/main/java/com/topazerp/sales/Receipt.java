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
public class Receipt {
    
    private Date date;
    private String custID;
    private int amount;
    private String amountpaid;
    private ReceiptId receiptsId;
    private String receiptNo;
    private Customer cust;
    private String custName;
    
    private String postedStatus;
    
    
    public Receipt() {
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public Customer getCust() {
        return cust;
    }

    public void setCust(Customer cust) {
        this.cust = cust;
    }

  

    public String getCustID() {
        return custID;
    }

    public void setCustID(String custID) {
        this.custID = custID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAmountpaid() {
        return amountpaid;
    }

    public void setAmountpaid(String amountpaid) {
        this.amountpaid = amountpaid;
    }

    public ReceiptId getReceiptsId() {
        return receiptsId;
    }

    public void setReceiptsId(ReceiptId receiptsId) {
        this.receiptsId = receiptsId;
    }

    public String getReceiptNo() {
        return receiptNo;
    }

    public void setReceiptNo(String receiptNo) {
        this.receiptNo = receiptNo;
    }

    public String getPostedStatus() {
        return postedStatus;
    }

    public void setPostedStatus(String postedStatus) {
        this.postedStatus = postedStatus;
    }
    
    
    
    

    @Override
    public String toString() {
        return "Receipt{" + "date=" + date + ", custID=" + custID + ", amount=" + amount + '}';
    }
    
    
    
    
}
