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
public class InvoiceDetails {
    private String invoiceid;
    private String branch;
    private String custid;
    private double totalShadow;
    private String invoiceType;
    private String paymentType;
    private double cashAmount;
    private double cashInBank;
    private String paymentBank;
    private Date paymentDate;
    private String tellerNo;
    private String chequeNo;
    private String bankofCheque;
    private Date dateofCheque;

    public InvoiceDetails() {
    }

    public String getBankofCheque() {
        return bankofCheque;
    }

    public void setBankofCheque(String bankofCheque) {
        this.bankofCheque = bankofCheque;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public double getCashAmount() {
        return cashAmount;
    }

    public void setCashAmount(double cashAmount) {
        this.cashAmount = cashAmount;
    }

    public double getCashInBank() {
        return cashInBank;
    }

    public void setCashInBank(double cashInBank) {
        this.cashInBank = cashInBank;
    }

    public String getChequeNo() {
        return chequeNo;
    }

    public void setChequeNo(String chequeNo) {
        this.chequeNo = chequeNo;
    }

    public String getCustid() {
        return custid;
    }

    public void setCustid(String custid) {
        this.custid = custid;
    }

    public Date getDateofCheque() {
        return dateofCheque;
    }

    public void setDateofCheque(Date dateofCheque) {
        this.dateofCheque = dateofCheque;
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType;
    }

    public String getInvoiceid() {
        return invoiceid;
    }

    public void setInvoiceid(String invoiceid) {
        this.invoiceid = invoiceid;
    }

    public String getPaymentBank() {
        return paymentBank;
    }

    public void setPaymentBank(String paymentBank) {
        this.paymentBank = paymentBank;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getTellerNo() {
        return tellerNo;
    }

    public void setTellerNo(String tellerNo) {
        this.tellerNo = tellerNo;
    }

    public double getTotalShadow() {
        return totalShadow;
    }

    public void setTotalShadow(double totalShadow) {
        this.totalShadow = totalShadow;
    }

    @Override
    public String toString() {
        return "InvoiceDetails{" + "invoiceid=" + invoiceid + ", branch=" + branch + ", custid=" + custid + ", totalShadow=" + totalShadow + ", invoiceType=" + invoiceType + ", paymentType=" + paymentType + ", cashAmount=" + cashAmount + ", cashInBank=" + cashInBank + ", paymentBank=" + paymentBank + ", paymentDate=" + paymentDate + ", tellerNo=" + tellerNo + ", chequeNo=" + chequeNo + ", bankofCheque=" + bankofCheque + ", dateofCheque=" + dateofCheque + '}';
    }
  

}
