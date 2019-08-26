/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author THANKGOD
 */
public class CustomerCredit implements Comparable<CustomerCredit>, Serializable{
    
    private static final long serialVersionUID = 7863262235394607247L;
    
    private Date regDate2;
    private String regno;
    private int creditLimit  = 0;
    private double customerBalance;
    private double customerbal2014;
    private double customerbal2013;
    
    
    private String surname;
    private String firstname;
    

    public CustomerCredit() {
    }

    public int getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(int creditLimit) {
        this.creditLimit = creditLimit;
    }

    public Date getRegDate2() {
        return regDate2;
    }

    public void setRegDate2(Date regDate2) {
        this.regDate2 = regDate2;
    }

    public String getRegno() {
        return regno;
    }

    public void setRegno(String regno) {
        this.regno = regno;
    }

    @Override
    public String toString() {
        return "CustomerCredit{" + "regDate2=" + regDate2 + ", regno=" + regno + ", creditLimit=" + creditLimit + '}';
    }

    public double getCustomerBalance() {
        return customerBalance;
    }

    public void setCustomerBalance(double customerBalance) {
        this.customerBalance = customerBalance;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public double getCustomerbal2013() {
        return customerbal2013;
    }

    public void setCustomerbal2013(double customerbal2013) {
        this.customerbal2013 = customerbal2013;
    }

    public double getCustomerbal2014() {
        return customerbal2014;
    }

    public void setCustomerbal2014(double customerbal2014) {
        this.customerbal2014 = customerbal2014;
    }

    public int compareTo(CustomerCredit o) {
       return this.getSurname().compareTo(o.getSurname());
    }
    
    
    
    
}
