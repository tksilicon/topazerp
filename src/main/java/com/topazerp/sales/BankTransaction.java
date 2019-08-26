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
public class BankTransaction {
    
    
    private String branch;
    private String amount;
    private int amountpaid;
    private String bank;
    private String tellerno;
    private Date date;
    private String postedStatus;
    private int id;

    public BankTransaction() {
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }
    
    

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public int getAmountpaid() {
        return amountpaid;
    }

    public void setAmountpaid(int amountpaid) {
        this.amountpaid = amountpaid;
    }
    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTellerno() {
        return tellerno;
    }

    public void setTellerno(String tellerno) {
        this.tellerno = tellerno;
    }

    public String getPostedStatus() {
        return postedStatus;
    }

    public void setPostedStatus(String postedStatus) {
        this.postedStatus = postedStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    

    @Override
    public String toString() {
        return "BankTransaction{" + "amount=" + amount + ", amountpaid=" + amountpaid + ", bank=" + bank + ", tellerno=" + tellerno + ", date=" + date + '}';
    }   
    
    
}
