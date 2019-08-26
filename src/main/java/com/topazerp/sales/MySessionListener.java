/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;


import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
/**
 *
 * @author THANKGOD
 */
public final class MySessionListener implements HttpSessionListener {
    
    
    StaffStatus staff = null;
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        //throw new UnsupportedOperationException("Not supported yet.");
         staff = (StaffStatus)session.getAttribute("LOGIN_USER");
    }

    public void sessionDestroyed(HttpSessionEvent se) {
       
        // Store something in the session, and log a message
        try {
             new SalesOperations().insertSingleLogon(staff, "NO");
             
        } catch (Exception e) {
            
        }
    }
    
}





