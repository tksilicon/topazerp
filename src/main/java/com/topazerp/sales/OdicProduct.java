/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.io.Serializable;

/**
 *
 * @author THANKGOD
 */
public class OdicProduct implements Serializable  {
    
    static final long serialVersionUID = 1L;

    private String itemId;
    private String itemDescription;
    private double price;
    private double wholesalePrice = 0.0;
    
    private double retailPriceLower = 0.0;
    private double retailPriceHigher = 0.0;
    
    private double wholesalePriceLower = 0.0;
    private double wholesalePriceHigher = 0.0;
    
    private String priceType;
    private String typeofPrice;
    private String invoiceno;
    private String branch;
    private String custID;
    
    private double sellingPrice;
    
    
    //for sales invoices
    private Integer quantity;
    
    private double total = 0.0;
    
    private double discount = 0.0;    
    private double totalProductDiscount;
    
    private double priceAfterDiscount = 0.0;
    
    private double shadow = 0.0;
    private double totalShadowPrice = 0.0;
    
    private double subtotal = 0.0;
    
    private double subTotalAfterDiscount = 0.0;
    private double subTotalAfterShadow = 0.0;
    private double subTotalAfterDiscountShadow = 0.0;
    
    private double enteredPrice = 0.0;
    
    private boolean enteredAValue = false;
    
     private String availableStatus = "Unavailable";

    public String getAvailableStatus() {
        return availableStatus;
    }

    public void setAvailableStatus(String availableStatus) {
        this.availableStatus = availableStatus;
    }
         
    

    public OdicProduct() {
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getCustID() {
        return custID;
    }

    public void setCustID(String custID) {
        this.custID = custID;
    }
    
    
    

    public String getInvoiceno() {
        return invoiceno;
    }

    public void setInvoiceno(String invoiceno) {
        this.invoiceno = invoiceno;
    }
    
    

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public boolean isEnteredAValue() {
        return enteredAValue;
    }

    public void setEnteredAValue(boolean enteredAValue) {
        this.enteredAValue = enteredAValue;
    }

    public double getEnteredPrice() {
        return enteredPrice;
    }

    public void setEnteredPrice(double enteredPrice) {
        this.enteredPrice = enteredPrice;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPriceAfterDiscount() {
        return priceAfterDiscount;
    }

    public void setPriceAfterDiscount(double priceAfterDiscount) {
        this.priceAfterDiscount = priceAfterDiscount;
    }

    public String getPriceType() {
        return priceType;
    }

    public void setPriceType(String priceType) {
        this.priceType = priceType;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public double getRetailPriceHigher() {
        return retailPriceHigher;
    }

    public void setRetailPriceHigher(double retailPriceHigher) {
        this.retailPriceHigher = retailPriceHigher;
    }

    public double getRetailPriceLower() {
        return retailPriceLower;
    }

    public void setRetailPriceLower(double retailPriceLower) {
        this.retailPriceLower = retailPriceLower;
    }

    public double getShadow() {
        return shadow;
    }

    public void setShadow(double shadow) {
        this.shadow = shadow;
    }

    public double getSubTotalAfterDiscount() {
        return subTotalAfterDiscount;
    }

    public void setSubTotalAfterDiscount(double subTotalAfterDiscount) {
        this.subTotalAfterDiscount = subTotalAfterDiscount;
    }

    public double getSubTotalAfterShadow() {
        return subTotalAfterShadow;
    }

    public void setSubTotalAfterShadow(double subTotalAfterShadow) {
        this.subTotalAfterShadow = subTotalAfterShadow;
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

    public double getTotalProductDiscount() {
        return totalProductDiscount;
    }

    public void setTotalProductDiscount(double totalProductDiscount) {
        this.totalProductDiscount = totalProductDiscount;
    }

    public double getTotalShadowPrice() {
        return totalShadowPrice;
    }

    public void setTotalShadowPrice(double totalShadowPrice) {
        this.totalShadowPrice = totalShadowPrice;
    }

    public double getWholesalePrice() {
        return wholesalePrice;
    }

    public void setWholesalePrice(double wholesalePrice) {
        this.wholesalePrice = wholesalePrice;
    }

    public double getWholesalePriceHigher() {
        return wholesalePriceHigher;
    }

    public void setWholesalePriceHigher(double wholesalePriceHigher) {
        this.wholesalePriceHigher = wholesalePriceHigher;
    }

    public double getWholesalePriceLower() {
        return wholesalePriceLower;
    }

    public void setWholesalePriceLower(double wholesalePriceLower) {
        this.wholesalePriceLower = wholesalePriceLower;
    }

    public double getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(double sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getTypeofPrice() {
        return typeofPrice;
    }

    public void setTypeofPrice(String typeofPrice) {
        this.typeofPrice = typeofPrice;
    }

    public double getSubTotalAfterDiscountShadow() {
        return subTotalAfterDiscountShadow;
    }

    public void setSubTotalAfterDiscountShadow(double subTotalAfterDiscountShadow) {
        this.subTotalAfterDiscountShadow = subTotalAfterDiscountShadow;
    }
    
    

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final OdicProduct other = (OdicProduct) obj;
        if ((this.itemId == null) ? (other.itemId != null) : !this.itemId.equals(other.itemId)) {
            return false;
        }
        if ((this.itemDescription == null) ? (other.itemDescription != null) : !this.itemDescription.equals(other.itemDescription)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 67 * hash + (this.itemId != null ? this.itemId.hashCode() : 0);
        hash = 67 * hash + (this.itemDescription != null ? this.itemDescription.hashCode() : 0);
        return hash;
    }

    @Override
    public String toString() {
        return "OdicProduct{" + "itemId=" + itemId + ", itemDescription=" + itemDescription + ", price=" + price + ", wholesalePrice=" + wholesalePrice + ", retailPriceLower=" + retailPriceLower + ", retailPriceHigher=" + retailPriceHigher + ", wholesalePriceLower=" + wholesalePriceLower + ", wholesalePriceHigher=" + wholesalePriceHigher + ", priceType=" + priceType + ", quantity=" + quantity + ", total=" + total + ", discount=" + discount + ", totalProductDiscount=" + totalProductDiscount + ", priceAfterDiscount=" + priceAfterDiscount + ", shadow=" + shadow + ", totalShadowPrice=" + totalShadowPrice + ", subtotal=" + subtotal + ", subTotalAfterDiscount=" + subTotalAfterDiscount + ", subTotalAfterShadow=" + subTotalAfterShadow + ", enteredPrice=" + enteredPrice + ", enteredAValue=" + enteredAValue + '}';
    }
    
    

   
   
}
