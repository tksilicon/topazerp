/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author THANKGOD
 */
public class SalesConnection {

    private Connection connect = null;

    public SalesConnection() throws java.lang.ClassNotFoundException {

        try {
            Class.forName("com.mysql.jdbc.Driver");


         //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic?user=odicerpc_odicapp&password=pink101");
          //connect = DriverManager.getConnection("jdbc:mysql://xjdz3.dailyrazor.com:3306/odicerpc_odic?user=odicerpc_odicapp&password=pink101");
             //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic", "root", "");

         connect = DriverManager.getConnection("jdbc:mysql://us-cdbr-azure-east-c.cloudapp.net:3306/topazerp?user=b016a53052c652&password=058abae7");
          
        } catch (Exception ex) {
            ex.printStackTrace();
            
           Logger.getLogger(SalesConnection.class.getName()).log(Level.SEVERE, "We have a problem getting connection", ex);
           /* try {
                connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic", "root", "admin");

            } catch (SQLException ex1) {
                Logger.getLogger(SalesConnection.class.getName()).log(Level.SEVERE, null, ex1);
            }*/
             
        }
    }

    public Connection getCon() throws  java.lang.NullPointerException {
        
        return connect;
    }

    public void closeCon() throws java.sql.SQLException {

        connect.close();
    }
}
