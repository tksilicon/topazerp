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
public class OdicStock implements Comparable<OdicStock> {

    public OdicStock() {
    }
    private String id;
    private String branchId;
    private String productId;
    private String tenderno;
    private String productDesc;
    private Date date;
    private String stockunit;
    private Integer openingStock;
    private Integer goodsReceived;
    private int goodSold;
    private String goodsReceivedStr;
    private String goodSoldStr;
    private int closingStock;
    private int balance;
    private String dateString;
    private String stockType;
    
    
    private int redColor;
    private int blackColor;
    private int greenColor;
    private int blueColor;
    private int ygColor;
    private int grey;
    private int white;
    private int silver;
    private int greyColor;
    private int whiteColor;
    private int silverColor;

    public String getGoodSoldStr() {
        return goodSoldStr;
    }

    public void setGoodSoldStr(String goodSoldStr) {
        this.goodSoldStr = goodSoldStr;
    }

    public String getGoodsReceivedStr() {
        return goodsReceivedStr;
    }

    public void setGoodsReceivedStr(String goodsReceivedStr) {
        this.goodsReceivedStr = goodsReceivedStr;
    }

    public String getStockType() {
        return stockType;
    }

    public void setStockType(String stockType) {
        this.stockType = stockType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }

    public int getClosingStock() {
        return closingStock;
    }

    public void setClosingStock(int closingStock) {
        this.closingStock = closingStock;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getGoodSold() {
        return goodSold;
    }

    public void setGoodSold(int goodSold) {
        this.goodSold = goodSold;
    }

    public int getGoodsReceived() {
        return goodsReceived;
    }

    public void setGoodsReceived(int goodsReceived) {
        this.goodsReceived = goodsReceived;
    }

    public int getOpeningStock() {
        return openingStock;
    }

    public void setOpeningStock(int openingStock) {
        this.openingStock = openingStock;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getStockunit() {
        return stockunit;
    }

    public void setStockunit(String stockunit) {
        this.stockunit = stockunit;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getTenderno() {
        return tenderno;
    }

    public void setTenderno(String tenderno) {
        this.tenderno = tenderno;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    @Override
    public int compareTo(OdicStock o) {
        return this.getDateString().compareTo(o.getDateString());
    }

    public String getDateString() {
        return dateString;
    }

    public void setDateString(String dateString) {
        this.dateString = dateString;
    }

    public int getBlackColor() {
        return blackColor;
    }

    public void setBlackColor(int blackColor) {
        this.blackColor = blackColor;
    }

    public int getBlueColor() {
        return blueColor;
    }

    public void setBlueColor(int blueColor) {
        this.blueColor = blueColor;
    }

    public int getGreenColor() {
        return greenColor;
    }

    public void setGreenColor(int greenColor) {
        this.greenColor = greenColor;
    }

    public int getGrey() {
        return grey;
    }

    public void setGrey(int grey) {
        this.grey = grey;
    }

    public int getGreyColor() {
        return greyColor;
    }

    public void setGreyColor(int greyColor) {
        this.greyColor = greyColor;
    }

    public int getRedColor() {
        return redColor;
    }

    public void setRedColor(int redColor) {
        this.redColor = redColor;
    }

    public int getSilver() {
        return silver;
    }

    public void setSilver(int silver) {
        this.silver = silver;
    }

    public int getSilverColor() {
        return silverColor;
    }

    public void setSilverColor(int silverColor) {
        this.silverColor = silverColor;
    }

    public int getWhite() {
        return white;
    }

    public void setWhite(int white) {
        this.white = white;
    }

    public int getWhiteColor() {
        return whiteColor;
    }

    public void setWhiteColor(int whiteColor) {
        this.whiteColor = whiteColor;
    }

    public int getYgColor() {
        return ygColor;
    }

    public void setYgColor(int ygColor) {
        this.ygColor = ygColor;
    }
    
    
    

    @Override
    public String toString() {
        return "OdicStock{" + "id=" + id + ", branchId=" + branchId + ", productId=" + productId + ", tenderno=" + tenderno + ", productDesc=" + productDesc + ", date=" + date + ", stockunit=" + stockunit + ", openingStock=" + openingStock + ", goodsReceived=" + goodsReceived + ", goodSold=" + goodSold + ", closingStock=" + closingStock + ", balance=" + balance + '}';
    }
}
