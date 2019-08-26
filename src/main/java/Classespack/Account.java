/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classespack;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author user
 */
public class Account {
    private String Accountname;
    private float balance;

    public String getAccountname() {
        return Accountname;
    }

    public void setAccountname(String Accountname) {
        this.Accountname = Accountname;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }
    
     DateFormat df = new SimpleDateFormat("dd/MM/yy");
    
}
