/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.util.Date;

/**
 *
 * @author THANKGOD
 */
public class ReportStatus implements Comparable<ReportStatus> {
    
    private String branch;
    private Date date;

    public ReportStatus() {
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

    public int compareTo(ReportStatus o) {
       return this.getDate().compareTo(o.getDate());
    }

    @Override
    public String toString() {
        return "ReportStatus{" + "date=" + date + '}';
    }
    
    
    
}
