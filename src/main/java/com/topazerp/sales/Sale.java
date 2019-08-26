
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.sql.Date;
import java.util.Set;

/**
 *
 * @author THANKGOD
 */
public class Sale {

    private Customer cust;
    private InvoiceId invoice;
    private Date date;
    private String invoiceType;
    private Set<OdicProduct> soldProducts;
    private String invoiceNo;
    private String branch;
    private double subtotal;
    private double totalDiscount;
    private double totalAfterDiscount;
    private double totalShadow;
    private double totalAfterShadowDiscount;
    private double total;
    private double amountPaid;
    private double balance;
    private boolean isNewCustomer = false;
    private String priceType;
    private StaffStatus staff;
    private String staffname;
    private String custName;
    private String custID;
    private String custType;
    private String tagno;
    private String paymentType;
    private double cashAmount;
    private double cashInbank;
    private String paymentBank;
    private Date paymentDate;
    private String tellerNo;
    private String chequeNo;
    private String bankOfCheque;
    private Date dateonCheque;
    private double balanceForShadow;
    private String status;
    private String suppliedFrom = "none";
    private String supply = "none";
    private String postedStatus;
    private String supplyPoint;
    private int totalQty;
    private String cicOthers = "others";

    public String getCicOthers() {
        return cicOthers;
    }

    public void setCicOthers(String cicOthers) {
        this.cicOthers = cicOthers;
    }

    public Sale() {
    }

    public String getStaffname() {
        return staffname;
    }

    public void setStaffname(String staffname) {
        this.staffname = staffname;
    }

    public String getTagno() {
        return tagno;
    }

    public void setTagno(String tagno) {
        this.tagno = tagno;
    }

    public String getCustType() {
        return custType;
    }

    public void setCustType(String custType) {
        this.custType = custType;
    }

    public String getCustID() {
        return custID;
    }

    public void setCustID(String custID) {
        this.custID = custID;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }

    public Customer getCust() {
        return cust;
    }

    public void setCust(Customer cust) {
        this.cust = cust;
    }

    public double getAmountPaid() {
        return amountPaid;
    }

    public void setAmountPaid(double amountPaid) {
        this.amountPaid = amountPaid;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType;
    }

    public InvoiceId getInvoice() {
        return invoice;
    }

    public InvoiceId getInvoice(String branch) {
        return new InvoiceId(branch);
    }

    public void setInvoice(InvoiceId invoice) {
        this.invoice = invoice;
    }

    public Set<OdicProduct> getSoldProducts() {
        return soldProducts;
    }

    public void setSoldProducts(Set<OdicProduct> soldProducts) {
        this.soldProducts = soldProducts;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getTotalDiscount() {
        return totalDiscount;
    }

    public void setTotalDiscount(double totalDiscount) {
        this.totalDiscount = totalDiscount;
    }

    public double getTotalShadow() {
        return totalShadow;
    }

    public void setTotalShadow(double totalShadow) {
        this.totalShadow = totalShadow;
    }

    public boolean isIsNewCustomer() {
        return isNewCustomer;
    }

    public void setIsNewCustomer(boolean isNewCustomer) {
        this.isNewCustomer = isNewCustomer;
    }

    public String getPriceType() {
        return priceType;
    }

    public void setPriceType(String priceType) {
        this.priceType = priceType;
    }

    public StaffStatus getStaff() {
        return staff;
    }

    public void setStaff(StaffStatus staff) {
        this.staff = staff;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getPostedStatus() {
        return postedStatus;
    }

    public void setPostedStatus(String postedStatus) {
        this.postedStatus = postedStatus;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSuppliedFrom() {
        return suppliedFrom;
    }

    public void setSuppliedFrom(String suppliedFrom) {
        this.suppliedFrom = suppliedFrom;
    }

    public double getCashAmount() {
        return cashAmount;
    }

    public void setCashAmount(double cashAmount) {
        this.cashAmount = cashAmount;
    }

    public double getCashInbank() {
        return cashInbank;
    }

    public void setCashInbank(double cashInbank) {
        this.cashInbank = cashInbank;
    }

    public String getBankOfCheque() {
        return bankOfCheque;
    }

    public void setBankOfCheque(String bankOfCheque) {
        this.bankOfCheque = bankOfCheque;
    }

    public String getChequeNo() {
        return chequeNo;
    }

    public void setChequeNo(String chequeNo) {
        this.chequeNo = chequeNo;
    }

    public Date getDateonCheque() {
        return dateonCheque;
    }

    public void setDateonCheque(Date dateonCheque) {
        this.dateonCheque = dateonCheque;
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

    public String getTellerNo() {
        return tellerNo;
    }

    public void setTellerNo(String tellerNo) {
        this.tellerNo = tellerNo;
    }

    public double getTotalAfterDiscount() {
        return totalAfterDiscount;
    }

    public void setTotalAfterDiscount(double totalAfterDiscount) {
        this.totalAfterDiscount = totalAfterDiscount;
    }

    public double getTotalAfterShadowDiscount() {
        return totalAfterShadowDiscount;
    }

    public void setTotalAfterShadowDiscount(double totalAfterShadowDiscount) {
        this.totalAfterShadowDiscount = totalAfterShadowDiscount;
    }

    public double getBalanceForShadow() {
        return balanceForShadow;
    }

    public void setBalanceForShadow(double balanceForShadow) {
        this.balanceForShadow = balanceForShadow;
    }

    public int getTotalQty() {
        return totalQty;
    }

    public void setTotalQty(int totalQty) {
        this.totalQty = totalQty;
    }

    public String getSupply() {
        return supply;
    }

    public void setSupply(String supply) {
        this.supply = supply;
    }

    public String getSupplyPoint() {
        return supplyPoint;
    }

    public void setSupplyPoint(String supplyPoint) {
        this.supplyPoint = supplyPoint;
    }

    @Override
    public String toString() {
        return "Sale{" + "cust=" + cust + ", invoice=" + invoice + ", date=" + date + ", invoiceType=" + invoiceType + ", soldProducts=" + soldProducts + ", invoiceNo=" + invoiceNo + ", branch=" + branch + ", subtotal=" + subtotal + ", totalDiscount=" + totalDiscount + ", totalShadow=" + totalShadow + ", total=" + total + ", amountPaid=" + amountPaid + ", balance=" + balance + ", isNewCustomer=" + isNewCustomer + ", priceType=" + priceType + ", staff=" + staff + ", staffname=" + staffname + ", custName=" + custName + ", custID=" + custID + ", custType=" + custType + ", tagno=" + tagno + ", paymentType=" + paymentType + ", status=" + status + ", suppliedFrom=" + suppliedFrom + ", postedStatus=" + postedStatus + ", supplyPoint=" + supplyPoint  + '}';
    }
}
