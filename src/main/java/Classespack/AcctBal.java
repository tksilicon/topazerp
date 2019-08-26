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
public class AcctBal {

    public Double checkBalance(String acctname) {

        double balance = 0.0;
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "select balance from account where accountname = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, acctname);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                balance = rs.getFloat("Balance");
                System.out.print(balance + "\n");
            }
            con.close();
            //st.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return balance;

    }

    
    public Double asset(String assetname) {

        double balance = 0.0;
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            String sql = "select cost from fixedasset where account = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, assetname);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                balance = rs.getFloat("cost");
                System.out.print(balance + "\n");
            }
            con.close();
            //st.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return balance;

    }

    public Double revenue() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where custtype != 'package'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
            st.close();

        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }
    
    public Double getGtotal(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where custtype != 'package' and date = '"+date+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
            st.close();

        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

     public Double getBalance(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM ourinvoice where custtype != 'package' and date = '"+date+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
            st.close();

        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

      public Double getDiscount(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(discount) FROM ourinvoice where custtype != 'package' and date = '"+date+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
            st.close();

        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

     public Double getDeposit(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where custtype != 'package' and date = '"+date+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
            st.close();

        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincomesort1(String month, String year) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM ourinvoice where  date between  '"+month+"' AND '"+year+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincomesort2(String month, String year)throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM pickup where date between  '"+month+"' AND '"+year+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincomesort3(String month, String year) {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM packagehistory where date between  '"+month+"' AND '"+year+"' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
        } catch (Exception s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }


    public Double pickuptotal(String id)throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM pickup where invoiceid ='"+id+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double lands() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'land' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double equipment() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'office equipments' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double furnitures() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'furniture and fixtures' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double buildings() throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'buildings' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    

     public Double totalinvoiceyear(String year) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where year = '" + year + "'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;


            }
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double landimprovement() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'Motor Vehicle' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double machine() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = 'plant and machinery' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalexpences() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype = 'expenses' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalcostofsales() throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype = 'cost of service' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalcash() throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype='cash' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalbank() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype = 'bank' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totallia() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM account where accounttype='liability' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double payroltotal() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(netpay) FROM paysolution");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;

            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double payroltax() throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(tax) FROM paysolution");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double payrolloan() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(loan) FROM paysolution");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totaltax() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM paytax");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double payroliou() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(iou) FROM paysolution");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalassetcost() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalassetnbv() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(nbv) FROM fixedasset");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalassetcosttype(String type) throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(cost) FROM fixedasset where account = '" + type + "'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalassetnbvtype(String type) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
       
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(nbv) FROM fixedasset where account = '" + type + "'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double expensetype(String type) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(total_amount) FROM expenses where type = '"+type+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalexpenses() throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
       
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(total_amount) FROM expenses");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
           }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome1(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM ourinvoice where date = '"+date+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome2(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
       
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM pickup where date = '" + date + "' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;


            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome3(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM packagehistory where date = '" + date + "'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome11(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM ourinvoice where year = '"+date+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome22(String date) throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM pickup where year = '"+date+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalincome33(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
       
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(amtpaid) FROM packagehistory where year = '"+date+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    
    

    public Double totalrecday(String day) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
       
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(balance) FROM ourinvoice where date = '"+day+"' AND custtype = 'Regular' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalinvoiceday(String date, String date2) throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where date between '"+date+"' and '"+date2+"'" );
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalinvoicedayadmin(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where date = '"+date+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    
    public Double totalexpenseday(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(total_amount) FROM expenses where expense_date = '"+date+"' ");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    public Double totalexpenseyear(String year) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(total_amount) FROM expenses where year = '"+year+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }
    
    public Double totaldiscountmonth(String month, String year) throws java.lang.ClassNotFoundException{

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(discount) FROM ourinvoice where date between  '"+month+"' AND '"+year+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }


     public Double totalexpensemonth(String month, String year) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(total_amount) FROM expenses where expense_date between  '"+month+"' AND '"+year+"'");
            while (res.next()) {
                double c = res.getDouble(1);
                sum = sum + c;
            }
            con.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }

    

    public Double totaldiscountdate(String date) throws java.lang.ClassNotFoundException {

        float totalsales = 0;
        double sum = 0;
        
        try {
            SQLconnector sqlConn = new SQLconnector();
            Connection con = sqlConn.getCon();

            Statement st = con.createStatement();

            ResultSet res = st.executeQuery("SELECT SUM(discount) FROM ourinvoice where date = '"+date+"'");
            while (res.next()) {
                double c = res.getFloat(1);
                sum = sum + c;
            }
            con.close();
            st.close();
        } catch (SQLException s) {
            //JOptionPane.showMessageDialog(null, "ERROR" + s);
        }
        return sum;
    }
}
