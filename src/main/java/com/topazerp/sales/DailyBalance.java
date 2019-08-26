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
public class DailyBalance {
    
    private String branch;
    private double balance = 0.0;
    private double previousBal =0.0;
    private Date date;
    
    private double receipts = 0.0;
    private double banktransactions = 0.0;
    private double expenses = 0.0;
   
    private double ca19 = 0.0;
    private double b2526 = 0.0;
    private double plaza = 0.0;
        
    private double invoices = 0.0;
    private double cashsales = 0.0;
    
    private double notyetpaid = 0.0;    
    private double paidtobank = 0.0;
    
    private double discount = 0.0;
     
    
   

    public DailyBalance() {
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
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

    public double getB2526() {
        return b2526;
    }

    public void setB2526(double b2526) {
        this.b2526 = b2526;
    }
    

    public double getBanktransactions() {
        return banktransactions;
    }

    public void setBanktransactions(double banktransactions) {
        this.banktransactions = banktransactions;
    }

    public double getCa19() {
        return ca19;
    }

    public void setCa19(double ca19) {
        this.ca19 = ca19;
    }

    public double getExpenses() {
        return expenses;
    }

    public void setExpenses(double expenses) {
        this.expenses = expenses;
    }

    public double getInvoices() {
        return invoices;
    }

    public void setInvoices(double invoices) {
        this.invoices = invoices;
    }

    public double getPlaza() {
        return plaza;
    }

    public void setPlaza(double plaza) {
        this.plaza = plaza;
    }

    public double getReceipts() {
        return receipts;
    }

    public void setReceipts(double receipts) {
        this.receipts = receipts;
    }

    public double getCashsales() {
        return cashsales;
    }

    public void setCashsales(double cashsales) {
        this.cashsales = cashsales;
    }

    public double getNotyetpaid() {
        return notyetpaid;
    }

    public void setNotyetpaid(double notyetpaid) {
        this.notyetpaid = notyetpaid;
    }

    public double getPaidtobank() {
        return paidtobank;
    }

    public void setPaidtobank(double paidtobank) {
        this.paidtobank = paidtobank;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getPreviousBal() {
        return previousBal;
    }

    public void setPreviousBal(double previousBal) {
        this.previousBal = previousBal;
    }

    @Override
    public String toString() {
        return "DailyBalance{" + "branch=" + branch + ", balance=" + balance + ", previousBal=" + previousBal + ", date=" + date + ", receipts=" + receipts + ", banktransactions=" + banktransactions + ", expenses=" + expenses + ", ca19=" + ca19 + ", b2526=" + b2526 + ", plaza=" + plaza + ", invoices=" + invoices + ", cashsales=" + cashsales + ", notyetpaid=" + notyetpaid + ", paidtobank=" + paidtobank + ", discount=" + discount + '}';
    }

   

    
    
      
}
