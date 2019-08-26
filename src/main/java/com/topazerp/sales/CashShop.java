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
public class CashShop {
    
    
    private String holder;
    private Date dateCash;
    private String branch;
    private int amount;
    private String cashNo;
    private CashId cashId;
    private String postedStatus;

    public CashShop() {
    }

    public CashId getCashId() {
        return cashId;
    }

    public void setCashId(CashId cashId) {
        this.cashId = cashId;
    }

    public String getCashNo() {
        return cashNo;
    }

    public void setCashNo(String cashNo) {
        this.cashNo = cashNo;
    }

   

  
    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDateCash() {
        return dateCash;
    }

    public void setDateCash(Date dateCash) {
        this.dateCash = dateCash;
    }

    public String getHolder() {
        return holder;
    }

    public void setHolder(String holder) {
        this.holder = holder;
    }

    public String getPostedStatus() {
        return postedStatus;
    }

    public void setPostedStatus(String postedStatus) {
        this.postedStatus = postedStatus;
    }
    
    
    
    
}
