/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import com.topazerp.sales.errors.SaveInvoiceException;
import com.topazerp.sales.errors.UpdateCounterExecption;
import java.text.ParseException;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author THANKGOD
 */
public class SalesOperations {
    SalesConnection connection;
    public SalesOperations(SalesConnection connection) {
        this.connection = connection;
    }
    
    public SalesOperations() {
        
        try{
        this.connection = new SalesConnection();
        }catch(ClassNotFoundException ex){
            
        }
    }
    
    
    

    public ArrayList<Customer> getCustomers() {

        Customer customer;

        ArrayList<Customer> odicCustomers = new ArrayList<Customer>();


        Connection con = null;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch, regdate,regno,surname, firstname, custtype, address, state, country, day, month, gender, phoneno, email, customerbalance FROM customers";
            PreparedStatement pstmt = con.prepareStatement(sql);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                customer = new Customer();


                customer.setBranch(results.getString(1));
                customer.setRegdate(results.getString(2));
                customer.setRegno(results.getString(3));
                customer.setSurname(results.getString(4));
                customer.setFirstname(results.getString(5));
                customer.setCusttype(results.getString(6));
                customer.setAddress(results.getString(7));
                customer.setState(results.getString(8));
                customer.setCountry(results.getString(9));
                customer.setDay(results.getString(10));
                customer.setMonth(results.getString(11));
                customer.setGender(results.getString(12));
                customer.setPhoneno(results.getString(13));
                customer.setEmail(results.getString(14));
                customer.setCustomerBalance(results.getDouble(15));

                odicCustomers.add(customer);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return odicCustomers;
    }

    public Customer getCustomers(String custID) {

        Customer customer = null;
        Connection con = null;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch, regdate,regno,surname, firstname, custtype, address, state, country, day, month, gender, phoneno, email, customerbalance FROM customers where regno=?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, custID);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                customer = new Customer();

                customer.setBranch(results.getString(1));
                customer.setRegdate(results.getString(2));
                customer.setRegno(results.getString(3));
                customer.setSurname(results.getString(4));
                customer.setFirstname(results.getString(5));
                customer.setCusttype(results.getString(6));
                customer.setAddress(results.getString(7));
                customer.setState(results.getString(8));
                customer.setCountry(results.getString(9));
                customer.setDay(results.getString(10));
                customer.setMonth(results.getString(11));
                customer.setGender(results.getString(12));
                customer.setPhoneno(results.getString(13));
                customer.setEmail(results.getString(14));
                customer.setCustomerBalance(results.getDouble(15));




            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return customer;
    }
    
    

    public ArrayList<OdicProduct> getProducts() {

        ArrayList<OdicProduct> goods = null;
        Connection con = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT product_id, product_desc,price,lowerpriceretail,higherpriceretail,"
                    + "wholesaleprice, lowerpricewholesale, higherpricewholesale FROM odicproducts";
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet results = pstmt.executeQuery();
            goods = new ArrayList<OdicProduct>();


            OdicProduct prod = null;

            while (results.next()) {
                prod = new OdicProduct();


                prod.setItemId(results.getString(1));
                prod.setItemDescription(results.getString(2));
                prod.setPrice(results.getDouble(3));
                prod.setRetailPriceLower(results.getDouble(4));
                prod.setRetailPriceHigher(results.getDouble(5));
                prod.setWholesalePrice(results.getDouble(6));
                prod.setWholesalePriceLower(results.getDouble(7));
                prod.setWholesalePriceHigher(results.getDouble(8));

                goods.add(prod);

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return goods;
    }
    
    public ArrayList<VoidedInvoices> getVoidedInvoices(String branch) {

        ArrayList<VoidedInvoices> voidedInvoicex = null;
        Connection con = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT branch,invoiceid, dateinvoice, staff FROM voidedinvoicenosales where branch = ?";   
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branch);
            
            ResultSet rs = pstmt.executeQuery();
            
            voidedInvoicex = new ArrayList<VoidedInvoices>();


            VoidedInvoices voided = null;

            while (rs.next()) {
                voided = new VoidedInvoices();


                voided.setBranch(rs.getString(1));
                voided.setInvoiceno(rs.getString(2));
                voided.setDateInvoice(rs.getDate(3));
                voided.setStaffName(rs.getString(4));
                

                voidedInvoicex.add(voided);              
               

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return voidedInvoicex;
    }



    public ArrayList<OdicProduct> getProductsCIC() {

        ArrayList<OdicProduct> goods = null;
        Connection con = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT product_id, product_desc,wholesaleprice,"
                    + " lowerpricewholesale, higherpricewholesale FROM odicproductscic";
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet results = pstmt.executeQuery();
            goods = new ArrayList<OdicProduct>();




            OdicProduct prod = null;

            while (results.next()) {
                prod = new OdicProduct();


                prod.setItemId(results.getString(1));
                prod.setItemDescription(results.getString(2));
                prod.setWholesalePrice((Double) results.getDouble(3));
                prod.setWholesalePriceLower((Double) results.getDouble(4));
                prod.setWholesalePriceHigher((Double) results.getDouble(5));

                goods.add(prod);

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return goods;
    }

    public int getInvoiceId(String branch) {


        Connection con = null;
        int maxnumber = 0;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT maxnumber from invoicegen where branch_id=?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branch);


            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                maxnumber = results.getInt(1);

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return maxnumber;

    }

    public int getReceiptNo() {


        Connection con = null;
        int maxnumber = 0;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT maxnumber from invoicegen where branch_id=?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "HOSR");


            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                maxnumber = results.getInt(1);

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return maxnumber;

    }

    public int getCashShopNo() {


        Connection con = null;
        int maxnumber = 0;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT maxnumber from invoicegen where branch_id=?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "HOSC");


            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                maxnumber = results.getInt(1);

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return maxnumber;

    }

    public DailyInvoiceTotal getDailySalesCounter(StaffStatus staff, Calendar cal) {


        DailyInvoiceTotal todayTotal = null;
        Connection con = null;

        try {

            Date today = cal.getTime();

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "select branch_id, DATE_FORMAT(dateinvoice,'%Y-%m-%d') , totalinvoice from dailyinvoicetotal where branch_id= ? and  DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";

            //String sql = "select branch_id, dateinvoice, totalinvoice, DAYOFYEAR(dateinvoice) from dailyinvoicetotal where branch_id= ? and DAYOFYEAR(dateinvoice) = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, staff.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(today));

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                todayTotal = new DailyInvoiceTotal();


                todayTotal.setBranchId(results.getString(1));
                todayTotal.setInvoiceDate(results.getDate(2));
                todayTotal.setTotalInvoice(results.getInt(3));
            }

            con.commit();

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);



            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return todayTotal;
    }

    public DailyInvoiceTotal getDailySalesCounterVoidInvoice(StaffStatus staff, Date date, Connection con) {


        DailyInvoiceTotal todayTotal = null;
        PreparedStatement pstmt = null;


        try {
            String sql = "select branch_id, DATE_FORMAT(dateinvoice,'%Y-%m-%d') , totalinvoice from dailyinvoicetotal where branch_id= ? and  DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";

            //String sql = "select branch_id, dateinvoice, totalinvoice, DAYOFYEAR(dateinvoice) from dailyinvoicetotal where branch_id= ? and DAYOFYEAR(dateinvoice) = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, staff.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                todayTotal = new DailyInvoiceTotal();


                todayTotal.setBranchId(results.getString(1));
                todayTotal.setInvoiceDate(results.getDate(2));
                todayTotal.setTotalInvoice(results.getInt(3));
            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);



            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return todayTotal;
    }

    public DailyInvoiceTotal getDailySalesCounter(StaffStatus staff, Date date, Connection con) throws SaveInvoiceException {


        DailyInvoiceTotal todayTotal = null;
        PreparedStatement pstmt = null;


        try {


            String sql = "select branch_id, DATE_FORMAT(dateinvoice,'%Y-%m-%d') , totalinvoice from dailyinvoicetotal where branch_id= ? and  DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";

            //String sql = "select branch_id, dateinvoice, totalinvoice, DAYOFYEAR(dateinvoice) from dailyinvoicetotal where branch_id= ? and DAYOFYEAR(dateinvoice) = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, staff.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                todayTotal = new DailyInvoiceTotal();

                String branchId = results.getString(1);
                todayTotal.setBranchId(branchId);

                Date invoiceDate = results.getDate(2);
                todayTotal.setInvoiceDate(invoiceDate);

                int totalinvoice = results.getInt(3);
                todayTotal.setTotalInvoice(totalinvoice);




            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);



            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return todayTotal;
    }

    public DailyInvoiceTotal insertDailySalesCounter(StaffStatus staff, Calendar cal) {


        Connection con = null;
        PreparedStatement pstmt = null;

        DailyInvoiceTotal todayTotal = new DailyInvoiceTotal();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "insert into dailyinvoicetotal (branch_id, dateinvoice, totalinvoice) values (?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, staff.getBranch());

            todayTotal.setBranchId(staff.getBranch());

            java.sql.Date today = OdicUtil.convertJavaDateToSqlDate(cal.getTime());

            todayTotal.setInvoiceDate(cal.getTime());
            pstmt.setDate(2, today);

            pstmt.setInt(3, 0);

            todayTotal.setDateOfYear(cal.get(Calendar.DAY_OF_YEAR));
            todayTotal.setTotalInvoice(0);
            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            try {
                pstmt.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return todayTotal;

    }

    public void updateDailySalesCounter(int dailysalescounter, StaffStatus staff, Date date, Connection con) throws UpdateCounterExecption {


        PreparedStatement pstmt = null;


        try {




            String sql = "update dailyinvoicetotal set totalinvoice =? where branch_id= ? and DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, dailysalescounter);
            pstmt.setString(2, staff.getBranch());
            pstmt.setDate(3, OdicUtil.convertJavaDateToSqlDate(date));

            pstmt.executeUpdate();

            con.commit();

        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new UpdateCounterExecption("Could not update counter");
            }
        } finally {
            try {
                pstmt.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


    }

    public void updateDailySalesCounter(int dailysalescounter, StaffStatus staff, Calendar cal) {


        PreparedStatement pstmt = null;
        Connection con = null;


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            Date today = new Date();


            String sql = "update dailyinvoicetotal set totalinvoice =? where branch_id= ? and DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, dailysalescounter);
            pstmt.setString(2, staff.getBranch());
            pstmt.setDate(3, OdicUtil.convertJavaDateToSqlDate(today));

            pstmt.executeUpdate();
            con.commit();

        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


    }

    public void updateDailySalesCounterVoid(int dailysalescounter, StaffStatus staff, Date date, Connection con) {


        PreparedStatement pstmt = null;


        try {

            String sql = "update dailyinvoicetotal set totalinvoice =? where branch_id= ? and DATE_FORMAT(dateinvoice,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d')";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, dailysalescounter);
            pstmt.setString(2, staff.getBranch());
            pstmt.setDate(3, OdicUtil.convertJavaDateToSqlDate(date));

            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


    }

    //Added Checking if Staff is active, get department and jobtype    
    public StaffStatus Signin(String username, String password) {

        //String userid = "";
        String status = "";
        String branch = "";
        String department = "";
        String jobType = "";
        String username2 = "";
        //staff login details
        StaffStatus statusStaff = null;

        Calendar cal = new GregorianCalendar();
        cal = convertCalendar(cal, TimeZone.getTimeZone("Africa/Lagos"));
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT username, department, branch, status, jobtype, userpassword FROM admin where username= ?";
            PreparedStatement sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, username);
            ResultSet sqlresultset = sqlstatement.executeQuery();


            while (sqlresultset.next()) {
                statusStaff = new StaffStatus();

                username2 = sqlresultset.getString(1);
                statusStaff.setUsername(username2);

                department = sqlresultset.getString(2);
                statusStaff.setDepartment(department);

                branch = sqlresultset.getString(3);
                statusStaff.setBranch(branch);

                status = sqlresultset.getString(4);
                statusStaff.setStatus(status);

                jobType = sqlresultset.getString(5);
                statusStaff.setJobType(jobType);

                statusStaff.setPassword(sqlresultset.getString(6));

                statusStaff.setToday(cal.getTime());
                statusStaff.setCal(cal);
                break;

            }


        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return statusStaff;
    }

    public void updatePassword(String username, String password) {


        Connection con = null;
        PreparedStatement sqlstatement = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            String sql = "UPDATE admin SET userpassword=? WHERE username=?";
            sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, password);
            sqlstatement.setString(2, username);



            sqlstatement.executeUpdate();
            con.commit();



        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", e);


        } finally {

            try {
                sqlstatement.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public StaffStatus getInvoiceDetails(StaffStatus staff) {

        Connection con = null;
        int invoiceNoBranch = 0;
        int invoiceNoStaff = 0;
        Date date = null;

        PreparedStatement sqlstatement = null;
        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "SELECT util_value from temputilinteger where branch_id = ? and util_name =?";
            sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, staff.getBranch());
            sqlstatement.setString(2, "dailysalescounter");
            ResultSet sqlresultset = sqlstatement.executeQuery();

            while (sqlresultset.next()) {
                invoiceNoBranch = sqlresultset.getInt(1);
                staff.setInvoiceNoBranch(invoiceNoBranch);

            }

            sql = "SELECT lastloginday, invoiceNo from userinvoices where branch_id = ? and username =?";
            sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, staff.getBranch());
            sqlstatement.setString(2, staff.getUsername());
            sqlresultset = sqlstatement.executeQuery();

            while (sqlresultset.next()) {
                invoiceNoStaff = sqlresultset.getInt(2);
                staff.setInvoiceNoStaff(invoiceNoStaff);

                date = sqlresultset.getDate(1);


                Calendar cal = new GregorianCalendar();
                cal = convertCalendar(cal, TimeZone.getTimeZone("Asia/Calcutta"));
                cal.setTime(date);

                staff.setCal(cal);
            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
        }
        return staff;
    }

    public int getLatestCustomerNo(StaffStatus staff, String branch, Connection con) {


        int maxnumber = 0;
        PreparedStatement pstmt = null;


        try {



            String sql = "SELECT maxnumber from invoicegen where branch_id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branch);


            ResultSet results = pstmt.executeQuery();

            while (results.next()) {

                maxnumber = results.getInt(1);

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return maxnumber;

    }

    public void updateCustomerNo(int maxnumber, String branch, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update invoicegen set maxnumber=? where branch_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, maxnumber);
            st.setString(2, branch);

            st.executeUpdate();

            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void updateCustomerNo2(int maxnumber, String branch, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update invoicegen set maxnumber=? where branch_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, maxnumber);
            st.setString(2, branch);

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public String generateCustomerNumber(StaffStatus staff) {

        Connection con = null;


        PreparedStatement sqlstatement = null;
        int numberOfCustomers = 0;
        String custRegNo = "";

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT count(*) from  customers";
            sqlstatement = con.prepareStatement(sql);

            ResultSet sqlresultset = sqlstatement.executeQuery();

            while (sqlresultset.next()) {
                numberOfCustomers = sqlresultset.getInt(1);
            }

            numberOfCustomers += 1;

            if (staff.getBranch().equals("HEADOFFICE_SALES")) {

                custRegNo = custRegNo + "HQS" + numberOfCustomers;
            } else if (staff.getBranch().equals("PLAZA")) {

                custRegNo = custRegNo + "PLZ" + numberOfCustomers;
            } else if (staff.getBranch().equals("CA19")) {

                custRegNo = custRegNo + "CA1" + numberOfCustomers;
            } else if (staff.getBranch().equals("B/25 No 26")) {

                custRegNo = custRegNo + "B25" + numberOfCustomers;
            }



        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                sqlstatement.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


        return custRegNo;
    }

    public ArrayList<String> getBranches() {


        ArrayList<String> branches = null;
        Connection con = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT branch_name FROM branch";
            PreparedStatement pstmt = con.prepareStatement(sql);

            ResultSet results = pstmt.executeQuery();

            branches = new ArrayList<String>();

            String branch_name = "";


            while (results.next()) {
                branch_name = results.getString(1);

                branches.add(branch_name);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return branches;
    }

    public void saveInvoice(Sale sale) throws SaveInvoiceException {

        Connection con = null;
        int maxnumber = 0;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            if (sale.getCust().isNewold() == true) {

                StaffStatus staff = sale.getStaff();

                if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                    maxnumber = getLatestCustomerNo(staff, "CUN", con);
                } else if (staff.getBranch().equals("PLAZA")) {
                    maxnumber = getLatestCustomerNo(staff, "PLZC", con);
                } else if (staff.getBranch().equals("CA19")) {
                    maxnumber = getLatestCustomerNo(staff, "CA19C", con);
                } else if (staff.getBranch().equals("B/25 No 26")) {
                    maxnumber = getLatestCustomerNo(staff, "B25C", con);
                }

                maxnumber += 1;

                String custRegNo = "";

                if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                    custRegNo = custRegNo + "HQS" + maxnumber;
                } else if (staff.getBranch().equals("PLAZA")) {
                    custRegNo = custRegNo + "PLZ" + maxnumber;
                } else if (staff.getBranch().equals("CA19")) {
                    custRegNo = custRegNo + "CA1" + maxnumber;
                } else if (staff.getBranch().equals("B/25 No 26")) {
                    custRegNo = custRegNo + "B25" + maxnumber;
                }

                sale.getCust().setRegno(custRegNo);

            }

            saveInvoice2(sale, con);

            Set<OdicProduct> solds = sale.getSoldProducts();
            Iterator itil = solds.iterator();
            OdicProduct sold = null;

            while (itil.hasNext()) {
                sold = (OdicProduct) itil.next();
                saveInvoiceBody(sale, sold, con);
            }


            if (sale.getPaymentType().equals("cash")) {

                saveInvoiceDetailsCash(sale, con);


            } else if (sale.getPaymentType().equals("cashbankdeposit")) {

                saveInvoiceDetailsCashDeposit(sale, con);



            } else if (sale.getPaymentType().equals("cashtransfer")) {

                saveInvoiceDetailsCashTransfer(sale, con);


            } else if (sale.getPaymentType().equals("cashcheque")) {

                saveInvoiceDetailsCashCheque(sale, con);


            } else if (sale.getPaymentType().equals("bankdeposit")) {

                saveInvoiceDetailsCashDeposit(sale, con);



            } else if (sale.getPaymentType().equals("transfer")) {

                saveInvoiceDetailsCashTransfer(sale, con);




            } else if (sale.getPaymentType().equals("cheque")) {

                saveInvoiceDetailsCashCheque(sale, con);




            } else if (sale.getPaymentType().equals("credit")) {

                this.saveInvoiceDetailsCredit(sale, con);

            } else if (sale.getPaymentType().equals("cashcredit")) {

                saveInvoiceDetailsCash(sale, con);




            } else if (sale.getPaymentType().equals("creditcashbankdeposit")) {

                saveInvoiceDetailsCashDeposit(sale, con);



            } else if (sale.getPaymentType().equals("creditcashtransfer")) {
                saveInvoiceDetailsCashTransfer(sale, con);


            } else if (sale.getPaymentType().equals("creditcashcheque")) {
                saveInvoiceDetailsCashCheque(sale, con);


            } else if (sale.getPaymentType().equals("creditbankdeposit")) {

                saveInvoiceDetailsCashDeposit(sale, con);



            } else if (sale.getPaymentType().equals("credittransfer")) {
                saveInvoiceDetailsCashTransfer(sale, con);



            } else if (sale.getPaymentType().equals("creditcheque")) {

                saveInvoiceDetailsCashCheque(sale, con);


            }

            if (sale.getCust().isNewold() == true) {
                saveNewCustomer(sale.getStaff(), sale.getCust(), con, maxnumber);
            }

            updateInvoiceId(sale.getInvoice(), con);
            DailyInvoiceTotal counter = getDailySalesCounter(sale.getStaff(), sale.getDate(), con);

            int counting = counter.getTotalInvoice();
            counting += 1;
            counter.setTotalInvoice(counting);
            updateDailySalesCounter(counting, sale.getStaff(), sale.getDate(), con);


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
        }
    }

    public void updateDailyBalanceInvoices(DailyBalance bal, Connection con, Date date) {

        PreparedStatement st = null;


        try {


            String sql = "update dailybalances set balance =?, receipts =?,banktransactions=?, c19=? , b2526 =?, plaza =? , invoices=?,expenses = ?, "
                    + "cashsales = ?, notyetpaid =?, paidtobank =?, discount =?, previousday=? where branch_id=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') ";

            st = con.prepareStatement(sql);



            st.setDouble(1, bal.getBalance());
            st.setDouble(2, bal.getReceipts());
            st.setDouble(3, bal.getBanktransactions());
            st.setDouble(4, bal.getCa19());
            st.setDouble(5, bal.getB2526());
            st.setDouble(6, bal.getPlaza());
            st.setDouble(7, bal.getInvoices());
            st.setDouble(8, bal.getExpenses());
            st.setDouble(9, bal.getCashsales());
            st.setDouble(10, bal.getNotyetpaid());
            st.setDouble(11, bal.getPaidtobank());
            st.setDouble(12, bal.getDiscount());
            st.setDouble(13, bal.getPreviousBal());
            st.setString(14, bal.getBranch());
            st.setDate(15, OdicUtil.convertJavaDateToSqlDate(date));

            st.executeUpdate();


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void updateDailyBalance2(DailyBalance bal) {

        PreparedStatement st = null;

        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            String sql = "update dailybalances set balance =?, receipts =?,banktransactions=?, c19=? , b2526 =?,  plaza =? , invoices=?,expenses = ?, "
                    + "cashsales = ?, notyetpaid =?, paidtobank =?, discount =?, previousday=? where branch_id=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d') ";

            st = con.prepareStatement(sql);



            st.setDouble(1, bal.getBalance());
            st.setDouble(2, bal.getReceipts());
            st.setDouble(3, bal.getBanktransactions());
            st.setDouble(4, bal.getCa19());
            st.setDouble(5, bal.getB2526());
            st.setDouble(6, bal.getPlaza());
            st.setDouble(7, bal.getInvoices());
            st.setDouble(8, bal.getExpenses());
            st.setDouble(9, bal.getCashsales());
            st.setDouble(10, bal.getNotyetpaid());
            st.setDouble(11, bal.getPaidtobank());
            st.setDouble(12, bal.getDiscount());
            st.setDouble(13, bal.getPreviousBal());
            st.setString(14, bal.getBranch());

            st.executeUpdate();

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void saveInvoice(Sale sale, Connection con) throws SaveInvoiceException {

        PreparedStatement pstmt = null;

        try {


            String sql = "insert into ourinvoice values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);

            pstmt.setDate(1, OdicUtil.convertJavaDateToSqlDate(sale.getDate()));
            pstmt.setString(2, sale.getInvoice().getInvoiceNo());
            pstmt.setString(3, sale.getStaff().getBranch());
            pstmt.setString(4, sale.getCust().getCustname());
            pstmt.setString(5, sale.getCust().getRegno());
            pstmt.setString(6, sale.getCust().getCusttype());
            pstmt.setString(7, sale.getCust().getRegno());
            pstmt.setDouble(8, sale.getTotal());
            pstmt.setDouble(9, sale.getTotalDiscount());
            pstmt.setString(10, sale.getCust().getCusttype());
            pstmt.setDouble(11, sale.getTotal());
            pstmt.setDouble(12, sale.getAmountPaid());
            pstmt.setDouble(13, sale.getBalance());
            pstmt.setString(14, "READY");
            pstmt.setString(15, sale.getStaff().getUsername());
            pstmt.setString(16, "Not Verified");

            pstmt.executeUpdate();



        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void postInvoice(Sale sale) throws SaveInvoiceException {

        PreparedStatement pstmt = null;
        Connection con = null;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "insert into ourinvoice values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);

            pstmt.setDate(1, OdicUtil.convertJavaDateToSqlDate(sale.getDate()));
            pstmt.setString(2, sale.getInvoiceNo());
            pstmt.setString(3, sale.getBranch());
            pstmt.setString(4, sale.getCustName());
            pstmt.setString(5, sale.getCustID());
            pstmt.setString(6, sale.getCustType());
            pstmt.setString(7, sale.getCustID());
            pstmt.setDouble(8, sale.getTotal());
            pstmt.setDouble(9, sale.getTotalDiscount());
            pstmt.setString(10, sale.getCustType());
            pstmt.setDouble(11, sale.getTotal());
            pstmt.setDouble(12, sale.getAmountPaid());
            pstmt.setDouble(13, sale.getBalance());
            pstmt.setString(14, "READY");
            pstmt.setString(15, sale.getStaffname());
            pstmt.setString(16, "Not Verified");


            pstmt.executeUpdate();



        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void setPosted(Sale sale) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "update ourinvoice2  set postedstatus ='posted' where invoiceid=?";
            st = con.prepareStatement(sql);

            st.setString(1, sale.getInvoiceNo());

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void setPostedSupply(String invoiceid) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            String sql = "update ourinvoice2  set supplied ='supplyposted' where invoiceid=?";
            st = con.prepareStatement(sql);

            st.setString(1, invoiceid);

            st.executeUpdate();

            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void insertSupply(SupplyInvoice supply) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "insert into  supplytable(invoiceid,date,branch, sendingbranch) values (?,?,?,?)";
            st = con.prepareStatement(sql);

            st.setString(1, supply.getInvoiceno());

            java.sql.Date date = new java.sql.Date(System.currentTimeMillis());

            st.setDate(2, date);
            st.setString(3, supply.getBranch());
            st.setString(4, supply.getSendingBranch());


            st.executeUpdate();


            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public Sale getSaleForAdjustment(String invoiceno) {


        Connection con = null;
        PreparedStatement st = null;
        Sale sale = null;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), invoiceid, branch,custname, custid, custtype, tagno,"
                    + " discount, type, grandtotal, amtpaid, balance, status,supplied, postedstatus, staff, suppliedfrom from ourinvoice2 "
                    + "where invoiceid = ?";

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);

            ResultSet rs = st.executeQuery();


            while (rs.next()) {
                sale = new Sale();
                sale.setDate(rs.getDate(1));
                sale.setInvoiceNo(rs.getString(2));
                sale.setBranch(rs.getString(3));
                sale.setCustName(rs.getString(4));
                sale.setCustID(rs.getString(5));
                sale.setCustType(rs.getString(6));
                sale.setTagno(rs.getString(7));
                sale.setTotalDiscount(rs.getDouble(8));
                sale.setPriceType(rs.getString(9));
                sale.setTotal(rs.getDouble(10));
                sale.setAmountPaid(rs.getDouble(11));
                sale.setBalance(rs.getDouble(12));
                sale.setStatus(rs.getString(13));
                sale.setSuppliedFrom(rs.getString(14));
                sale.setPostedStatus(rs.getString(15));
                sale.setStaffname(rs.getString(16));
                sale.setSupplyPoint(rs.getString(17));



            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


        return sale;

    }

    public Sale getSaleForAdjustment(String invoiceno, Connection con) {



        PreparedStatement st = null;
        Sale sale = null;

        try {



            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), invoiceid, branch,custname, custid, custtype, tagno,"
                    + " discount, type, grandtotal, amtpaid, balance, status,supplied, postedstatus, staff,suppliedfrom from ourinvoice2 "
                    + "where invoiceid = ?";

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);

            ResultSet rs = st.executeQuery();


            while (rs.next()) {
                sale = new Sale();
                sale.setDate(rs.getDate(1));
                sale.setInvoiceNo(rs.getString(2));
                sale.setBranch(rs.getString(3));
                sale.setCustName(rs.getString(4));
                sale.setCustID(rs.getString(5));
                sale.setCustType(rs.getString(6));
                sale.setTagno(rs.getString(7));
                sale.setTotalDiscount(rs.getDouble(8));
                sale.setPriceType(rs.getString(9));
                sale.setTotal(rs.getDouble(10));
                sale.setAmountPaid(rs.getDouble(11));
                sale.setBalance(rs.getDouble(12));
                sale.setStatus(rs.getString(13));
                sale.setSuppliedFrom(rs.getString(14));
                sale.setPostedStatus(rs.getString(15));
                sale.setStaffname(rs.getString(16));
                sale.setSupplyPoint(rs.getString(17));


            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


        return sale;

    }

    public void saveInvoice2(Sale sale, Connection con) throws SaveInvoiceException {

        PreparedStatement pstmt = null;

        try {


            String sql = "insert into ourinvoice2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);




            pstmt.setDate(1, OdicUtil.convertJavaDateToSqlDate(sale.getDate()));
            pstmt.setString(2, sale.getInvoice().getInvoiceNo());
            pstmt.setString(3, sale.getStaff().getBranch());
            pstmt.setString(4, sale.getCust().getCustname());
            pstmt.setString(5, sale.getCust().getRegno());
            pstmt.setString(6, sale.getCust().getCusttype());
            pstmt.setString(7, sale.getCust().getRegno());
            pstmt.setDouble(8, sale.getTotalQty());
            pstmt.setDouble(9, sale.getTotalDiscount());
            pstmt.setString(10, sale.getCust().getCusttype());
            pstmt.setDouble(11, sale.getTotal());
            pstmt.setDouble(12, sale.getAmountPaid());
            pstmt.setDouble(13, sale.getBalance());
            pstmt.setString(14, "READY");
            pstmt.setString(15, sale.getStaff().getUsername());
            pstmt.setString(16, "Not Verified");
            pstmt.setString(17, sale.getStatus());
            pstmt.setString(18, sale.getSupply());
            pstmt.setString(19, sale.getPostedStatus());
            pstmt.setString(20, sale.getSuppliedFrom());

            pstmt.executeUpdate();



        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceBody(Sale sale, OdicProduct sold, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        try {

            String sql = "insert into invoicebody2 (branch, custid, invoiceid,itemid,price,qty,pricetype,totaldiscount,totalshadow,total) "
                    + "values (?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getStaff().getBranch());
            pstmt.setString(2, sale.getCust().getRegno());
            pstmt.setString(3, sale.getInvoice().getInvoiceNo());
            pstmt.setString(4, sold.getItemId());


            pstmt.setDouble(5, sold.getSellingPrice());


            if (sold.getItemId().contains("OHB- 11KV ANGLE")) {
                pstmt.setInt(6, sold.getQuantity() * 3);
            } else if (sold.getItemId().contains("OHB- 11KV D-FUSE")) {
                pstmt.setInt(6, sold.getQuantity() * 3);
            } else if (sold.getItemId().contains("OHB- 33KV D-FUSE")) {
                pstmt.setInt(6, sold.getQuantity() * 3);
            } else if (sold.getItemId().contains("OHB- 11KV GANG")) {
                pstmt.setInt(6, sold.getQuantity() * 3);
            } else if (sold.getItemId().contains("OHB- 33KV GANG ")) {
                pstmt.setInt(6, sold.getQuantity() * 3);
            } else {

                pstmt.setInt(6, sold.getQuantity());
            }



            pstmt.setString(7, sold.getPriceType());
            pstmt.setDouble(8, sold.getTotalProductDiscount());
            pstmt.setDouble(9, sold.getTotalShadowPrice());
            pstmt.setDouble(10, sold.getTotal());



            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetails(Sale sale, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        try {

            String sql = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype) values(?,?,?,?,?) ";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());



            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetailsCash(Sale sale, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        try {

            String sqlcash = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype, paymenttype) values(?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sqlcash);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());
            pstmt.setString(6, sale.getPaymentType());



            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetailsCashDeposit(Sale sale, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        try {

            String sql = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype,"
                    + "paymenttype, cashamount, cashinbank, paymentbank, paymentdate,tellerno) values(?,?,?,?,?,?,?,?,?,?,?) ";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());
            pstmt.setString(6, sale.getPaymentType());
            pstmt.setDouble(7, sale.getCashAmount());
            pstmt.setDouble(8, sale.getCashInbank());
            pstmt.setString(9, sale.getPaymentBank());
            pstmt.setDate(10, sale.getPaymentDate());
            pstmt.setString(11, sale.getTellerNo());




            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetailsCashTransfer(Sale sale, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        try {

            String sql = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype,"
                    + "paymenttype, cashamount, cashinbank, paymentbank, paymentdate) values(?,?,?,?,?, ?,?,?,?,?) ";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());
            pstmt.setString(6, sale.getPaymentType());
            pstmt.setDouble(7, sale.getCashAmount());
            pstmt.setDouble(8, sale.getCashInbank());
            pstmt.setString(9, sale.getPaymentBank());
            pstmt.setDate(10, sale.getPaymentDate());



            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetailsCashCheque(Sale sale, Connection con) throws SaveInvoiceException {

        PreparedStatement pstmt = null;
        try {

            String sql = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype,"
                    + "paymenttype, cashamount, cashinbank, chequeno, bankofcheque, dateofcheque) values(?,?,?,?,?,?,?,?,?,?,?) ";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());
            pstmt.setString(6, sale.getPaymentType());
            pstmt.setDouble(7, sale.getCashAmount());
            pstmt.setDouble(8, sale.getCashInbank());
            pstmt.setString(9, sale.getChequeNo());
            pstmt.setString(10, sale.getBankOfCheque());
            pstmt.setDate(11, sale.getDateonCheque());

            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveInvoiceDetailsCredit(Sale sale, Connection con) throws SaveInvoiceException {

        PreparedStatement pstmt = null;
        try {

            String sql = "insert into ourinvoiceotherdetails(invoiceid,branch,custid,totalshadow,invoicetype,"
                    + "paymenttype) values(?,?,?,?,?,?) ";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sale.getInvoice().getInvoiceNo());
            pstmt.setString(2, sale.getStaff().getBranch());
            pstmt.setString(3, sale.getCust().getRegno());
            pstmt.setDouble(4, sale.getTotalShadow());
            pstmt.setString(5, sale.getInvoiceType());
            pstmt.setString(6, sale.getPaymentType());


            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveNewCustomer(StaffStatus staff, Customer cust, Connection con, int maxnumber) throws SaveInvoiceException {



        PreparedStatement pstmt = null;
        try {

            String sql = "insert into customers(branch,regdate,regno,surname,firstname,custtype,address, state,  day, month, gender, phoneno, email, country, creditlimit) values"
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cust.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(OdicUtil.generateDate().getTime()));
            pstmt.setString(3, cust.getRegno());
            pstmt.setString(4, cust.getSurname());
            pstmt.setString(5, cust.getFirstname());
            pstmt.setString(6, cust.getCusttype());
            pstmt.setString(7, cust.getAddress());
            pstmt.setString(8, cust.getState());
            pstmt.setString(9, cust.getDay());
            pstmt.setString(10, cust.getMonth());
            pstmt.setString(11, cust.getGender());
            pstmt.setString(12, cust.getPhoneno());
            pstmt.setString(13, cust.getEmail());
            pstmt.setString(14, "Nigeria");
            pstmt.setInt(15, cust.getCreditLimit());


            pstmt.executeUpdate();

            if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                updateCustomerNo2(maxnumber, "CUN", con);
            } else if (staff.getBranch().equals("PLAZA")) {
                updateCustomerNo2(maxnumber, "PLZC", con);
            } else if (staff.getBranch().equals("CA19")) {
                updateCustomerNo2(maxnumber, "CA19C", con);
            } else if (staff.getBranch().equals("B/25 No 26")) {
                updateCustomerNo2(maxnumber, "B25C", con);
            }


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveNewCustomer(Customer cust) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "insert into customers(branch,regdate,regno,surname,firstname,custtype,address, state,  day, month, gender, phoneno, email, country, creditlimit) values"
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cust.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(OdicUtil.generateDate().getTime()));
            pstmt.setString(3, cust.getRegno());
            pstmt.setString(4, cust.getSurname());
            pstmt.setString(5, cust.getFirstname());
            pstmt.setString(6, cust.getCusttype());
            pstmt.setString(7, cust.getAddress());
            pstmt.setString(8, cust.getState());
            pstmt.setString(9, cust.getDay());
            pstmt.setString(10, cust.getMonth());
            pstmt.setString(11, cust.getGender());
            pstmt.setString(12, cust.getPhoneno());
            pstmt.setString(13, cust.getEmail());
            pstmt.setString(14, "Nigeria");
            pstmt.setInt(15, cust.getCreditLimit());


            pstmt.executeUpdate();

            con.commit();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveNewCustomer2(Customer cust) throws SaveInvoiceException {


        PreparedStatement pstmt = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);
            String sql = "insert into customers(branch,regdate,regno,surname,firstname,custtype,address, state,  day, month, gender, phoneno, email, country, creditlimit, customerbalance) values"
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cust.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(OdicUtil.generateDate().getTime()));
            pstmt.setString(3, cust.getRegno());
            pstmt.setString(4, cust.getSurname());
            pstmt.setString(5, cust.getFirstname());
            pstmt.setString(6, cust.getCusttype());
            pstmt.setString(7, cust.getAddress());
            pstmt.setString(8, cust.getState());
            pstmt.setString(9, cust.getDay());
            pstmt.setString(10, cust.getMonth());
            pstmt.setString(11, cust.getGender());
            pstmt.setString(12, cust.getPhoneno());
            pstmt.setString(13, cust.getEmail());
            pstmt.setString(14, "Nigeria");
            pstmt.setInt(15, cust.getCreditLimit());
            pstmt.setDouble(16, cust.getCustomerBalance());


            pstmt.executeUpdate();

            con.commit();
        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void saveNewCustomer3(Customer cust, Connection con) throws SaveInvoiceException {


        PreparedStatement pstmt = null;


        try {

            String sql = "insert into customers(branch,regdate,regno,surname,firstname,custtype,address, state,  day, month, gender, phoneno, email, country, creditlimit, customerbalance, customerbal2014, customerbal2013) values"
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cust.getBranch());
            pstmt.setDate(2, OdicUtil.convertJavaDateToSqlDate(OdicUtil.generateDate().getTime()));
            pstmt.setString(3, cust.getRegno());
            pstmt.setString(4, cust.getSurname());
            pstmt.setString(5, cust.getFirstname());
            pstmt.setString(6, cust.getCusttype());
            pstmt.setString(7, cust.getAddress());
            pstmt.setString(8, cust.getState());
            pstmt.setString(9, cust.getDay());
            pstmt.setString(10, cust.getMonth());
            pstmt.setString(11, cust.getGender());
            pstmt.setString(12, cust.getPhoneno());
            pstmt.setString(13, cust.getEmail());
            pstmt.setString(14, "Nigeria");
            pstmt.setInt(15, cust.getCreditLimit());
            pstmt.setDouble(16, cust.getCustomerBalance());
            pstmt.setDouble(17, cust.getCustomerbal2014());
            pstmt.setDouble(18, cust.getCustomerbal2013());

            pstmt.executeUpdate();


        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void updateCustomerBal(CustomerCredit cust) {


        PreparedStatement pstmt = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "update customers set customerbalance=?, customerbal2014 = ?,  customerbal2013=? where regno = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setDouble(1, cust.getCustomerBalance());
            pstmt.setDouble(2, cust.getCustomerbal2014());
            pstmt.setDouble(3, 0.0);
            pstmt.setString(4, cust.getRegno());

            pstmt.executeUpdate();

            con.commit();
        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {
            try {
                pstmt.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public CustomerCredit getCreditLimit(String custId) {


        CustomerCredit crdt = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT creditlimit FROM customers where regno=?";

            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, custId);

            ResultSet results = pstmt.executeQuery();


            Integer creditlimit = 0;

            while (results.next()) {
                crdt = new CustomerCredit();
                creditlimit = results.getInt(1);

                if (creditlimit == null) {
                    crdt.setCreditLimit(0);
                } else {
                    crdt.setCreditLimit(creditlimit);
                }

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return crdt;

    }

    public CustomerCredit getCreditBalance(String custId) {


        CustomerCredit crdt = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT customerbalance FROM customers where regno=?";

            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, custId);

            ResultSet results = pstmt.executeQuery();


            double custBal = 0;

            while (results.next()) {
                crdt = new CustomerCredit();
                custBal = results.getInt(1);


                crdt.setCustomerBalance(custBal);
            }




        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return crdt;

    }

    public ArrayList<CustomerCredit> getCreditBalances() {



        Connection con = null;

        ArrayList<CustomerCredit> crdt = new ArrayList<CustomerCredit>();

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT surname, firstname, regno, customerbalance, creditlimit, customerbal2014,customerbal2013 FROM customers";

            PreparedStatement pstmt = con.prepareStatement(sql);


            ResultSet rs = pstmt.executeQuery();



            CustomerCredit crd = null;
            while (rs.next()) {

                crd = new CustomerCredit();

                crd.setSurname(rs.getString(1));
                crd.setFirstname(rs.getString(2));
                crd.setRegno(rs.getString(3));
                crd.setCustomerBalance(rs.getDouble(4));
                crd.setCreditLimit(rs.getInt(5));
                crd.setCustomerbal2014(rs.getDouble(6));
                crd.setCustomerbal2013(rs.getDouble(7));



                crdt.add(crd);
            }




        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return crdt;

    }

    public void updateInvoiceId(InvoiceId invoiceid, Connection con) {



        PreparedStatement st = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "update invoicegen set maxnumber=? where branch_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, invoiceid.getMaxnumber());
            st.setString(2, invoiceid.getBranchId());

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void updateReceiptNo(ReceiptId receiptId, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update invoicegen set maxnumber=? where branch_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, receiptId.getMaxnumber());
            st.setString(2, "HOSR");

            st.executeUpdate();

            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void updateCashNo(CashId cashId, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update invoicegen set maxnumber=? where branch_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, cashId.getMaxnumber());
            st.setString(2, "HOSC");

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public ArrayList<Sale> getTodaySales(String branch) {


        Connection con = null;
        PreparedStatement st = null;

        ArrayList<Sale> sales = new ArrayList<Sale>();
        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            Date today = new Date();
            Calendar cal = new GregorianCalendar();
            cal.setTime(today);

            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");



            java.sql.Date lowerLimit = OdicUtil.convertJavaDateToSqlDate(formatter.parse(formatter.format(today)));



            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), invoiceid, branch,custname, custid, custtype, tagno,"
                    + " discount, type, grandtotal, amtpaid, balance, status,supplied, postedstatus, staff from ourinvoice2 "
                    + "where DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d') and branch = ?";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setString(1, branch);



            ResultSet rs = st.executeQuery();

            Sale sale = null;

            while (rs.next()) {
                sale = new Sale();
                sale.setDate(rs.getDate(1));
                sale.setInvoiceNo(rs.getString(2));
                sale.setBranch(rs.getString(3));
                sale.setCustName(rs.getString(4));
                sale.setCustID(rs.getString(5));
                sale.setCustType(rs.getString(6));
                sale.setTagno(rs.getString(7));
                sale.setTotalDiscount(rs.getDouble(8));
                sale.setPriceType(rs.getString(9));
                sale.setTotal(rs.getDouble(10));
                sale.setAmountPaid(rs.getDouble(11));
                sale.setBalance(rs.getDouble(12));
                sale.setStatus(rs.getString(13));
                sale.setSupply(rs.getString(14));
                sale.setPostedStatus(rs.getString(15));
                sale.setStaffname(rs.getString(16));
                sales.add(sale);


            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



        return sales;
    }

    public ArrayList<Sale> getTodaySales(String branch, Date date) {


        Connection con = null;
        PreparedStatement st = null;

        ArrayList<Sale> sales = new ArrayList<Sale>();
        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);




            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), invoiceid, branch,custname, custid, custtype, tagno,"
                    + " discount, type, grandtotal, amtpaid, balance, status,supplied, postedstatus, staff from ourinvoice2 "
                    + "where DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') and branch = ?";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));
            st.setString(2, branch);



            ResultSet rs = st.executeQuery();

            Sale sale = null;

            while (rs.next()) {
                sale = new Sale();
                sale.setDate(rs.getDate(1));
                sale.setInvoiceNo(rs.getString(2));
                sale.setBranch(rs.getString(3));
                sale.setCustName(rs.getString(4));
                sale.setCustID(rs.getString(5));
                sale.setCustType(rs.getString(6));
                sale.setTagno(rs.getString(7));
                sale.setTotalDiscount(rs.getDouble(8));
                sale.setPriceType(rs.getString(9));
                sale.setTotal(rs.getDouble(10));
                sale.setAmountPaid(rs.getDouble(11));
                sale.setBalance(rs.getDouble(12));
                sale.setStatus(rs.getString(13));
                sale.setSupply(rs.getString(14));
                sale.setPostedStatus(rs.getString(15));
                sale.setStaffname(rs.getString(16));
                sales.add(sale);


            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



        return sales;
    }

    public ArrayList<Expenses> getTodaysFundExpenses(Date date) {

        //fundexpenses(amount,expense_date


        Connection con = null;
        PreparedStatement st = null;

        ArrayList<Expenses> exp = new ArrayList<Expenses>();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "SELECT  DATE_FORMAT(expense_date,'%Y-%m-%d'), amount  from fundexpenses "
                    + "where DATE_FORMAT(expense_date,'%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));
            ResultSet rs = st.executeQuery();

            Expenses expense = null;
            //bankingbranches(branch,amount, tellerno,bank,date, type       


            while (rs.next()) {
                expense = new Expenses();
                expense.setDate(rs.getDate(1));
                expense.setAmount(rs.getInt(2));


                exp.add(expense);



            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



        return exp;

    }

    public ArrayList<BankTransaction> getTodaysBankTransaction(Date date) {

        Connection con = null;
        PreparedStatement st = null;

        ArrayList<BankTransaction> bankTransactions = new ArrayList<BankTransaction>();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), amount,tellerno,branch,bank from bankingbranches "
                    + "where DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));
            ResultSet rs = st.executeQuery();

            BankTransaction transaction = null;
            //bankingbranches(branch,amount, tellerno,bank,date, type       


            while (rs.next()) {
                transaction = new BankTransaction();
                transaction.setDate(rs.getDate(1));
                transaction.setAmountpaid(rs.getInt(2));
                transaction.setTellerno(rs.getString(3));
                transaction.setBranch(rs.getString(4));
                transaction.setBank(rs.getString(5));

                bankTransactions.add(transaction);

            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



        return bankTransactions;



    }

    public ArrayList<CashShop> getTodaysCashShop(Date date) {

        //cashno,holder,branch,amount,date

        Connection con = null;
        PreparedStatement st = null;

        ArrayList<CashShop> cashShops = new ArrayList<CashShop>();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);




            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), cashno,holder,branch,amount from cashshop "
                    + "where DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));




            ResultSet rs = st.executeQuery();

            CashShop cashShop = null;

            while (rs.next()) {
                cashShop = new CashShop();
                cashShop.setDateCash(rs.getDate(1));
                cashShop.setCashNo(rs.getString(2));
                cashShop.setHolder(rs.getString(3));
                cashShop.setBranch(rs.getString(4));
                cashShop.setAmount(rs.getInt(5));

                cashShops.add(cashShop);

            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



        return cashShops;

    }

    public ArrayList<Receipt> getTodaysReceipts(Date date) {

        //receiptsno,custid,custname,amount,date


        Connection con = null;
        PreparedStatement st = null;

        ArrayList<Receipt> receipts = new ArrayList<Receipt>();
        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);




            String sql = "SELECT  DATE_FORMAT(date,'%Y-%m-%d'), receiptsno,custid,custname,amount from receipts "
                    + "where DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";

            st = con.prepareStatement(sql);
            //st.setDate(1, lowerLimit);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));




            ResultSet rs = st.executeQuery();

            Receipt receipt = null;

            while (rs.next()) {
                receipt = new Receipt();
                receipt.setDate(rs.getDate(1));
                receipt.setReceiptNo(rs.getString(2));
                receipt.setCustID(rs.getString(3));
                receipt.setCustName(rs.getString(4));
                receipt.setAmount(rs.getInt(5));

                receipts.add(receipt);

            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return receipts;

    }

    public InvoiceDetails getTodaysInvoiceDetails(String invoiceId) {


        Connection con = null;
        PreparedStatement st = null;

        InvoiceDetails details = null;
        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);


            String sql = "select invoiceid, branch,custid, totalshadow, invoicetype,paymenttype ,cashamount ,cashinbank,"
                    + "paymentbank,paymentdate ,tellerno ,chequeno ,bankofcheque ,dateofcheque "
                    + "from ourinvoiceotherdetails where invoiceId =?";

            st = con.prepareStatement(sql);

            st.setString(1, invoiceId);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                details = new InvoiceDetails();
                details.setInvoiceid(rs.getString(1));
                details.setBranch(rs.getString(2));
                details.setCustid(rs.getString(3));
                details.setTotalShadow(rs.getDouble(4));
                details.setInvoiceType(rs.getString(5));
                details.setPaymentType(rs.getString(6));
                details.setCashAmount(rs.getDouble(7));
                details.setCashInBank(rs.getDouble(8));
                details.setPaymentBank(rs.getString(9));
                details.setPaymentDate(rs.getDate(10));
                details.setTellerNo(rs.getString(11));
                details.setChequeNo(rs.getString(12));
                details.setBankofCheque(rs.getString(13));
                details.setDateofCheque(rs.getDate(14));


            }

            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return details;
    }

    public ArrayList<Sale> getTodaySales(Date date, Date date2) {

        return null;
    }

    public void setInvoiceCompleted(String invoiceno) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "update ourinvoice2  set status ='completed' where invoiceid=?";
            st = con.prepareStatement(sql);

            st.setString(1, invoiceno);

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    /*public void upSaleForAdjustment(Sale sale){
    
    PreparedStatement st = null;
    Connection con = null;
    
    try {
    SalesConnection salesCon = new SalesConnection();
    con = salesCon.getCon();
    
    
    String sql = "update ourinvoice2 set  from invoicebody2 where invoiceid = ?";
    
    st = con.prepareStatement(sql);
    st.setString(1, invoiceno);       
    
    
    st.executeUpdate();
    
    
    
    } catch (Exception e) {
    
    Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
    try {
    con.rollback();
    
    
    } catch (SQLException ex) {
    Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
    }
    } finally {
    
    try {
    st.close();
    con.close();
    
    } catch (SQLException ex) {
    Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    }
    
    }
     */
    public ArrayList<OdicProduct> getSaleInvoiceBody(String invoiceno) {

        Connection con = null;
        PreparedStatement st = null;
        ArrayList<OdicProduct> products = new ArrayList<OdicProduct>();


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT  branch,custid, invoiceid,itemid, price, qty, pricetype,"
                    + " totaldiscount,totalshadow, total from invoicebody2 where invoiceid = ?";

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);

            ResultSet rs = st.executeQuery();

            OdicProduct prod = null;
            while (rs.next()) {

                prod = new OdicProduct();
                prod.setBranch(rs.getString(1));
                prod.setCustID(rs.getString(2));
                prod.setInvoiceno(rs.getString(3));
                prod.setItemId(rs.getString(4));
                prod.setSellingPrice(rs.getDouble(5));
                prod.setQuantity(rs.getInt(6));
                prod.setPriceType(rs.getString(7));
                prod.setTotalProductDiscount(rs.getDouble(8));
                prod.setTotalShadowPrice(rs.getDouble(9));
                prod.setTotal(rs.getDouble(10));

                products.add(prod);

            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return products;

    }

    public void deleteInvoiceBody(String invoiceno) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "delete from invoicebody2 where invoiceid = ?";

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);


            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void deleteInvoiceBody(String invoiceno, Connection con) {


        PreparedStatement st = null;


        try {



            String sql = "delete from invoicebody2 where invoiceid = ?";

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);


            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void deleteSale(String invoiceno) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "delete from ourinvoice2 where invoiceid = ?";
            //delete 

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);





            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void deleteSale(String invoiceno, Connection con) {


        PreparedStatement st = null;


        try {



            String sql = "delete from ourinvoice2 where invoiceid = ?";
            //delete 

            st = con.prepareStatement(sql);
            st.setString(1, invoiceno);





            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void deleteTransaction(String transactionNo, String transactionType) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            if (transactionType.equals("receipts")) {

                String sqlreceipts = "delete from receipts where receiptsno = ?";
                st = con.prepareStatement(sqlreceipts);
                st.setString(1, transactionNo);

            } else if (transactionType.equals("cash")) {
                String sqlcash = "delete from cashshop where cashno = ?";
                st = con.prepareStatement(sqlcash);
                st.setString(1, transactionNo);
            } else if (transactionType.equals("banktransaction")) {
                String sqlcash = "delete from bankingbranches where id = ?";
                st = con.prepareStatement(sqlcash);
                st.setInt(1, Integer.parseInt(transactionNo));
            } else if (transactionType.equals("fundexpenses")) {

                String sqlcash = "delete from fundexpenses where id = ?";
                st = con.prepareStatement(sqlcash);
                st.setInt(1, Integer.parseInt(transactionNo));

            }




            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void insertVoidedInvoiceNo(String invoiceno, String branch) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date today = new Date();




            String sql = "insert into voidedinvoicenosales(branch,invoiceid, dateinvoice) values(?,?,?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setString(2, invoiceno);
            st.setDate(3, OdicUtil.convertJavaDateToSqlDate(formatter.parse(formatter.format(today))));



            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void insertVoidedInvoiceNo(String invoiceno, String branch, Connection con, String staffname) {


        PreparedStatement st = null;


        try {


            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date today = new Date();




            String sql = "insert into voidedinvoicenosales(branch,invoiceid, dateinvoice, staff) values(?,?,?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setString(2, invoiceno);
            st.setDate(3, OdicUtil.convertJavaDateToSqlDate(formatter.parse(formatter.format(today))));
            st.setString(4, staffname);


            st.executeUpdate();

            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void insertBankTransaction(BankTransaction transaction) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "insert into bankingbranches(branch,amount, tellerno,bank,date, type) values(?,?,?,?,?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, transaction.getBranch());
            st.setString(2, transaction.getAmount());
            st.setString(3, transaction.getTellerno());
            st.setString(4, transaction.getBank());

            st.setDate(5, OdicUtil.convertJavaDateToSqlDate(transaction.getDate()));
            st.setString(6, "cash");


            st.executeUpdate();


            con.commit();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public ArrayList<BankTransaction> getAllTodayTransaction(Date date) {

        Connection con = null;
        PreparedStatement st = null;
        ArrayList<BankTransaction> transactions = new ArrayList<BankTransaction>();


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "SELECT  branch,amount, tellerno,bank,date, postedstatus, id from bankingbranches where DATE_FORMAT(date,'%Y-%m-%d')= DATE_FORMAT(?,'%Y-%m-%d')";

            st = con.prepareStatement(sql);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet rs = st.executeQuery();

            BankTransaction transaction = null;

            while (rs.next()) {
                transaction = new BankTransaction();
                transaction.setBranch(rs.getString(1));
                transaction.setAmountpaid(rs.getInt(2));
                transaction.setTellerno(rs.getString(3));
                transaction.setBank(rs.getString(4));
                transaction.setDate(rs.getDate(5));
                transaction.setPostedStatus(rs.getString(6));
                transaction.setId(rs.getInt(7));
                transactions.add(transaction);

            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {

                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return transactions;

    }

    public void insertReceipts(Receipt receipt) {



        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "insert into receipts(receiptsno,custid,custname,amount,date) values(?,?,?, ?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, receipt.getReceiptsId().getReceiptNo());
            st.setString(2, receipt.getCustID());
            st.setString(3, receipt.getCustName());
            st.setInt(4, receipt.getAmount());
            st.setDate(5, receipt.getDate());


            st.executeUpdate();

            updateReceiptNo(receipt.getReceiptsId(), con);



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public ArrayList<Receipt> getAllTodayReceipts(java.sql.Date date) {

        Connection con = null;
        PreparedStatement st = null;
        ArrayList<Receipt> receipts = new ArrayList<Receipt>();


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT receiptsno,custid,custname,amount,date, postedstatus from receipts where  "
                    + "DATE_FORMAT(date,'%Y-%m-%d')= DATE_FORMAT(?,'%Y-%m-%d')";

            st = con.prepareStatement(sql);
            st.setDate(1, date);


            ResultSet rs = st.executeQuery();

            Receipt receipt = null;

            while (rs.next()) {
                receipt = new Receipt();
                receipt.setReceiptNo(rs.getString(1));
                receipt.setCustID(rs.getString(2));
                receipt.setCustName(rs.getString(3));
                receipt.setAmount(rs.getInt(4));
                receipt.setDate(rs.getDate(5));
                receipt.setPostedStatus(rs.getString(6));
                receipts.add(receipt);
            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {

                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return receipts;

    }

    public void insertCash(CashShop cash, String branch) {



        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);




            String sql = "insert into cashshop(cashno,holder,branch,amount,date) values(?,?,?, ?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, cash.getCashId().getCashNo());
            st.setString(2, cash.getHolder());
            st.setString(3, cash.getBranch());
            st.setInt(4, cash.getAmount());
            st.setDate(5, cash.getDateCash());


            st.executeUpdate();


            this.updateCashNo(cash.getCashId(), con);



            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public ArrayList<CashShop> getAllCash(java.sql.Date date) {

        Connection con = null;
        PreparedStatement st = null;
        ArrayList<CashShop> allcash = new ArrayList<CashShop>();


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT cashno,holder,branch,amount,date, postedstatus from cashshop where  "
                    + "DATE_FORMAT(date,'%Y-%m-%d')= DATE_FORMAT(?,'%Y-%m-%d')";

            st = con.prepareStatement(sql);
            st.setDate(1, date);


            ResultSet rs = st.executeQuery();

            CashShop cash = null;

            while (rs.next()) {
                cash = new CashShop();
                cash.setCashNo(rs.getString(1));
                cash.setHolder(rs.getString(2));
                cash.setBranch(rs.getString(3));
                cash.setAmount(rs.getInt(4));
                cash.setDateCash(rs.getDate(5));
                cash.setPostedStatus(rs.getString(6));
                allcash.add(cash);

            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {

                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return allcash;

    }

    public ArrayList<Expenses> getExpenses(Date date) {


        Expenses expense = null;
        Connection con = null;
        ArrayList<Expenses> expenses = new ArrayList<Expenses>();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "SELECT expense_date, amount, postedstatus, id FROM "
                    + "fundexpenses where DATE_FORMAT(expense_date,'%Y-%m-%d')= DATE_FORMAT(?,'%Y-%m-%d')";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));


            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                expense = new Expenses();
                expense.setDate(rs.getDate(1));
                expense.setAmount(rs.getInt(2));
                expense.setPostedStatus(rs.getString(3));
                expense.setId(rs.getInt(4));

                expenses.add(expense);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return expenses;
    }

    public ArrayList<Expenses> getExpenses() {


        Expenses expense = null;
        Connection con = null;
        ArrayList<Expenses> expenses = new ArrayList<Expenses>();

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "SELECT expense_date, amount,purpose,amountpaid, balance, type FROM hoqexpenses where DATE_FORMAT(expense_date,'%Y-%m-%d')= DATE_FORMAT(CURDATE(),'%Y-%m-%d')";
            PreparedStatement pstmt = con.prepareStatement(sql);


            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                expense = new Expenses();
                expense.setDate(rs.getDate(1));
                expense.setAmount(rs.getInt(2));
                expense.setPurpose(rs.getString(3));
                expense.setAmountspent(rs.getString(4));
                expense.setBalance(rs.getInt(5));
                expense.setExpenseType(rs.getString(6));

                expenses.add(expense);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return expenses;
    }

    public int getExpensesBal() {

        int bal = 0;
        Connection con = null;


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "SELECT balance  from  hoqexpensesbal where id = 12";
            PreparedStatement pstmt = con.prepareStatement(sql);


            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                bal = rs.getInt(1);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return bal;
    }

    public void insertExpenses(Expenses expenses) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "insert into hoqexpenses(expense_date, amount,purpose,amountpaid, balance, type) values(?,?,?,?,?, ?)";

            st = con.prepareStatement(sql);
            st.setDate(1, expenses.getDate());
            st.setInt(2, expenses.getAmount());
            st.setString(3, expenses.getPurpose());
            st.setString(4, expenses.getAmountspent());
            st.setInt(5, expenses.getBalance());
            st.setString(6, expenses.getExpenseType());


            st.executeUpdate();
            con.commit();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }



    }

    public void insertExpensesBalance(int bal, Expenses expense) {


        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "update hoqexpensesbal set balance=?, expense_date=? where id =1";

            st = con.prepareStatement(sql);
            st.setInt(1, bal);
            st.setDate(2, expense.getDate());

            st.executeUpdate();
            con.commit();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public DailyBalance checkDailyBalance(String branch) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d') from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d')";



            st = con.prepareStatement(sql);
            st.setString(1, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;
    }

    public void insertDailyBalance(DailyBalance bal) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);




            String sql = "insert into dailybalances (branch_id, balance, date,"
                    + "receipts,banktransactions, c19 , b2526, plaza , invoices,expenses, "
                    + "cashsales, notyetpaid, paidtobank, discount, previousday) "
                    + "values (?,?,?, ?,?,?, ?,?,?, ?,?, ?,?,?,?)";

            st = con.prepareStatement(sql);
            st.setString(1, bal.getBranch());
            st.setDouble(2, bal.getBalance());
            st.setDate(3, bal.getDate());
            st.setDouble(4, bal.getReceipts());
            st.setDouble(5, bal.getBanktransactions());
            st.setDouble(6, bal.getCa19());
            st.setDouble(7, bal.getB2526());
            st.setDouble(8, bal.getPlaza());
            st.setDouble(9, bal.getInvoices());
            st.setDouble(10, bal.getExpenses());
            st.setDouble(11, bal.getCashsales());
            st.setDouble(12, bal.getNotyetpaid());
            st.setDouble(13, bal.getPaidtobank());
            st.setDouble(14, bal.getDiscount());
            st.setDouble(15, bal.getPreviousBal());

            st.executeUpdate();
            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
    
    public void insertRunReport(String branch, Date date){
        
        
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "insert into reportstatus (branch,date) values (?,?)";

            st = con.prepareStatement(sql);
            st.setString(1,branch);           
            st.setDate(2,OdicUtil.convertJavaDateToSqlDate(date));
           

            st.executeUpdate();
            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        
    }

    public void updateDailyBalance(DailyBalance bal) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "update dailybalances set balance = ? where branch_id=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') ";

            st = con.prepareStatement(sql);
            st.setDouble(1, bal.getBalance());
            st.setString(2, bal.getBranch());
            st.setDate(3, bal.getDate());

            st.executeUpdate();
            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }
    
   
    public ArrayList<ReportStatus> selectRunReport(String branch){
        
        
        PreparedStatement st = null;
        Connection con = null;
        ArrayList<ReportStatus> reports = new ArrayList<ReportStatus>();

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "select date from reportstatus where branch =? order by date";

            st = con.prepareStatement(sql);
            st.setString(1,branch);           
            
          

           ResultSet rs = st.executeQuery();
           ReportStatus status = null;

            while (rs.next()) {
                status = new ReportStatus();
                status.setDate(rs.getDate(1));
                
                reports.add(status);
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
          
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        
        return reports;
        
    }

    
    public ArrayList<ReportStatus> selectRunReportFalse(String branch){
        
        
        PreparedStatement st = null;
        Connection con = null;
        ArrayList<ReportStatus> reports = new ArrayList<ReportStatus>();

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "select date from reportstatus where branch =? and postedstatus =? order by date";

            st = con.prepareStatement(sql);
            st.setString(1,branch);           
            st.setString(2, "false");          

          

           ResultSet rs = st.executeQuery();
           ReportStatus status = null;

            while (rs.next()) {
                status = new ReportStatus();
                status.setDate(rs.getDate(1));
                
                reports.add(status);
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
          
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        
        return reports;
        
    }
    
    
     public void updateDailyBalanceReports(DailyBalance bal, Connection con) {

        PreparedStatement st = null;
        

        try {
           



            String sql = "update dailybalances set balance = ? where branch_id=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') ";

            st = con.prepareStatement(sql);
            st.setDouble(1, bal.getBalance());
            st.setString(2, bal.getBranch());
            st.setDate(3, bal.getDate());

            st.executeUpdate();
           

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
               

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }
    

 
     public void updateDailyReportStatus(ReportStatus status, String Branch, Connection con) {

        PreparedStatement st = null;
       
        try {
           

 

            String sql = "update reportstatus set postedstatus = ? where branch=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') ";

            st = con.prepareStatement(sql);


            st.setString(1,"true");
            st.setString(2, Branch);           
            st.setDate(3, OdicUtil.convertJavaDateToSqlDate(status.getDate()));

            st.executeUpdate();
            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }
 

    public void updateDailyBalanceInvoices(DailyBalance bal) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);



            String sql = "update dailybalances set balance = ?, invoices=? where where branch_id=? and "
                    + " DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d') ";

            st = con.prepareStatement(sql);


            st.setDouble(1, bal.getBalance());
            st.setDouble(2, bal.getInvoices());
            st.setString(3, bal.getBranch());
            st.setDate(4, bal.getDate());

            st.executeUpdate();
            con.commit();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public DailyBalance getDailySalesBalanceInvoices(String branch, Connection con, Date date) {

        DailyBalance bal = null;
        PreparedStatement st = null;


        try {



            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices, "
                    + "receipts,banktransactions, c19 , b2526, b28 , plaza ,expenses, cashsales, "
                    + "notyetpaid, paidtobank, discount, previousday from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setDate(2, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
                bal.setReceipts(rs.getDouble(5));
                bal.setBanktransactions(rs.getDouble(6));
                bal.setCa19(rs.getDouble(7));
                bal.setB2526(rs.getDouble(8));
                bal.setPlaza(rs.getDouble(9));
                bal.setExpenses(rs.getDouble(10));
                bal.setCashsales(rs.getDouble(11));
                bal.setNotyetpaid(rs.getDouble(12));
                bal.setPaidtobank(rs.getDouble(13));
                bal.setDiscount(rs.getDouble(14));
                bal.setPreviousBal(rs.getDouble(15));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getDailySalesBalance(String branch) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;



        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices, "
                    + "receipts,banktransactions, c19 , b2526, plaza ,expenses, cashsales, "
                    + "notyetpaid, paidtobank, discount, previousday from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setString(1, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
                bal.setReceipts(rs.getDouble(5));
                bal.setBanktransactions(rs.getDouble(6));
                bal.setCa19(rs.getDouble(7));
                bal.setB2526(rs.getDouble(8));
                bal.setPlaza(rs.getDouble(9));
                bal.setExpenses(rs.getDouble(10));
                bal.setCashsales(rs.getDouble(11));
                bal.setNotyetpaid(rs.getDouble(12));
                bal.setPaidtobank(rs.getDouble(13));
                bal.setDiscount(rs.getDouble(14));
                bal.setPreviousBal(rs.getDouble(15));
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getDailySalesBalance(String branch, Date workingDate) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;



        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices, "
                    + "receipts,banktransactions, c19 , b2526, plaza ,expenses, cashsales, "
                    + "notyetpaid, paidtobank, discount, previousday from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setDate(2, OdicUtil.convertJavaDateToSqlDate(workingDate));

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
                bal.setReceipts(rs.getDouble(5));
                bal.setBanktransactions(rs.getDouble(6));
                bal.setCa19(rs.getDouble(7));
                bal.setB2526(rs.getDouble(8));
                bal.setPlaza(rs.getDouble(9));
                bal.setExpenses(rs.getDouble(10));
                bal.setCashsales(rs.getDouble(11));
                bal.setNotyetpaid(rs.getDouble(12));
                bal.setPaidtobank(rs.getDouble(13));
                bal.setDiscount(rs.getDouble(14));
                bal.setPreviousBal(rs.getDouble(15));
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getDailySalesBalanceCash(String branch, Date date, Connection con) {

        DailyBalance bal = null;
        PreparedStatement st = null;




        try {




            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices, "
                    + "receipts,banktransactions, c19 , b2526, plaza ,expenses, cashsales, "
                    + "notyetpaid, paidtobank, discount, previousday from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setDate(2, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
                bal.setReceipts(rs.getDouble(5));
                bal.setBanktransactions(rs.getDouble(6));
                bal.setCa19(rs.getDouble(7));
                bal.setB2526(rs.getDouble(8));
                bal.setPlaza(rs.getDouble(9));
                bal.setExpenses(rs.getDouble(10));
                bal.setCashsales(rs.getDouble(11));
                bal.setNotyetpaid(rs.getDouble(12));
                bal.setPaidtobank(rs.getDouble(13));
                bal.setDiscount(rs.getDouble(14));
                bal.setPreviousBal(rs.getDouble(15));
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getDailySalesBalanceFundExpenses(Date date, Connection con) {

        DailyBalance bal = null;
        PreparedStatement st = null;

        try {

            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices, "
                    + "receipts,banktransactions, c19 , b2526,  plaza ,expenses, cashsales, "
                    + "notyetpaid, paidtobank, discount, previousday from dailybalances "
                    + "where DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(?, '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(date));

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
                bal.setReceipts(rs.getDouble(5));
                bal.setBanktransactions(rs.getDouble(6));
                bal.setCa19(rs.getDouble(7));
                bal.setB2526(rs.getDouble(8));
                bal.setPlaza(rs.getDouble(9));
                bal.setExpenses(rs.getDouble(10));
                bal.setCashsales(rs.getDouble(11));
                bal.setNotyetpaid(rs.getDouble(12));
                bal.setPaidtobank(rs.getDouble(13));
                bal.setDiscount(rs.getDouble(14));
                bal.setPreviousBal(rs.getDouble(15));
            }


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getDailySalesBalanceInvoices(String branch) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;



        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "SELECT branch_id, balance, DATE_FORMAT(date, '%Y-%m-%d'), invoices from dailybalances "
                    + "where branch_id=? and  DATE_FORMAT(date, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d')";


            st = con.prepareStatement(sql);
            st.setString(1, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
                bal.setInvoices(rs.getDouble(4));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getPreviousDay(int day, String branch) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch_id, balance,  DATE_SUB( DATE, INTERVAL " + day + " DAY ) from dailybalances "
                    + "where branch_id=?";



            st = con.prepareStatement(sql);
            st.setString(1, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getPreviousDay(String branch, Date workingDate) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch_id, balance, DATE_FORMAT(date,'%Y-%m-%d')  from dailybalances where "
                    + "DATE_FORMAT(date,'%Y-%m-%d') = DATE_FORMAT(?,'%Y-%m-%d') and  branch_id=?";



            st = con.prepareStatement(sql);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(workingDate));
            st.setString(2, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public DailyBalance getPreviousDay(int day, String branch, Date workingDate) {

        DailyBalance bal = null;
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch_id, balance,  DATE_SUB( ?, INTERVAL " + day + " DAY ) from dailybalances "
                    + "where branch_id=?";



            st = con.prepareStatement(sql);
            st.setDate(1, OdicUtil.convertJavaDateToSqlDate(workingDate));
            st.setString(2, branch);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                bal = new DailyBalance();
                bal.setBranch(rs.getString(1));
                bal.setBalance(rs.getDouble(2));
                bal.setDate(rs.getDate(3));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return bal;

    }

    public void insertFundExpenses(Expenses fundExpense) {



        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);





            String sql = "insert fundexpenses(amount,expense_date) values(?,?)";

            st = con.prepareStatement(sql);
            st.setInt(1, fundExpense.getAmount());
            st.setDate(2, fundExpense.getDate());

            st.executeUpdate();


            con.commit();


        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public ArrayList<String> getBranchesIndexPage() {


        ArrayList<String> branches = new ArrayList<String>();
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
           

            String sql = "select branch_name from branch";

            st = con.prepareStatement(sql);


            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                branches.add(rs.getString(1));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return branches;

    }
    
    public boolean getBranchesIndexPageTest() {


        ArrayList<String> branches = new ArrayList<String>();
        PreparedStatement st = null;
        Connection con = null;

        try {
           

            String sql = "select branch_name from branch where branch_name like %HEAD%";

            st = connection.getCon().prepareStatement(sql);


            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                branches.add(rs.getString(1));
            }



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return true;

    }


    public Properties getSystemInfo() {
        return System.getProperties();
    }

    public String checkSingleLogon(StaffStatus staff) {


        String logged = "";
        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT staff_id, logon from singlelogon where staff_id=?";

            st = con.prepareStatement(sql);
            st.setString(1, staff.getUsername());

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                logged = rs.getString(2);
            }

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return logged;

    }

    public void insertSingleLogon(StaffStatus staff, String inOut) {

        PreparedStatement st = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            con.setAutoCommit(false);

            String sql = "update singlelogon set logon =? where staff_id =?";

            st = con.prepareStatement(sql);
            st.setString(1, inOut);
            st.setString(2, staff.getUsername());


            st.executeUpdate();
            con.commit();

        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void testOperations(String value) throws SaveInvoiceException {

        Connection con = null;
        PreparedStatement sqlstatement = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();



            String sql = "select * from invoicebody where invoiceid = ?";
            sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, value);

            ResultSet set = sqlstatement.executeQuery(sql);

        } catch (Exception ex) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);

            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);
                throw new SaveInvoiceException("Error at Saveinvoice method");
            }
        } finally {
            try {
                con.close();
                sqlstatement.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public SupplyInvoice getSupplyInvoice2(String invoiceNo) {

        SupplyInvoice supply = null;
        Connection con = null;
        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();
            String sql = "SELECT invoiceid,date,branch,status,sendingbranch FROM supplytable where invoiceid = ?";

            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, invoiceNo);


            ResultSet rs = pstmt.executeQuery();




            while (rs.next()) {
                supply = new SupplyInvoice();


                supply.setInvoiceno(rs.getString(1));
                supply.setDate(rs.getDate(2));
                supply.setBranch(rs.getString(3));
                supply.setStatus(rs.getString(4));
                supply.setSendingBranch(rs.getString(4));



            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return supply;

    }

    public OdicStock getStockBalance(String productId, String branchId) {
        OdicStock stock = null;
        PreparedStatement pstmt = null;


        Connection con = null;


        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "SELECT branch_id,product_id,product_desc,stockunit, datestock,balance FROM branchstockbalance where branch_id = ? and product_id=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, productId);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                stock = new OdicStock();

                stock.setBranchId(results.getString(1));
                stock.setProductId(results.getString(2));
                stock.setProductDesc(results.getString(3));
                stock.setStockunit(results.getString(4));
                stock.setDate(results.getDate(5));
                stock.setClosingStock(results.getInt(6));

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }

        } finally {

            try {
                pstmt.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


        return stock;
    }

    public OdicStock getLastStockId(String branchId, String productId, Connection con) {



        OdicStock stock = null;
        PreparedStatement pstmt = null;

        try {

            String sql = "select id from branchstocklastid where branch_id =? and product_id=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, productId);

            ResultSet results = pstmt.executeQuery();

            String id = "";


            while (results.next()) {
                stock = new OdicStock();
                id = results.getString(1);
                stock.setId(id);

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }

        } finally {

            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return stock;

    }

    public void insertBranchStocks2(OdicStock stock, Connection con) {

        PreparedStatement st = null;

        try {




            String sql = "insert into branchstock(branch_id,product_id, product_desc,tenderno, "
                    + "datestock,stockunit, goodsrecieved, balance,  id, datestring, goodsold,stocktype, "
                    + "red, green, blue, black, yg,  grey,white, silver) values(?,?,?,?,?,  ?,?,?,?,?, ?,?,?,?,?, ?,?,?,?,?)";
            st = con.prepareStatement(sql);

            st.setString(1, stock.getBranchId());
            st.setString(2, stock.getProductId());
            st.setString(3, stock.getProductDesc());
            st.setString(4, stock.getTenderno());
            st.setDate(5, stock.getDate());
            st.setString(6, stock.getStockunit());
            st.setInt(7, stock.getGoodsReceived());
            st.setInt(8, stock.getBalance());
            st.setString(9, stock.getId());
            st.setString(10, stock.getDateString());
            st.setInt(11, 0);
            st.setString(12, stock.getStockType());
            st.setInt(13, stock.getRedColor());
            st.setInt(14, stock.getGreenColor());
            st.setInt(15, stock.getBlueColor());
            st.setInt(16, stock.getBlackColor());
            st.setInt(17, stock.getYgColor());
            st.setInt(18, stock.getGrey());
            st.setInt(19, stock.getWhite());
            st.setInt(20, stock.getSilver());


            st.executeUpdate();



        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);


            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }


        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void insertBranchStockId(OdicStock stock, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "insert into branchstocklastid (id,branch_id,product_id) values (?,?,?)";
            st = con.prepareStatement(sql);

            st.setString(1, stock.getId());
            st.setString(2, stock.getBranchId());
            st.setString(3, stock.getProductId());



            st.executeUpdate();



        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public ArrayList<OdicStock> getBranchStockDetails(String branchId, String invoiceno, Connection con) {

        ArrayList<OdicStock> stocks = null;
        PreparedStatement pstmt = null;

        try {

            String sql = "SELECT product_id, product_desc, tenderno, datestock,goodsrecieved,goodsold, "
                    + "balance, datestring, stocktype FROM branchstock where branch_id = ? and tenderno=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, invoiceno);

            ResultSet rs = pstmt.executeQuery();

            stocks = new ArrayList<OdicStock>();

            OdicStock stock = null;


            while (rs.next()) {
                stock = new OdicStock();


                stock.setProductId(rs.getString(1));
                stock.setProductDesc(rs.getString(2));
                stock.setTenderno(rs.getString(3));

                stock.setDate(rs.getDate(4));
                stock.setGoodsReceived(rs.getInt(5));
                stock.setGoodSold(rs.getInt(6));
                stock.setBalance(rs.getInt(7));
                stock.setDateString(rs.getString(8));
                stock.setStockType(rs.getString(9));

                stocks.add(stock);

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return stocks;

    }

    public ArrayList<OdicStock> getBranchStockDetailsWarehouse(String branchId, String invoiceno, Connection con) {

        ArrayList<OdicStock> stocks = null;
        PreparedStatement pstmt = null;


        try {

            String sql = "SELECT product_id, product_desc, tenderno, datestock,goodsrecieved,goodsold, balance,"
                    + " datestring, stocktype, red, green, blue, black, yg,"
                    + " grey,white, silver FROM branchstock where branch_id = ? and tenderno=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, invoiceno);
            ResultSet rs = pstmt.executeQuery();

            stocks = new ArrayList<OdicStock>();

            OdicStock stock = null;
            while (rs.next()) {
                stock = new OdicStock();

                stock.setProductId(rs.getString(1));
                stock.setProductDesc(rs.getString(2));
                stock.setTenderno(rs.getString(3));
                stock.setDate(rs.getDate(4));
                stock.setGoodsReceived(rs.getInt(5));
                stock.setGoodSold(rs.getInt(6));
                stock.setBalance(rs.getInt(7));
                stock.setDateString(rs.getString(8));
                stock.setStockType(rs.getString(9));
                stock.setRedColor(rs.getInt(10));
                stock.setGreenColor(rs.getInt(11));
                stock.setBlueColor(rs.getInt(12));
                stock.setBlackColor(rs.getInt(13));
                stock.setYgColor(rs.getInt(14));
                stock.setGreyColor(rs.getInt(15));
                stock.setWhiteColor(rs.getInt(16));
                stock.setSilverColor(rs.getInt(17));


                stocks.add(stock);

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return stocks;

    }

    public OdicStock getLastStock(String id, Connection con) {



        OdicStock stock = null;
        PreparedStatement pstmt = null;

        try {

            String sql = "select id, branch_id,product_id, product_desc,tenderno, datestock,stockunit, goodsrecieved,balance from branchstock where id =?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);

            ResultSet results = pstmt.executeQuery();



            while (results.next()) {
                stock = new OdicStock();

                stock.setId(results.getString(1));
                stock.setBranchId(results.getString(2));
                stock.setProductId(results.getString(3));
                stock.setProductDesc(results.getString(4));
                stock.setTenderno(results.getString(5));
                stock.setDate(results.getDate(6));
                stock.setStockunit(results.getString(7));
                stock.setGoodsReceived(results.getInt(8));
                stock.setBalance(results.getInt(9));

            }

        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }

        } finally {

            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return stock;


    }

    public void insertBranchStocks(OdicStock stock, Connection con) {


        PreparedStatement st = null;

        try {



            String sql = "insert into branchstock(branch_id,product_id, product_desc,tenderno, "
                    + "datestock,stockunit, goodsrecieved, balance,  id, datestring, goodsold,stocktype) values(?,?,?,?,?,  ?,?,?,?,?, ?,?)";
            st = con.prepareStatement(sql);

            st.setString(1, stock.getBranchId());
            st.setString(2, stock.getProductId());
            st.setString(3, stock.getProductDesc());
            st.setString(4, stock.getTenderno());
            st.setDate(5, stock.getDate());
            st.setString(6, stock.getStockunit());
            st.setInt(7, stock.getGoodsReceived());
            st.setInt(8, stock.getBalance());
            st.setString(9, stock.getId());
            st.setString(10, stock.getDateString());
            st.setInt(11, 0);
            st.setString(12, stock.getStockType());


            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }


        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public OdicStock getStockBalance(String productId, String branchId, Connection con) {
        OdicStock stock = null;
        PreparedStatement pstmt = null;



        try {




            String sql = "SELECT branch_id,product_id,product_desc,stockunit, datestock,balance FROM branchstockbalance where branch_id = ? and product_id=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, productId);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                stock = new OdicStock();

                stock.setBranchId(results.getString(1));
                stock.setProductId(results.getString(2));
                stock.setProductDesc(results.getString(3));
                stock.setStockunit(results.getString(4));
                stock.setDate(results.getDate(5));
                stock.setClosingStock(results.getInt(6));

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }

        } finally {

            try {
                pstmt.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


        return stock;
    }

    public OdicStock getStockBalance2(String productId, String branchId, Connection con) {
        OdicStock stock = null;
        PreparedStatement pstmt = null;


        try {


            String sql = "SELECT branch_id,product_id,product_desc,stockunit, datestock,balance, red, green, blue, black, yg,"
                    + " grey,white, silver  FROM branchstockbalance"
                    + " where branch_id = ? and product_id=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, branchId);
            pstmt.setString(2, productId);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                stock = new OdicStock();

                stock.setBranchId(results.getString(1));
                stock.setProductId(results.getString(2));
                stock.setProductDesc(results.getString(3));
                stock.setStockunit(results.getString(4));
                stock.setDate(results.getDate(5));
                stock.setBalance(results.getInt(6));
                stock.setRedColor(results.getInt(7));
                stock.setGreenColor(results.getInt(8));
                stock.setBlueColor(results.getInt(9));
                stock.setBlackColor(results.getInt(10));
                stock.setYgColor(results.getInt(11));
                stock.setGreyColor(results.getInt(12));
                stock.setWhiteColor(results.getInt(13));
                stock.setSilverColor(results.getInt(14));

            }



        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }

        } finally {

            try {
                pstmt.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }


        return stock;
    }

    public void updateStockBalance2(OdicStock stock, String productId, String branchId, Connection con) {

        PreparedStatement st = null;
        try {


            String sql = "update branchstockbalance set balance = ?, datestock=?, datestring = ?, red=?, green=?, blue=?, black=?, yg=?, grey=?, white=?,silver=?"
                    + " where branch_id=? and product_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, stock.getBalance());
            st.setDate(2, stock.getDate());
            st.setString(3, stock.getDateString());
            st.setInt(4, stock.getRedColor());
            st.setInt(5, stock.getGreenColor());
            st.setInt(6, stock.getBlueColor());
            st.setInt(7, stock.getBlackColor());
            st.setInt(8, stock.getYgColor());
            st.setInt(9, stock.getGreyColor());
            st.setInt(10, stock.getWhiteColor());
            st.setInt(11, stock.getSilverColor());
            st.setString(12, branchId);
            st.setString(13, productId);


            st.executeUpdate();


        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void updateStockBalance(OdicStock stock, String productId, String branchId, Connection con) {

        PreparedStatement st = null;
        try {


            String sql = "update branchstockbalance set balance = ?, datestock=? where branch_id=? and product_id=?";
            st = con.prepareStatement(sql);

            st.setInt(1, stock.getBalance());
            st.setDate(2, stock.getDate());
            st.setString(3, branchId);
            st.setString(4, productId);


            st.executeUpdate();


        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void updateBranchLastStockId2(OdicStock stock, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update branchstocklastid set id=? where branch_id=? and product_id=?";
            st = con.prepareStatement(sql);

            st.setString(1, stock.getId());
            st.setString(2, stock.getBranchId());
            st.setString(3, stock.getProductId());



            st.executeUpdate();



        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void updateBranchLastStockId(OdicStock stock, Connection con) {



        PreparedStatement st = null;

        try {



            String sql = "update branchstocklastid set id=? where branch_id=? and product_id=?";
            st = con.prepareStatement(sql);

            st.setString(1, stock.getId());
            st.setString(2, stock.getBranchId());
            st.setString(3, stock.getProductId());



            st.executeUpdate();



        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();
            } catch (Throwable ex1) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex1);

            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void setSupplySupplied(String invoiceno, Connection con) {


        PreparedStatement st = null;


        try {

            String sql = "update supplytable set status='supplied' where invoiceid = ?";
            st = con.prepareStatement(sql);

            st.setString(1, invoiceno);



            st.executeUpdate();


            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();
                con.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void setSupplied(String invoiceid, String branch, Connection con) {

        PreparedStatement st = null;


        try {



            String sql = "update ourinvoice2 set supplied ='supplied', suppliedfrom=? where invoiceid=?";
            st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, invoiceid);

            st.executeUpdate();



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void setSuppliedNone(String invoiceid, String branch, Connection con) {

        PreparedStatement st = null;
        try {

            String sql = "update ourinvoice2 set supplied ='notsupplied', suppliedfrom=? where invoiceid=?";
            st = con.prepareStatement(sql);

            st.setString(1, "");
            st.setString(2, invoiceid);

            st.executeUpdate();

            this.setSupplyCancelled(invoiceid, con);



        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public void setSupplyCancelled(String invoiceno, Connection con) {


        PreparedStatement st = null;


        try {

            String sql = "update supplytable set status='notsupplied' where invoiceid = ?";
            st = con.prepareStatement(sql);

            st.setString(1, invoiceno);



            st.executeUpdate();


            con.commit();
        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public void deleteSupply(String invoiceno, Connection con) {


        PreparedStatement st = null;


        try {

            String sql = "delete from supplytable where invoiceid = ?";
            st = con.prepareStatement(sql);

            st.setString(1, invoiceno);

            st.executeUpdate();

        } catch (Exception e) {

            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
            try {
                con.rollback();


            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {

            try {
                st.close();

            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public OdicProduct checkProducts(String productId) {

        OdicProduct prod = null;
        Connection con = null;

        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT product_id, product_desc,price FROM odicproducts where product_id=?";

            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, productId);

            ResultSet results = pstmt.executeQuery();


            String product_id = "";
            String product_desc = "";
            Double price = 0.0;


            while (results.next()) {
                prod = new OdicProduct();
                product_id = results.getString(1);
                product_desc = results.getString(2);
                price = (Double) results.getDouble(3);

                prod.setItemId(product_id);
                prod.setItemDescription(product_desc);
                prod.setPrice(price);

            }


        } catch (Exception ex) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, "We couldn't get products", ex);
        } finally {

            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return prod;

    }

    public void createProduct(OdicProduct prod) {


        Connection con = null;
        PreparedStatement st = null;


        try {
            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();


            String sql = "insert into odicproducts values(?, ?, ?, ?, ?, ?, ?, ?)";
            st = con.prepareStatement(sql);

            st.setString(1, prod.getItemId());
            st.setString(2, prod.getItemDescription());
            st.setDouble(3, prod.getPrice());
            st.setDouble(4, prod.getRetailPriceLower());
            st.setDouble(5, prod.getRetailPriceHigher());
            st.setDouble(6, prod.getWholesalePrice());
            st.setDouble(7, prod.getWholesalePriceLower());
            st.setDouble(8, prod.getWholesalePriceHigher());



            st.executeUpdate();


        } catch (Exception e) {
            Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(SalesOperations.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public static void main(String[] args) throws ParseException {

        /*Calendar cal = new GregorianCalendar();
        System.out.println(cal.getTime());
        
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:MM:ss");
        
        System.out.println(formatter.format(cal.getTime()));
        
        String date = "15-01-21 08:01:44";
        String date1 = "15-01-21 08:01:45";
        String date2 = "15-01-21 08:01:47";
        String date3 = "15-01-21 08:01:46";
        String date4 = "15-01-21 08:01:48";
        
        String date5 = "15-01-21 07:01:46";
        String date6 = "15-01-21 04:01:48";
        
        ArrayList<TestDate> test = new ArrayList<TestDate>();
        test.add(new TestDate(formatter.parse(date)));
        test.add(new TestDate(formatter.parse(date1)));
        test.add(new TestDate(formatter.parse(date5)));
        test.add(new TestDate(formatter.parse(date3)));
        test.add(new TestDate(formatter.parse(date4)));
        test.add(new TestDate(formatter.parse(date2)));
        test.add(new TestDate(formatter.parse(date6)));
        
        Collections.sort(test);
        
        System.out.println(test);
        
        
        System.out.println(convertCalendar(cal, TimeZone.getTimeZone("US/Boston")).getTime());
        System.out.println(convertCalendar(cal, TimeZone.getTimeZone("Asia/Calcutta")).getTime());
        
        java.util.Date now = new java.util.Date();
        Calendar cal2 = Calendar.getInstance();
        cal2 = convertCalendar(cal, TimeZone.getTimeZone("Asia/Calcutta"));
        System.out.println(cal2.getTime());
        System.out.print(cal.get(Calendar.DAY_OF_YEAR));*/

        SalesOperations salesOpx = new SalesOperations();

        //StaffStatus staff = new StaffStatus();
        //staff.setBranch("HEADOFFICE_SALES");

        /*Properties prop = salesOpx.getSystemInfo();
        
        Set<String> set = prop.stringPropertyNames();
        
        Set<Object> st = prop.keySet();
        
        Iterator itil = st.iterator();
        
        while (itil.hasNext()) {
        
        String ob = (String) itil.next();
        System.out.println(ob + "=" + prop.getProperty(ob));
        }
         */



        //System.out.println(salesOpx.getTodaysInvoiceDetails("HQS-19"));
        //System.out.println(salesOpx.getSaleForAdjustment("HQS-19"));
        //System.out.println(salesOpx.getSaleInvoiceBody("HQS-19"));




        Calendar cal = new GregorianCalendar();
        cal = convertCalendar(cal, TimeZone.getTimeZone("Africa/Lagos"));
        System.out.println(cal.get(Calendar.HOUR_OF_DAY));










    }

    /**
     * Adapt calendar to client time zone.
     * @param calendar - adapting calendar
     * @param timeZone - client time zone
     * @return adapt calendar to client time zone
     */
    public static Calendar convertCalendar(final Calendar calendar, final TimeZone timeZone) {
        Calendar ret = new GregorianCalendar(timeZone);
        ret.setTimeInMillis(calendar.getTimeInMillis()
                + timeZone.getOffset(calendar.getTimeInMillis())
                - TimeZone.getDefault().getOffset(calendar.getTimeInMillis()));
        ret.getTime();
        return ret;
    }
}
