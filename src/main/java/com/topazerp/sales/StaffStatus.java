/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.util.Calendar;
import java.util.Date;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 *
 * @author THANKGOD
 */
public class StaffStatus //implements HttpSessionBindingListener 
{

    private String status;
    private String branch;
    private String department;
    public String jobType;
    private String username;
    
    private int lastDayOfYear;
    private int invoiceNoBranch;
    private int invoiceNoStaff;
    private Date today;
    private Calendar cal;
    private StaffStatus staff;
    
    
    private Date tempInvoiceDate;
    private Date supplyInvoice;
    private String oldProduct = "false";
    private String password;

    public String getOldProduct() {
        return oldProduct;
    }

    public void setOldProduct(String oldProduct) {
        this.oldProduct = oldProduct;
    }
    

    public Date getTempInvoiceDate() {
        return tempInvoiceDate;
    }

    public void setTempInvoiceDate(Date tempInvoiceDate) {
        this.tempInvoiceDate = tempInvoiceDate;
    }
    
    

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getInvoiceNoBranch() {
        return invoiceNoBranch;
    }

    public void setInvoiceNoBranch(int invoiceNoBranch) {
        this.invoiceNoBranch = invoiceNoBranch;
    }

    public int getInvoiceNoStaff() {
        return invoiceNoStaff;
    }

    public void setInvoiceNoStaff(int invoiceNoStaff) {
        this.invoiceNoStaff = invoiceNoStaff;
    }

    

    public int getLastDayOfYear() {
        return lastDayOfYear;
    }

    public void setLastDayOfYear(int lastDayOfYear) {
        this.lastDayOfYear = lastDayOfYear;
    }

    public Date getToday() {
        return today;
    }

    public void setToday(Date today) {
        this.today = today;
    }

    public Calendar getCal() {
        return cal;
    }

    public void setCal(Calendar cal) {
        this.cal = cal;
    }
    
    

    /*public void valueBound(HttpSessionBindingEvent se) {
          new SalesOperations().insertSingleLogon(this, "YES");
    }

    public void valueUnbound(HttpSessionBindingEvent se) {        
         new SalesOperations().insertSingleLogon(this, "NO");
    }*/

    public Date getSupplyInvoice() {
        return supplyInvoice;
    }

    public void setSupplyInvoice(Date supplyInvoice) {
        this.supplyInvoice = supplyInvoice;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "StaffStatus{" + "status=" + status + ", branch=" + branch + ", department=" + department + ", jobType=" + jobType + ", username=" + username + ", lastDayOfYear=" + lastDayOfYear + ", invoiceNoBranch=" + invoiceNoBranch + ", invoiceNoStaff=" + invoiceNoStaff + ", today=" + today + ", cal=" + cal + ", staff=" + staff + ", tempInvoiceDate=" + tempInvoiceDate + ", supplyInvoice=" + supplyInvoice + ", oldProduct=" + oldProduct + ", password=" + password + '}';
    }
    
    
    
}
