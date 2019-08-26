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
public class Expenses {
    
    private Date date;
    private int amount;
    private String amountspent;
    private String purpose;
    private String expenseType;
    private int balance;
    private int id;
    
    private String postedStatus;

    public Expenses() {
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getAmountspent() {
        return amountspent;
    }

    public void setAmountspent(String amountspent) {
        this.amountspent = amountspent;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getExpenseType() {
        return expenseType;
    }

    public void setExpenseType(String expenseType) {
        this.expenseType = expenseType;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
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
        return "Expenses{" + "date=" + date + ", amount=" + amount + ", amountspent=" + amountspent + ", purpose=" + purpose + '}';
    }
    
   
    
}
