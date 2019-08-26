/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classespack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import newpackage.SQLServerConn;
import newpackage.SQLconnector;

/**
 *
 * @author user
 */
public class Util {

    public double transferFund(String acctfrom, String acctto, double amount) {

        

        double retur = 0.0;
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();
            String sql = "Update account set balance = balance - ? where accountname = ? AND balance > 0.0 ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setDouble(1, amount);
            statement.setString(2, acctfrom);

            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0 && amount > 0.0) {

                String slq = "Update account set balance = balance + ? where accountname = ?";
                statement = con.prepareStatement(slq);
                statement.setDouble(1, amount);
                statement.setString(2, acctto);

                statement.executeUpdate();
              
            } 
             statement.close();
           con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            // JOptionPane.showMessageDialog(null, ex);
        }

        return retur;
    }

  
  
    public void updateinv(String invno, float amount) {

        try {

            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "Update ourinvoice set balance = balance - ? where invoiceid = ?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, amount);
             
            st.setString(2, invno);
            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
                // JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
           con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void updatecustpackage(float qty, String custno) {

        try {

            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "Update custpackage set totalpics = totalpics - ?  where custno = ? ";
            PreparedStatement st = con.prepareStatement(sql);

            st.setFloat(1, qty);
          
            st.setString(2, custno);
           

            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
               // JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
           con.close();
        } catch (Exception ex) {
           // JOptionPane.showMessageDialog(null, ex);
        }
    }

    public void updateexp(String rec, float amount) {

        try {

            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "Update expenses set balance = balance - ? where id = ? AND balance > 0 ";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, amount);
            st.setString(2, rec);
            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
                // JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
           con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

     public void updatepurchase(String rec, float amount) {

        try {

            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "Update purchase set balance = balance - ? where id = ? AND balance > 0 ";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, amount);
            st.setString(2, rec);
            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
                // JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
           con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

     public void updatepayment(String id, float balance) {

        try {

            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "Update payment set balance = balance + ? where id = ? ";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, balance);
            st.setString(2, id);
            
            int affectedRows = st.executeUpdate();
            st.close();
           con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    
}
