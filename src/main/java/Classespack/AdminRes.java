/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classespack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import newpackage.SQLconnector;

/**
 *
 * @author user
 */
public class AdminRes {

    public static void openURL(String url) {
        String osName = System.getProperty("os.name");
        try {
            if (osName.startsWith("Windows")) {
                Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + url);
            } else {
                String[] browsers = {"firefox", "ie", "opera", "konqueror", "epiphany", "mozilla", "netscape"};
                String browser = null;
                for (int count = 0; count < browsers.length && browser == null; count++) {
                    if (Runtime.getRuntime().exec(new String[]{"which", browsers[count]}).waitFor() == 0) {
                        browser = browsers[count];
                    }
                }
                Runtime.getRuntime().exec(new String[]{browser, url});
            }

        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Error in opening browser" + ":\n" + e.getLocalizedMessage());
        }
    }

    public void creditacct(String acctn, double amount) throws java.lang.ClassNotFoundException{
        java.util.Calendar now = java.util.Calendar.getInstance();
        
        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            //statement.setInt(1, pin);
            String sql = "Update account set balance = balance + ? where accountname = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setDouble(1, amount);
            statement.setString(2, acctn);
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account  has been creditted successfully");
            } else {
                //JOptionPane.showMessageDialog(null, "Account cannot be creditted. Pls, cancel the transaction and try again");
            }
            statement.close();
            con.close();
        } catch (Exception ex) {
            //JOptionPane.showMessageDialog(null, "ERROR");
        }
    }

    public void debitAcct(String acctn, float amount) throws java.lang.ClassNotFoundException{
        try {

            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();

            String sql = "Update account set balance = balance - ? where accountname = ?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, amount);
            st.setString(2, acctn);
            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
                //JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void updateexpenses(String receiver, float amount) throws java.lang.ClassNotFoundException{
        try {

            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();

            String sql = "Update expenses set balance = balance - ? where receiver = ? AND balance >0";
            PreparedStatement st = con.prepareStatement(sql);
            st.setFloat(1, amount);
            st.setString(2, receiver);
            //ResultSet set = statement.executeQuery(sql);
            //statement.executeUpdate();
            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account has been debited successfully");
            } else {
                //JOptionPane.showMessageDialog(null, "Account cannot be debited. Pls, try again");
            }
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public float sumOfaccount() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        float sum = 0;
        
        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype = 'Cash' or accounttype = 'Bank' ");
            while (res.next()) {
                float c = res.getFloat(1);
                sum = sum + c;
            }
            st.close();
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public String deleteitem(String Id) throws java.lang.ClassNotFoundException{
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();
            String sql = "Delete from invoicebody where invoiceid = ? ";
            PreparedStatement statement = con.prepareStatement(sql);

            statement.setString(1, Id);
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                //JOptionPane.showMessageDialog(null, "Account with Id" + Id + "has been successfully Deleted\n");
            } else {
                // JOptionPane.showMessageDialog(null, "Cannot delete account, make sure you have 0 balance in your account");
            }
            statement.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            //JOptionPane.showMessageDialog(null, "ERROR" + ex);
        }
        return String.format("");
    }

    public String deleteextras(String Id) throws java.lang.ClassNotFoundException{
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();
            String sql = "Delete from extrainfo where invoiceid = ? ";
            PreparedStatement statement = con.prepareStatement(sql);

            statement.setString(1, Id);
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account with Id" + Id + "has been successfully Deleted\n");
            } else {
                // JOptionPane.showMessageDialog(null, "Cannot delete account, make sure you have 0 balance in your account");
            }
            statement.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            //JOptionPane.showMessageDialog(null, "ERROR" + ex);
        }
        return String.format("");
    }

    public String deletecahflow(String Id) throws java.lang.ClassNotFoundException{
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();
            String sql = "Delete from cashfloaw where transactionid = ? ";
            PreparedStatement statement = con.prepareStatement(sql);

            statement.setString(1, Id);
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                // JOptionPane.showMessageDialog(null, "Account with Id" + Id + "has been successfully Deleted\n");
            } else {
                // JOptionPane.showMessageDialog(null, "Cannot delete account, make sure you have 0 balance in your account");
            }
            statement.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            //JOptionPane.showMessageDialog(null, "ERROR" + ex);
        }
        return String.format("");
    }
}
