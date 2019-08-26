/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import Classespack.AcctBal;
import Classespack.AdminRes;
import Classespack.Util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Deji
 */
public class Auth extends Object {

    public float net;

    public Auth() {
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

        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "SELECT username, department, branch, status FROM admin where username= ? and password= ?";
            PreparedStatement sqlstatement = con.prepareStatement(sql);
            sqlstatement.setString(1, username);
            sqlstatement.setString(2, password);
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
               
                break;
            }

           con.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
        return statusStaff;
    }

    public void insertlog(String username) {

        String date = "";
        String time = "";
        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            Statement st2 = con.createStatement();
            String sequel = "select date(now()), curtime() from admin";
            ResultSet rs = st2.executeQuery(sequel);
            if (rs.next()) {
                date = rs.getString(1);
                time = rs.getString(2);
            }
            String sql = "insert into log values(null, ?, '" + date + "', '" + time + "')";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, username);
            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            st.close();
            con.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertBd(String dt, String no, String name, String cat, int pcs, float price, float price2, float price3, float price4) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "insert into products values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, dt);
            st.setString(2, no);
            st.setString(3, name);
            st.setString(4, cat);
            st.setInt(5, pcs);
            st.setFloat(6, price);
            st.setFloat(7, price2);
            st.setFloat(8, price3);
            st.setFloat(9, price4);

            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            st.close();
            con.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertid(String id, String day) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into invoiceday values(?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, day);


            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertIO(String branch, String tagno, String item, String type, String indes, String day, String date, String operator, String remark) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into initialinsp values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);

            st.setString(2, tagno);
            st.setString(3, item);
            st.setString(4, type);
            st.setString(5, indes);
            st.setString(6, day);
            st.setString(7, date);
            st.setString(8, operator);
            st.setString(9, remark);

            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            st.close();
            con.close();

        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertupdate(int id, String items, float price, int qty, String color, String des, float total) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            PreparedStatement st = con.prepareStatement("update invoicebody set items = ?, price = ?, qty = ?, color = ?, des = ?, total = ? where  itemid= '" + id + "' ");

            //st.setInt(1, id);
            st.setString(1, items);
            st.setFloat(2, price);
            st.setInt(3, qty);
            st.setString(4, color);
            st.setString(5, des);
            st.setFloat(6, total);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void updatecomment(String des) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            PreparedStatement st = con.prepareStatement("update comment set des = ? where  id= '1' ");

            //st.setInt(1, id);
            st.setString(1, des);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void updateinvoice(String name, String custid, String tag, String id) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            PreparedStatement st = con.prepareStatement("update ourinvoice set custname = ?, custid = ?, tagno = ? where  invoiceid= '" + id + "' ");

            //st.setInt(1, id);
            st.setString(1, name);
            st.setString(2, custid);
            st.setString(3, tag);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void updatetel(String tel, String id) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();
            PreparedStatement st = con.prepareStatement("update tel set tel = ? where  id = ?");

            //st.setInt(1, id);
            st.setString(1, tel);
            st.setString(2, id);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertupdate1(int id, String itemname, String category, int pieces, float price, float price2, float price3, float price4) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            PreparedStatement st = con.prepareStatement("update products set itemname = ?, category = ?, pieces = ?, price = ?, price2 = ?, price3 = ?, price4 = ? where  id= '" + id + "' ");

            //st.setInt(1, id);
            st.setString(1, itemname);
            st.setString(2, category);
            st.setInt(3, pieces);

            st.setFloat(4, price);
            st.setFloat(5, price2);
            st.setFloat(6, price3);
            st.setFloat(7, price4);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertupdate2(int id, String date, String item, float pieces, float total, float amtpaid, float bal) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            PreparedStatement st = con.prepareStatement("update custpackage set date = ?, Name = ?, totalpics = ?, total = ?, amtpaid = ?, balance = ? where  id= '" + id + "' ");

            //st.setInt(1, id);
            st.setString(1, date);
            st.setString(2, item);

            st.setFloat(3, pieces);


            st.setFloat(4, total);
            st.setFloat(5, amtpaid);
            st.setFloat(6, bal);

            int i = st.executeUpdate();

            if (i > 0) {

                AdminRes res = new AdminRes();
                res.creditacct("Package Customers", amtpaid);
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertupdate3(String regno, String surname, String firstname, String custtype, String address, String day, String month, String phoneno, String email, String gender) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();
            PreparedStatement st = con.prepareStatement("update customers set surname = ?, firstname = ?, custtype = ?, address = ?, day = ?, month=?, phoneno = ?, email = ?, gender = ? where  regno= '" + regno + "' ");

            //st.setInt(1, id);
            st.setString(1, surname);
            st.setString(2, firstname);
            st.setString(3, custtype);
            st.setString(4, address);
            st.setString(5, day);
            st.setString(6, month);
            st.setString(7, phoneno);
            st.setString(8, email);
            st.setString(9, gender);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertupdate4(String regno, String surname, String firstname, String custtype, String address, String phoneno, String username, String password) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();
            PreparedStatement st = con.prepareStatement("update admin set surname = ?, firstname = ?, department = ?, address = ?,  phoneno = ?, username = ?, password = ? where  staffno= '" + regno + "' ");

            //st.setInt(1, id);
            st.setString(1, surname);
            st.setString(2, firstname);
            st.setString(3, custtype);
            st.setString(4, address);

            st.setString(5, phoneno);
            st.setString(6, username);
            st.setString(7, password);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertupdatepay(int id, float basic, float tax, float loan, float grosspay, float netpay) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();
            PreparedStatement st = con.prepareStatement(" update paysolution set basicsalary = ?,  tax = ?,  loan = ?, grosspay = ?, netpay = ?  where id = '" + id + "' ");

            //st.setInt(1, id);
            st.setFloat(1, basic);
            st.setFloat(2, tax);
            st.setFloat(3, loan);
            st.setFloat(4, grosspay);
            st.setFloat(5, netpay);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "successful");
            }

            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertnewpack(String date, String custno, String name, int totalpcs, float total, float amtpaid, float balance) {
        String custn = "";
        int i = 0;
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            String sql = "insert into custpackage values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, custno);
            st.setString(3, name);
            st.setInt(4, totalpcs);
            st.setFloat(5, total);
            st.setFloat(6, amtpaid);
            st.setFloat(7, balance);


            String sequel = "select * from custpackage where custno = '" + custno + "' ";
            Statement mystate = con.createStatement();
            ResultSet set = mystate.executeQuery(sequel);
            while (set.next()) {
                custn = set.getString("custno");
            }

            if (custn.equals(custno)) {
                //JOptionPane.showMessageDialog(null, "This customer is already exist in the package customer");
            } else {
                i = st.executeUpdate();
            }
            if (i > 0) {
                AdminRes res = new AdminRes();
                res.creditacct("Package Customers", amtpaid);
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertdiscount(String custno, String name, int discount) {
        String result = "";
        int i = 0;
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            String sql = "insert into discount values(?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, custno);
            st.setString(2, name);
            st.setInt(3, discount);

            st.executeUpdate();

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }

    }

    public void insertpackrec(String date, String name, int packtype, float amount, int gbal, float amtpaid, float balance, String staff) {
        try {
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            String sql = "insert into packagehistory values(null, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, name);
            st.setInt(3, packtype);
            st.setFloat(4, amount);
            st.setInt(5, gbal);
            st.setFloat(6, amtpaid);
            st.setFloat(7, balance);
            st.setString(8, staff);


            int i = st.executeUpdate();

            if (i > 0) {
                AdminRes res = new AdminRes();
                res.creditacct("Package Customers", amtpaid);
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void inserthanger(String branch, String date, String invoiceno, String tagno, int hungpack, int folded, int hanger, String presser, String collated) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into hangeranalysis values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, branch);

            st.setString(2, date);
            st.setString(3, invoiceno);
            st.setString(4, tagno);
            st.setInt(5, hungpack);
            st.setInt(6, folded);
            st.setInt(7, hanger);
            st.setString(8, presser);
            st.setString(9, collated);

            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertacct(String dt, String acctno, String acctname, String accttype, float balance) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into Account values(null, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, dt);
            st.setString(2, acctno);
            st.setString(3, acctname);
            st.setString(4, accttype);
            st.setFloat(5, balance);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertcust(String branch, String dt, String regno, String surname, String fname, String oname, String addres, String state, String country, String dob, String dob1, String gender, String phone, String email) {
        String result = "Transaction Successful";
        String p = "";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into customers values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, dt);
            st.setString(3, regno);
            st.setString(4, surname);
            st.setString(5, fname);
            st.setString(6, oname);
            st.setString(7, addres);
            st.setString(8, state);
            st.setString(9, country);
            st.setString(10, dob);
            st.setString(11, dob1);
            st.setString(12, gender);
            st.setString(13, phone);
            st.setString(14, email);


            Statement stt = con.createStatement();
            String sq = "select phoneno from customers";
            ResultSet set = stt.executeQuery(sq);
            while (set.next()) {
                p = set.getString("phoneno");
            }

            if (p.equals(phone)) {
                //JOptionPane.showMessageDialog(null, "This Customer is existing in your database");
            } else {
                int i = st.executeUpdate();
            }
            // String v = "hi";
            // String query = "insert into custid values('" + v + "')";
            //PreparedStatement st2 = con.prepareStatement(query);
            //st2.executeUpdate();
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, "Registration not Successful! Make sure you fill all necessary fields");
        }
    }

    public void insertvendor(String dt, String vendorid, String name, String addres, String phoneno, String state, String country, String gender, String email, String type) {
        String result = "Transaction Successful";
        String p = "";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into vendor values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, dt);
            st.setString(2, vendorid);
            st.setString(3, name);
            st.setString(4, addres);
            st.setString(5, phoneno);
            st.setString(6, state);
            st.setString(7, country);
            st.setString(8, gender);
            st.setString(9, email);
            st.setString(10, type);

            Statement stt = con.createStatement();
            String sq = "select phoneno from vendor";
            ResultSet set = stt.executeQuery(sq);
            while (set.next()) {
                p = set.getString("phoneno");
            }

            if (p.equals(phoneno)) {
                //JOptionPane.showMessageDialog(null, "This Vendor is existing in your database");
            } else {
                int i = st.executeUpdate();
            }

            // String v = "hi";
            // String query = "insert into custid values('" + v + "')";
            //PreparedStatement st2 = con.prepareStatement(query);
            //st2.executeUpdate();
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Registration not Successful! Make sure you fill all necessary fields");
        }
    }

    public int insertdeposit(String branch, String dt, String teller, String depositor, float amt, String bank, String account) {
        String result = "Transaction Successful";
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into deposit values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, dt);
            st.setString(3, teller);
            st.setString(4, depositor);
            st.setFloat(5, amt);
            st.setString(6, bank);
            st.setString(7, account);
            i = st.executeUpdate();
            if (i > 0) {
                AdminRes res = new AdminRes();
                res.debitAcct(account, amt);
                res.creditacct(bank, amt);
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Registration not Successful! Make sure you fill all necessary fields");
        }

        return i;
    }

    public void insertfixedasset(String branch, String dt, String name, String des, float cost, String location, int depre, float nbv, String account, String last) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into fixedasset values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, dt);
            st.setString(3, name);
            st.setString(4, des);
            st.setFloat(5, cost);
            st.setString(6, location);
            st.setInt(7, depre);
            st.setFloat(8, nbv);
            st.setString(9, account);
            st.setString(10, last);

            int i = st.executeUpdate();

            if (i > 0) {
                AdminRes res = new AdminRes();
                //res.debitAcct("cash-at-bank", cost);
                res.creditacct("fixed asset", cost);
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Registration not Successful! Make sure you fill all necessary fields");
        }
    }

    public int insertwithdraw(String branch, String dt, String cheque, String withdrawal, float amt, String sales, String bank) {
        String result = "Transaction Successful";
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into withdraw values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, dt);
            st.setString(3, cheque);
            st.setString(4, withdrawal);
            st.setFloat(5, amt);
            st.setString(6, sales);
            st.setString(7, bank);

            i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
                AdminRes res = new AdminRes();
                res.creditacct(sales, amt);
                res.debitAcct(bank, amt);
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Registration not Successful! Make sure you fill all necessary fields");
        }
        return i;
    }

    public void insertstaff(String branch, String dt, String staffno, String surname, String fname, String oname, String phone, String addres, String state, String country, String dob, String emptype, String username, String password, String dept, int level, String Status) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into admin values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, dt);
            st.setString(3, staffno);
            st.setString(4, surname);
            st.setString(5, fname);
            st.setString(6, oname);
            st.setString(7, phone);
            st.setString(8, addres);
            st.setString(9, state);
            st.setString(10, country);
            st.setString(11, dob);
            st.setString(12, emptype);
            st.setString(13, username);
            st.setString(14, password);
            st.setString(15, dept);
            st.setInt(16, level);
            st.setString(17, Status);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertbranch(String name, String address, String manager, String date) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into branch values(null, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, address);
            st.setString(3, manager);
            st.setString(4, date);


            int i = st.executeUpdate();

            if (i > 0) {
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertextrainfo(String invid, String extra, int qty, float price, float total) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into extrainfo values(?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, invid);
            st.setString(2, extra);
            st.setInt(3, qty);
            st.setFloat(4, price);
            st.setFloat(5, total);


            int i = st.executeUpdate();

            if (i > 0) {

                AdminRes r = new AdminRes();
                r.creditacct("cash-at-hand", total);
                //JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public String insertourinvoice(String date, String invid, String branch, String custname, String custid, String type, String tagno, int qty, float discount, String extra, float gtotal, float amtpaid, float bal, String ready, String staff, String day2, String status) {
        String result = "success";

        String custtype = null;
        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "insert into ourinvoice values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);

            st.setString(2, invid);
            st.setString(3, branch);
            st.setString(4, custname);
            st.setString(5, custid);
            st.setString(6, type);
            st.setString(7, tagno);
            st.setInt(8, qty);
            st.setFloat(9, discount);
            st.setString(10, extra);
            st.setFloat(11, gtotal);
            st.setFloat(12, amtpaid);
            st.setFloat(13, bal);
            st.setString(14, ready);
            st.setString(15, staff);
            st.setString(16, status);

            int i = 0;

            if (bal >= 0) {

                i = st.executeUpdate();
            } else {
                //JOptionPane.showMessageDialog(null, "Customer's Balance must not be less than  Zero");
            }

            AdminRes res = new AdminRes();

            if (i > 0 && type.equals("Package")) {

                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);

            } else if (i > 0 && type.equals("Regular") && bal >= 0) {
                res.creditacct("cash-at-hand", amtpaid);
                res.creditacct("account receivable", bal);
                res.creditacct("sales discount", discount);
            } else if (i > 0 && type.equals("Staff")) {
                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);
            } else if (i > 0 && type.equals("Complementary")) {
                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);
            } else {
            }
            //if (i > 0 && bal >= 0) {
            //String v = "hi";
            //String query = "insert into invid values('" + v + "')";
            //PreparedStatement st2 = con.prepareStatement(query);
            // st2.executeUpdate();
            //}

            if (i > 0 && bal >= 0) {

                Util ut = new Util();
                //float t = price * qty;
                ut.updatecustpackage(gtotal, custid);

                String query = "insert into invoiceday values(?, ?)";
                PreparedStatement st3 = con.prepareStatement(query);
                st3.setString(1, invid);
                st3.setString(2, day2);
                st3.executeUpdate();
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
        return result;
    }

    public void insertpickup(String mybranch, String date, String invid, float prevbal, String desc, float amtpaid, float balance, String status, String staff) {
        String result = "Transaction Successful";

        String type = "";
        float bal = 0;
        String cust = "";
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();

            Statement st2 = con.createStatement();
            String sql2 = "Select custtype, custname, balance from ourinvoice where invoiceid = '" + invid + "'";
            ResultSet rs = st2.executeQuery(sql2);
            if (rs.next()) {
                type = rs.getString("custtype");
                bal = rs.getFloat("balance");
                cust = rs.getString("custname");
            }

            String sql = "insert into pickup values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, mybranch);
            st.setString(2, date);
            st.setString(3, cust);
            st.setString(4, invid);
            st.setString(5, type);
            st.setFloat(6, prevbal);
            st.setString(7, desc);
            st.setFloat(8, amtpaid);
            st.setFloat(9, balance);
            st.setString(10, status);
            st.setString(11, staff);


            if (bal == 0) {
                //JOptionPane.showMessageDialog(null, "This Invoice id has been picked up and have zero balance OR the invoice id does not exist");
            } else {
                i = st.executeUpdate();
            }

            Util ut = new Util();
            AdminRes res = new AdminRes();

            if (i > 0) {
                ut.updateinv(invid, amtpaid);
            }

            if (i > 0 && type.equals("Package")) {

                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);
                // ut.updateinv(invid, amtpaid);
            } else if (i > 0 && type.equals("Regular")) {
                res.creditacct("cash-at-hand", amtpaid);
                res.debitAcct("account receivable", amtpaid);
                //ut.updateinv(invid, amtpaid);
            } else if (i > 0 && type.equals("Staff")) {
                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);
                // ut.updateinv(invid, amtpaid);
            } else if (i > 0 && type.equals("Complementary")) {
                res.creditacct("cash-at-hand", 0);
                res.creditacct("account receivable", 0);
                res.creditacct("sales discount", 0);
                // ut.updateinv(invid, amtpaid);
            } else {
            }

            //String v = "hi";
            //String query = "insert into recid values('" + v + "')";
            //PreparedStatement st3 = con.prepareStatement(query);
            //st3.executeUpdate();
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, "Invoice id is not correct or does not exist. Pls, type it correctly");
        }
    }

    public void insertraw(String date, String name, int qty, float price, float amt) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into raw values(?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, name);
            st.setInt(3, qty);
            st.setFloat(4, price);
            st.setFloat(5, amt);
            int i = st.executeUpdate();
            if (i > 0) {
                Util ut = new Util();
                //AdminRes res = new AdminRes();
                //res.debitAcct("cash-at-hand", amt);
                //res.creditacct("consumables", amt);

            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public int insertcashflow(String branch, String date, String id, String particular, float debit, float credit) throws java.lang.ClassNotFoundException {
        String result = "Transaction Successful";
        AdminRes res = new AdminRes();
        float bal = res.sumOfaccount();
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into cashfloaw values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, id);
            st.setString(4, particular);
            st.setFloat(5, debit);
            st.setFloat(6, credit);

            st.setFloat(7, bal);


            i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
        return i;
    }

    public int insertbankstate(String branch, String date, String id, String particular, float debit, float credit) throws java.lang.ClassNotFoundException {
        String result = "Transaction Successful";
        AcctBal res = new AcctBal();
        double bal = res.totalbank();
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into bankstatement values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, id);
            st.setString(4, particular);
            st.setFloat(5, debit);
            st.setFloat(6, credit);

            st.setDouble(7, bal);


            i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
        return i;
    }

    public int insertcashflow2(String branch, String date, String id, String particular, float debit, float credit) throws java.lang.ClassNotFoundException {
        String result = "Transaction Successful";
        AdminRes res = new AdminRes();
        float bal = res.sumOfaccount();
        int i = 0;
        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "insert into cashfloaw values(null, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, id);
            st.setString(4, particular);
            st.setFloat(5, debit);
            st.setFloat(6, credit);

            st.setFloat(7, bal);

            i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
        return i;
    }

    public void insertextra(String regdate, String name, String description, float price) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into extracharge values(null, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, regdate);
            st.setString(2, name);
            st.setString(3, description);
            st.setFloat(4, price);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertcustpref(String date, String customerno, String preference, String priority) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into custpref values(?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);
            st.setString(2, customerno);
            st.setString(3, preference);
            st.setString(4, priority);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertexpenses(String branch, String date, String acct, String receiver, String address, String phone, float totalamt, String desc, float amtpaid, float balance, String admin, String type) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into expenses values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, acct);
            st.setString(4, receiver);
            st.setString(5, address);
            st.setString(6, phone);
            st.setFloat(7, totalamt);
            st.setString(8, desc);
            st.setFloat(9, amtpaid);
            st.setFloat(10, balance);
            st.setString(11, admin);
            st.setString(12, type);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }

            AdminRes res = new AdminRes();
            res.debitAcct(acct, amtpaid);
            res.creditacct(type, amtpaid);
            res.creditacct("Account payable", balance);

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertloan(String date, String staff, float amt, String term) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into loan values(null, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);
            st.setString(2, staff);

            st.setFloat(3, amt);
            st.setString(4, term);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }

            AdminRes res = new AdminRes();
            res.debitAcct("cash-at-hand", amt);
            res.creditacct("loan", amt);

            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void inserttax(String date, String gov, String des, float totalamt, float amtpaid, float balance) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into paytax values(null, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);
            st.setString(2, gov);
            st.setString(3, des);
            st.setFloat(4, totalamt);
            st.setFloat(5, amtpaid);
            st.setFloat(6, balance);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }

            AdminRes res = new AdminRes();
            res.debitAcct("tax", amtpaid);
            res.debitAcct("cash-at-hand", amtpaid);
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpayroll(String branch, String date, String acct, String employee, double basic, double medical, double transport, double feeding, double house, double utility, double cleaning, double pension, double odeduct, double tax, double loan) {
        String result = "Transaction Successful";

        // float gross;

        double feedn = (feeding / 100) * basic;
        double transn = (transport / 100) * basic;
        double housen = (house / 100) * basic;
        double medicn = (medical / 100) * basic;
        double ut = (utility / 100) * basic;

        double tdeduct = tax + loan + pension + odeduct;

        double grossn = basic + feedn + transn + housen + medicn + ut + cleaning;

        double net2 = grossn - tdeduct;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into paysolution values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, acct);
            st.setString(4, employee);
            st.setDouble(5, basic);
            st.setDouble(6, medicn);
            st.setDouble(7, transn);
            st.setDouble(8, feedn);
            st.setDouble(9, housen);
            st.setDouble(10, ut);
            st.setDouble(11, cleaning);
            st.setDouble(12, pension);
            st.setDouble(13, odeduct);
            st.setDouble(14, tax);
            st.setDouble(15, loan);
            st.setDouble(16, grossn);
            st.setDouble(17, net2);


            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }

            //AdminRes res = new AdminRes();
            // res.debitAcct(acct, net);
            //res.creditacct("Salary and Wages", net);
            //res.creditacct("Tax", tax);
            //res.debitAcct(acct, loan);

            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpayrecord(String acct, String month, String year, String employee, float basic, float medical, float transport, float feeding, float house, float utility, float cleaning, float pension, float od, float tax, float loan, float grosspay, float netpay) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into payrecords values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, month);
            st.setString(2, year);

            st.setString(3, employee);

            st.setFloat(4, basic);
            st.setFloat(5, medical);
            st.setFloat(6, transport);
            st.setFloat(7, feeding);
            st.setFloat(8, house);
            st.setFloat(9, utility);
            st.setFloat(10, cleaning);
            st.setFloat(11, pension);
            st.setFloat(12, od);
            st.setFloat(13, tax);
            st.setFloat(14, loan);
            st.setFloat(15, grosspay);
            st.setFloat(16, netpay);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
            }

            AdminRes res = new AdminRes();
            res.debitAcct(acct, netpay);
            res.creditacct("Salary and Wages", netpay);
            res.creditacct("Tax", tax);
            res.debitAcct("loan", loan);

            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpension(String employee, String month, String year, float amount) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into pension values(null, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, employee);
            st.setString(2, month);
            st.setString(3, year);
            st.setFloat(4, amount);

            int i = st.executeUpdate();

            if (i > 0) {
                // JOptionPane.showMessageDialog(null, "Registration Successful");
                AdminRes ad = new AdminRes();
                Util ut = new Util();

                ad.creditacct("Pension", amount);
            }



            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertdropitem(String branch, String date, String custid, String id, String items, float price, int qty, int pcs, String des, String color, float total, String admin) throws java.lang.ClassNotFoundException {
        String result = "Transaction Successful";

        int tqty = qty * pcs;
        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();

            String sql = "insert into invoicebody values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, custid);
            st.setString(4, id);
            st.setString(5, items);
            st.setFloat(6, price);
            st.setInt(7, qty);
            st.setInt(8, pcs);
            st.setInt(9, tqty);
            st.setString(10, des);
            st.setString(11, color);
            st.setFloat(12, total);
            st.setString(13, admin);

            int i = st.executeUpdate();


            con.close();
            st.close();
        } catch (SQLException e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertfundtransfer(String branch, String date, String acctfrom, float balance, float amount, String toacct, String admin) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into fundtransfer values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, acctfrom);
            st.setFloat(4, balance);
            st.setFloat(5, amount);
            st.setString(6, toacct);
            st.setString(7, admin);


            int i = st.executeUpdate();

            if (i > 0) {
                Util ut = new Util();
                ut.transferFund(acctfrom, toacct, amount);

            } else {
                //JOptionPane.showMessageDialog(null, "Registration not Successful");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpurchase(String date, String name, int qty, float price, float total, float amtpaid, float balance, String vendor, String staff) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "insert into purchase values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);
            st.setString(2, name);
            st.setInt(3, qty);
            st.setFloat(4, price);
            st.setFloat(5, total);
            st.setFloat(6, amtpaid);
            st.setFloat(7, balance);
            st.setString(8, vendor);
            st.setString(9, staff);

            int i = st.executeUpdate();

            if (i > 0) {

                AdminRes ad = new AdminRes();
                Util ut = new Util();
                ad.debitAcct("Cash-at-hand", amtpaid);
                ad.creditacct("Consumables", total);
                ad.creditacct("Account Payable", balance);
                //ut.updateexp(vendor, amtpaid);
            }
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpayment(String branch, String date, String acct, String id, String address, String phone, float prevbal, String desc, float amtpaid, float balance, String admin, String expense, String vendor) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into payment values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, acct);
            st.setString(4, id);
            st.setString(5, address);
            st.setString(6, phone);
            st.setFloat(7, prevbal);
            st.setString(8, desc);
            st.setFloat(9, amtpaid);
            st.setFloat(10, balance);
            st.setString(11, admin);

            int i = st.executeUpdate();

            if (i > 0 && expense != "") {

                AdminRes ad = new AdminRes();
                Util ut = new Util();
                ad.debitAcct("Account Payable", amtpaid);
                ad.debitAcct(acct, amtpaid);
                ad.creditacct(expense, amtpaid);
                ut.updateexp(vendor, amtpaid);
            } else {
                // JOptionPane.showMessageDialog(null, "Pls select an Expense account");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertpayment2(String branch, String date, String acct, String id, String address, String phone, float prevbal, String desc, float amtpaid, float balance, String admin, String expense, String vendor) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();
            Connection con = SQLcon.getCon();
            String sql = "insert into payment values(null, ?, ?, ?, ?, ?, ?, ?, ?,  ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, branch);
            st.setString(2, date);
            st.setString(3, acct);
            st.setString(4, id);
            st.setString(5, address);
            st.setString(6, phone);
            st.setFloat(7, prevbal);
            st.setString(8, desc);
            st.setFloat(9, amtpaid);
            st.setFloat(10, balance);
            st.setString(11, admin);

            int i = st.executeUpdate();

            if (i > 0 && expense != "") {

                AdminRes ad = new AdminRes();
                Util ut = new Util();
                ad.debitAcct("Account Payable", amtpaid);
                ad.debitAcct(acct, amtpaid);

                ut.updatepurchase(vendor, amtpaid);
            } else {
                //JOptionPane.showMessageDialog(null, "Pls select an Expense account");
            }
            con.close();
            st.close();
        } catch (Exception e) {
            // JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertjournal(String date, String narate, String acct1, String acct2, float amount) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into journal values(null, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, date);
            st.setString(2, narate);
            st.setString(3, acct1);
            st.setString(4, acct2);
            st.setFloat(5, amount);

            int i = st.executeUpdate();

            if (i > 0) {

                AdminRes res = new AdminRes();
                res.creditacct(acct1, amount);
                res.debitAcct(acct2, amount);

            } else {
                //JOptionPane.showMessageDialog(null, e);
            }
            con.close();
            st.close();

        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void insertcomment(String des) {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            String sql = "insert into comment values(?)";
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, des);

            int i = st.executeUpdate();

            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }

    public void custid() {
        String result = "Transaction Successful";

        try {
            SQLconnector SQLcon = new SQLconnector();

            Connection con = SQLcon.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT count(*)FROM customers");
            int id = 0;
            if (rs.last()) {
                id = rs.getInt(1) + 1;
            }
            con.close();
            st.close();
        } catch (Exception e) {
            //JOptionPane.showMessageDialog(null, e);
        }
    }
}
