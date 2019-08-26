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
public class TestDate implements Comparable<TestDate> {
    
    
    private Date date;

    public TestDate(Date date) {
        this.date = date;
    }
    
    

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    

    public int compareTo(TestDate o) {
       return this.getDate().compareTo(o.getDate());
    }

    @Override
    public String toString() {
        return "TestDate{" + "date=" + date + '}';
    }
    
    
    
}
