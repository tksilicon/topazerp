/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Date;

/**
 *
 * @author THANKGOD
 */
public class Customer implements Serializable, Comparable<Customer> {

    static final long serialVersionUID = 1L;
    private String branch;
    private String regdate;
    private Date regDate2;
    private String regno;
    private String title;
    private String surname;
    private String firstname;
    private String custtype = "retail";
    private String address;
    private String state;
    private String country;
    private String day;
    private String month;
    private String gender;
    private String phoneno;
    private String email;
    private String custname;
    private int creditLimit = 0;
    private double customerBalance = 0.0;
    private double customerbal2013;
    private double customerbal2014;
    private boolean newold;

    public Customer() {
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCusttype() {
        return custtype;
    }

    public void setCusttype(String custtype) {
        this.custtype = custtype;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public String getRegno() {
        return regno;
    }

    public void setRegno(String regno) {
        this.regno = regno;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getCustname() {
        return custname;
    }

    public void setCustname(String custname) {
        this.custname = custname;
    }

    public Date getRegDate2() {
        return regDate2;
    }

    public void setRegDate2(Date regDate2) {
        this.regDate2 = regDate2;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isNewold() {
        return newold;
    }

    public void setNewold(boolean newold) {
        this.newold = newold;
    }

    public int getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(int creditLimit) {
        this.creditLimit = creditLimit;
    }

    public double getCustomerBalance() {
        return customerBalance;
    }

    public void setCustomerBalance(double customerBalance) {
        this.customerBalance = customerBalance;
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
    
    

    @Override
    public String toString() {
        return "Customer{" + "branch=" + branch + ", regdate=" + regdate + ", regno=" + regno + ", surname=" + surname + ", firstname=" + firstname + ", custtype=" + custtype + ", address=" + address + ", state=" + state + ", country=" + country + ", day=" + day + ", month=" + month + ", gender=" + gender + ", phoneno=" + phoneno + ", email=" + email + ", custname=" + custname + '}';
    }

    public int compareTo(Customer o) {
        return this.getSurname().compareTo(o.getSurname());
    }
}
