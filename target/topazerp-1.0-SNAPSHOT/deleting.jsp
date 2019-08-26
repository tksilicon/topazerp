<%-- 
    Document   : deleting
    Created on : Dec 18, 2012, 6:49:48 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>


        <%


            float amtpaid1 = 0;

            Auth a = new Auth();
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            if (request.getParameter("deleteitem") != null) {
                String value = request.getParameter("deleteitem");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM invoicebody WHERE itemid = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selectincomeitem.jsp");

            } 
           else if (request.getParameter("deletediscount") != null) {
                String value = request.getParameter("deletediscount");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM discount WHERE custid = '"+kw+"'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("discount.jsp");

            } 
           
            else if (request.getParameter("delcust") != null) {
                String value = request.getParameter("delcust");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM customers WHERE regno = '"+kw+"'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displaycustomer.jsp");

            } 
           
            else if (request.getParameter("undoupload") != null) {
                String value = request.getParameter("undoupload");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM invoicebody WHERE indate = '" + kw + "' and branch = '" + session.getAttribute("mybranch") + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selectincomeitem.jsp");



            } else if (request.getParameter("payrollnew") != null) {

                //int value = (Integer) session.getAttribute("itemid");
                String employee = request.getParameter("employee");
                String month = request.getParameter("month");
                String year = request.getParameter("Year");
                float basic = Float.parseFloat(request.getParameter("salary"));
                float medical = Float.parseFloat(request.getParameter("medical"));
                float transport = Float.parseFloat(request.getParameter("transport"));
                float feeding = Float.parseFloat(request.getParameter("fedding"));
                float house = Float.parseFloat(request.getParameter("housing"));
                float tax = Float.parseFloat(request.getParameter("tax"));
                float loan = Float.parseFloat(request.getParameter("loan"));
                float iou = Float.parseFloat(request.getParameter("iou"));
                float grosspay = Float.parseFloat(request.getParameter("grosspay"));
                float netpay = Float.parseFloat(request.getParameter("netpay"));



                //a.insertpayrecord(month, year, employee, basic, medical, transport, feeding, house, iou, tax, loan, grosspay, netpay);

                a.insertcashflow("Ogudu", month + "/" + year, "Payroll", employee, 0, netpay);

                response.sendRedirect("displaypayrollup.jsp");


            } else if (request.getParameter("voidinvoice") != null) {

                String value = request.getParameter("invoicenumber");
                String kw = String.valueOf(value);
                String message = "";
                String reason = request.getParameter("reason");
                float amtpaid = 0;
                float balance = 0;
                float discount = 0;
                try {

                    Statement st = con.createStatement();
                    //insert into invoicearch select date, invoiceid, branch, custname, custid, custtype, tagno, totalqty, discount, type, grandtotal, amtpaid, balance, ready, staff, 'reason' from ourinvoice  WHERE invoiceid = 'og8' "
                    int j = st.executeUpdate("insert into invoicearch select date, invoiceid, branch, custname, custid, custtype, tagno, totalqty, discount, type, grandtotal, amtpaid, balance, ready, staff, '" + reason + "' from ourinvoice  WHERE invoiceid = '" + kw + "'");
                    String sql = "DELETE FROM ourinvoice WHERE invoiceid = '" + kw + "'";
                    st.executeUpdate("DELETE FROM invoicebody WHERE invoiceid = '" + kw + "'");
                    String sql2 = "select amtpaid, balance, discount from ourinvoice WHERE invoiceid = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        amtpaid = rs.getFloat("amtpaid");
                        balance = rs.getFloat("balance");
                        discount = rs.getFloat("discount");
                    }

                    int delete = st.executeUpdate(sql);

                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        dd.debitAcct("cash-at-hand", amtpaid);
                        dd.debitAcct("account receivable", balance);
                        dd.debitAcct("sales discount", discount);
                        // dd.deletecahflow(kw);
                        dd.deleteitem(kw);
                        dd.deleteextras(kw);

                        message = "Invoice successfully deleted and moved to the archive database";

                    } else {
                        message = "Cannot void invoice. Check if invoice number is correct";

                        session.setAttribute("mes", message);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                session.setAttribute("mes", message);
                response.sendRedirect("voidinvoice.jsp");

            } else if (request.getParameter("deleteitem2") != null) {
                String value = request.getParameter("deleteitem2");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM invoicebody WHERE itemid = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("transaction.jsp");


            } else if (request.getParameter("allpayroll") != null) {
                String value = request.getParameter("deleteitem2");
                String kw = String.valueOf(value);

                try {
                    Statement st = con.createStatement();
                    String sql = "Insert into payrecords values(select select getdate()";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("transaction.jsp");


            } else if (request.getParameter("deleteinitial") != null) {

                String value = request.getParameter("deleteinitial");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM initialinsp WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selectinitial.jsp");

            } else if (request.getParameter("deletevendor") != null) {

                String value = request.getParameter("deletevendor");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM vendor WHERE vendorid = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displayvendor.jsp");

            } else if (request.getParameter("deletecustpack") != null) {

                String value = request.getParameter("deletecustpack");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM custpackage WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!");
                }

                response.sendRedirect("updatecustpack.jsp");

            } else if (request.getParameter("deletetax") != null) {

                String value = request.getParameter("deletetax");
                String kw = String.valueOf(value);
                float mytotal = 0;
                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM paytax WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    String sql2 = "select amtpaid from paytax WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amtpaid");

                    }

                    if (delete > 0) {
                        AdminRes res = new AdminRes();
                        res.creditacct("cash-at-hand", mytotal);
                        res.creditacct("tax", mytotal);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displaytax.jsp");

            } else if (request.getParameter("deleteloan") != null) {

                String value = request.getParameter("deleteloan");
                String kw = String.valueOf(value);
                float mytotal = 0;
                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM loan WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    String sql2 = "select amount from loan WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amount");

                    }

                    if (delete > 0) {
                        AdminRes res = new AdminRes();
                        res.debitAcct("cash-at-hand", mytotal);
                        res.creditacct("loan", mytotal);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displayloan.jsp");

            } else if (request.getParameter("deletepay") != null) {

                String value = request.getParameter("deletepay");
                String kw = String.valueOf(value);
                float loan = 0;
                float tas = 0;
                float iou = 0;
                float netpay = 0;
                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM payrecords WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    String sql2 = "select tax, iou, loan, netpay from payrecors WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        tas = rs.getFloat("tax");
                        iou = rs.getFloat("iou");
                        loan = rs.getFloat("loan");
                        netpay = rs.getFloat("netpay");

                    }

                    if (delete > 0) {
                        AdminRes res = new AdminRes();
                        res.creditacct("cash-at-bank", netpay);
                        res.debitAcct("Salary and Wages", netpay);
                        res.debitAcct("Tax", tas);
                        res.creditacct("loan", loan);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displaypayrecords.jsp");

            } else if (request.getParameter("deletecustomer") != null) {

                String value = request.getParameter("deletecustomer");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM customers WHERE regno = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displaycustomer.jsp");

            } else if (request.getParameter("deleteall") != null) {



                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM invoicebody WHERE invoiceid = '" + session.getAttribute("id") + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    out.println(s);
                }

                response.sendRedirect("transaction.jsp");

            } else if (request.getParameter("deletehanger") != null) {

                String value = request.getParameter("deletehanger");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM hangeranalysis WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selecthanger.jsp");

            } else if (request.getParameter("deleteproduct") != null) {

                String value = request.getParameter("deleteproduct");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM products WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);


                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displayitem.jsp");

            } else if (request.getParameter("deletefixed") != null) {

                String value = request.getParameter("deletefixed");
                String kw = String.valueOf(value);
                float cost = 0;
                try {


                    Statement st = con.createStatement();

                    String sql2 = "select * from fixedasset WHERE id = '" + kw + "'";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        cost = rs.getFloat("cost");
                    }

                    String sql = "DELETE FROM fixedasset WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);
                    if (delete > 0) {
                        AdminRes res = new AdminRes();
                        res.debitAcct("fixed asset", cost);
                        //res.creditacct("Cash-at-hand", cost);
                    }


                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displayfixedasset.jsp");

            } else if (request.getParameter("delname") != null) {

                String value = request.getParameter("delname");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM custpackage WHERE id = '" + kw + "'";
                    int delete = st.executeUpdate(sql);


                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selectcccustomer.jsp");

            } else if (request.getParameter("deletepurchase") != null) {
                float mytotal = 0;
                int qty = 0;
                float total = 0;
                String name = "";
                String value = request.getParameter("deletepurchase");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    // st.executeUpdate("insert into depositarch select * from deposit  WHERE id = '" + kw + "' ");
                    String sql = "DELETE FROM purchase WHERE id = '" + kw + "'";
                    String sql2 = "select * from purchase WHERE id = '" + kw + "' ";

                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amtpaid");
                        qty = rs.getInt("qty");
                        total = rs.getFloat("total");
                        name = rs.getString("name");

                    }
                    int delete = st.executeUpdate(sql);
                    if (delete > 0) {
                        st.executeUpdate(" update raw set qty = qty - '" + qty + "',  amount = amount - '" + total + "'  WHERE name = '" + name + "' ");
                        AdminRes dd = new AdminRes();
                        dd.debitAcct("consumables", mytotal);

                        dd.creditacct("cash-at-hand", mytotal);
                    }

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!" + s);
                }
                response.sendRedirect("displaypurchase.jsp");

            } else if (request.getParameter("deletestaff") != null) {

                String value = request.getParameter("deletestaff");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    String sql = "DELETE FROM admin WHERE staffno = '" + kw + "'";
                    int delete = st.executeUpdate(sql);


                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("displaystaff.jsp");

            } else if (request.getParameter("activatestaff") != null) {

                String value = request.getParameter("activatestaff");
                String kw = String.valueOf(value);
                String status = "";
                try {


                    Statement st = con.createStatement();
                    String result = "select status from admin WHERE staffno = '" + kw + "'";
                    ResultSet rs = st.executeQuery(result);
                    if (rs.next()) {
                        status = rs.getString("status");
                    }
                    out.print(status);
                    if (status.equals("Active")) {
                        String sql = "update admin set status = 'Inactive' WHERE staffno = '" + kw + "'";
                        st.executeUpdate(sql);
                    }

                    if (status.equals("Inactive")) {
                        String sql = "update admin set status = 'Active' WHERE staffno = '" + kw + "'";
                        st.executeUpdate(sql);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                response.sendRedirect("displaystaff.jsp");

            } else if (request.getParameter("actstaff") != null) {

                String value = request.getParameter("actstaff");
                String kw = String.valueOf(value);
                String status = "";
                try {

                    Statement st = con.createStatement();

                    String sql = "update admin set status = 'Active'";
                    st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                response.sendRedirect("displaystaff.jsp");

            } else if (request.getParameter("actastaff") != null) {

                String value = request.getParameter("actastaff");
                String kw = String.valueOf(value);
                String status = "";
                try {

                    Statement st = con.createStatement();

                    String sql = "update admin set status = 'Inactive'";
                    st.executeUpdate(sql);

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                response.sendRedirect("displaystaff.jsp");

            } else if (request.getParameter("verify") != null) {

                String value = request.getParameter("verify");
                String kw = String.valueOf(value);
                String status = "";
                try {


                    Statement st = con.createStatement();
                    String result = "select verify from ourinvoice WHERE invoiceid = '" + kw + "'";
                    ResultSet rs = st.executeQuery(result);
                    if (rs.next()) {
                        status = rs.getString("verify");
                    }
                    out.print(status);
                    if (status.equals("Verified")) {
                        String sql = "update ourinvoice set verify = 'Not Verified' WHERE invoiceid = '" + kw + "'";
                        st.executeUpdate(sql);
                    }

                    if (status.equals("Not Verified")) {
                        String sql = "update ourinvoice set verify = 'Verified' WHERE invoiceid = '" + kw + "'";
                        st.executeUpdate(sql);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                response.sendRedirect("displayinvoice.jsp");

            } else if (request.getParameter("deleteextra") != null) {
                float total = 0;
                String value = request.getParameter("deleteextra");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    String sql = "DELETE FROM extrainfo WHERE id = '" + kw + "'";
                    String sql2 = "select total from extrainfo WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        total = rs.getFloat("total");
                    }
                    int delete = st.executeUpdate(sql);

                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        dd.debitAcct("cash-at-hand", total);
                    }

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!");
                }

                response.sendRedirect("selectextrainfo.jsp");

            } else if (request.getParameter("deleteexpenses") != null) {
                float mytotal = 0;
                float balance = 0;
                String acct = "";
                String type = "";
                String value = request.getParameter("deleteexpenses");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    st.executeUpdate("insert into expensesarch select id, branch, expense_date, accountname, receiver, address, phoneno, total_amount, description, amountpaid, balance, approved_by, type from expenses  WHERE id = '" + kw + "' ");
                    String sql = "DELETE FROM expenses WHERE id = '" + kw + "'";
                    String sql2 = "select amountpaid, accountname, type, balance from expenses WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amountpaid");
                        balance = rs.getFloat("balance");
                        acct = rs.getString("accountname");
                        type = rs.getString("type");
                    }
                    int delete = st.executeUpdate(sql);
                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        dd.creditacct(acct, mytotal);
                        dd.debitAcct(type, mytotal);
                        dd.debitAcct("account payable", balance);
                    }

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!" + s);
                }
                response.sendRedirect("displayexpenses.jsp");

            } else if (request.getParameter("deletedeposit") != null) {
                float mytotal = 0;
                String bank = "";
                float balance = 0;
                String value = request.getParameter("deletedeposit");
                String kw = String.valueOf(value);

                try {


                    Statement st = con.createStatement();
                    st.executeUpdate("insert into depositarch select id, branch, date, tellerno, depositor, amount, bank, account from deposit  WHERE id = '" + kw + "' ");
                    String sql = "DELETE FROM deposit WHERE id = '" + kw + "'";
                    String sql2 = "select amount, bank from deposit WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amount");
                        bank = rs.getString("bank");

                    }
                    int delete = st.executeUpdate(sql);
                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        dd.creditacct("cash-at-hand", mytotal);
                        dd.debitAcct(bank, mytotal);
                        // dd.debitAcct("account payable", balance);
                    }

                    st.close();
                } catch (SQLException s) {
                    System.out.println("SQL statement is not executed!" + s);
                }
                response.sendRedirect("displaydeposit.jsp");

            } else if (request.getParameter("deletewithdraw") != null) {
                float mytotal = 0;
                String sales = "";
                String bank = "";
                float balance = 0;
                String value = request.getParameter("deletewithdraw");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    int j = st.executeUpdate("insert into withdrawarch select id, branch, date, chequeno, withdrawal, amount, bank, account from withdraw  WHERE id = '" + kw + "' ");
                    String sql = "DELETE FROM withdraw WHERE id = '" + kw + "'";
                    String sql2 = "select amount, account, bank from withdraw WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amount");
                        bank = rs.getString("account");
                        sales = rs.getString("bank");

                    }
                    
                    if (j> 0) {
                        AdminRes dd = new AdminRes();
                        dd.creditacct(bank, mytotal);
                        dd.debitAcct(sales, mytotal);
                        // dd.debitAcct("account payable", balance);
                        
                        int delete = st.executeUpdate(sql);
                    }
                   
                    st.close();
                } catch (SQLException s) {
                    out.println("SQL statement is not executed!" + s);
                }
                response.sendRedirect("displaywithdrawal.jsp");

            } else if (request.getParameter("deletepayment") != null) {
                float mytotal = 0;
                float balance = 0;
                String acct = "";
                String value = request.getParameter("deletepayment");
                String kw = String.valueOf(value);

                try {

                    Statement st = con.createStatement();
                    st.executeUpdate("insert into paymentarch  select id, branch, date, accountname, vendor, address, phoneno, prev_balance, description, amountpaid, balance, paid_by from payment  WHERE id = '" + kw + "' ");
                    String sql = "DELETE FROM payment WHERE id = '" + kw + "'";
                    String sql2 = "select amountpaid, accountname,  balance from payment WHERE id = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        mytotal = rs.getFloat("amountpaid");
                        balance = rs.getFloat("balance");
                        acct = rs.getString("accountname");
                    }
                    int delete = st.executeUpdate(sql);
                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        Util ut = new Util();
                        dd.creditacct(acct, mytotal);
                        //dd.debitAcct("utility expenses", mytotal);
                        dd.debitAcct("account payable", balance);

                        // ut.updatepayment(id, balance);

                    }

                    st.close();
                } catch (SQLException s) {
                    out.print("SQL statement is not executed!" + s);
                }
                response.sendRedirect("displaypayment.jsp");

            } else if (request.getParameter("voidreceipt") != null) {

                String value = request.getParameter("receiptnumber");
                String kw = String.valueOf(value);
                String message1 = "";
                String reason = request.getParameter("reason");
                float amountpaid = 0;
                float balance = 0;
                String invid = "";
                try {


                    Statement st = con.createStatement();

                    int j = st.executeUpdate("insert into pickuparch select branch, date, pickupid,  custname, invoiceid, custtype, prevbal, description, amtpaid, balance, status, staff, '" + reason + "'  from pickup  WHERE pickupid = '" + kw + "' ");

                    String sql = "DELETE FROM pickup WHERE pickupid = '" + kw + "'";
                    String sql2 = "select * from pickup WHERE pickupid = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql2);
                    while (rs.next()) {
                        amountpaid = rs.getFloat("amtpaid");
                        balance = rs.getFloat("balance");
                        invid = rs.getString("invoiceid");
                    }

                    int delete = st.executeUpdate(sql);

                    if (delete > 0) {
                        AdminRes dd = new AdminRes();
                        dd.debitAcct("cash-at-hand", amountpaid);
                        dd.creditacct("account receivable", balance);

                        st.executeUpdate("update ourinvoice set balance = balance + '" + amountpaid + "' WHERE invoiceid = '" + invid + "' ");

                        // dd.deletecahflow(kw);

                        //dd.deleteextras(kw);

                        message1 = "Pickup successfully deleted and moved to the archive database";

                    } else {
                        message1 = "Cannot void pickup. Check if pickup number is correct";
                        //session.setAttribute("mes", message);
                    }

                    st.close();
                } catch (SQLException s) {
                    out.print(s);
                }

                session.setAttribute("mes1", message1);
                response.sendRedirect("voidinvoice.jsp");

            } else if (request.getParameter("updateitem") != null) {

                //int value = (Integer) session.getAttribute("itemid");
                int itemid = Integer.parseInt(request.getParameter("itemid"));
                //int kw = Integer.parseInt(value);
                String item = request.getParameter("items");
                float price = Float.parseFloat(request.getParameter("price"));
                int qty = Integer.parseInt(request.getParameter("qty"));
                String color = request.getParameter("color");
                String des = request.getParameter("des");
                float total = Float.parseFloat(request.getParameter("total"));

                a.insertupdate(itemid, item, price, qty, color, des, total);


                response.sendRedirect("updateitem.jsp");

            } else if (request.getParameter("mycomment") != null) {


                String des = request.getParameter("remark");

                a.updatecomment(des);

                response.sendRedirect("regcomment.jsp");

            } else if (request.getParameter("mytel") != null) {


                String des = request.getParameter("tel");
                String id = request.getParameter("id");

                a.updatetel(des, id);

                response.sendRedirect("regtel.jsp");


            } else if (request.getParameter("updateinvoice") != null) {


                String id = request.getParameter("id");
                String name = request.getParameter("name");
                String tagno = request.getParameter("tagno");
                String custid = request.getParameter("custno");

                a.updateinvoice(name, custid, tagno, id);

                response.sendRedirect("displayinvoice.jsp");

            } else if (request.getParameter("updateproduct") != null) {

                //int value = (Integer) session.getAttribute("itemid");
                int itemid = Integer.parseInt(request.getParameter("proid"));
                //int kw = Integer.parseInt(value);
                String item = request.getParameter("pitems");
                String cat = request.getParameter("cat");
                int pcs = Integer.parseInt(request.getParameter("pcs"));

                float price = Float.parseFloat(request.getParameter("price"));
                float price2 = Float.parseFloat(request.getParameter("price2"));
                float price3 = Float.parseFloat(request.getParameter("price3"));
                float price4 = Float.parseFloat(request.getParameter("price4"));
                a.insertupdate1(itemid, item, cat, pcs, price, price2, price3, price4);
                response.sendRedirect("displayitem.jsp");


            } else if (request.getParameter("issue") != null) {

                String value = request.getParameter("issuename");
                String kw = String.valueOf(value);

                int isqty = Integer.parseInt(request.getParameter("isqty"));
                float amount = 0;
                float price = 0;
                float balance = 0;
                int qty = 0;
                int j = 0;
                String name = "";
                String date = (String) session.getAttribute("mynewdate");
                try {


                    Statement st = con.createStatement();
                    Statement st2 = con.createStatement();

                    String sql = "Select * from raw where name = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
                        price = rs.getFloat("price");
                        qty = rs.getInt("qty");
                        name = rs.getString("name");
                        //date = rs.getDate(1).toString();
                    }
                    int tqty = qty - isqty;
                    amount = isqty * price;
                    balance = tqty * price;
                    if (tqty >= 0) {

                        j = st.executeUpdate(" update raw set qty = '" + tqty + "', amount = '" + balance + "'  WHERE name = '" + kw + "' ");

                    } else {
                        //out.print("No enought raw material available");
                        // session.setAttribute("message", "No enought raw material available");
                    }
                    if (j > 0 && isqty > 0) {
                        AdminRes res = new AdminRes();
                        res.debitAcct("consumables", amount);
                        // res.creditacct("cost of service", amount);


                        st2.executeUpdate("insert into issues values(null, '" + date + "', '" + name + "', " + isqty + ", " + price + ", " + amount + ")");
                    } else {
                        out.println("You must enter a Quantity.");
                        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");

                    }

                    st.close();
                } catch (Exception e) {
                    out.print(e);
                }
                response.sendRedirect("displayconsume.jsp");


            } else if (request.getParameter("purchase") != null) {

                String value = request.getParameter("name");
                String kw = String.valueOf(value);

                int isqty = Integer.parseInt(request.getParameter("qty"));
                float nprice = Float.parseFloat(request.getParameter("price"));
                float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
                float bal = Float.parseFloat(request.getParameter("balance"));
                String date = request.getParameter("date");
                String vendor = request.getParameter("vendor");
                String staff = (String) session.getAttribute("username");
                //String month = request.getParameter("month");
                //String year = request.getParameter("year");
                float amount = 0;
                float price = 0;
                float balance = 0;
                float pbalance = 0;
                String name = "";
                int qty = 0;
                int j = 0;
                try {


                    Statement st = con.createStatement();
                    Statement st2 = con.createStatement();
                    String sql = "Select * from raw where name = '" + kw + "' ";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
                        price = rs.getFloat("price");
                        qty = rs.getInt("qty");
                        pbalance = rs.getFloat("amount");
                        name = rs.getString("name");
                    }
                    int tqty = qty + isqty;
                    amount = isqty * nprice;

                    float gbal = amount + pbalance;
                    if (tqty > 0) {

                        j = st.executeUpdate(" update raw set qty = '" + tqty + "',  price = '" + nprice + "', amount = '" + gbal + "'  WHERE name = '" + kw + "' ");
                    } else {
                        //out.print("No enought raw material available");
                        // session.setAttribute("message", "No enought raw material available");
                    }
                    if (j > 0 && isqty > 0) {
                        AdminRes res = new AdminRes();
                        res.debitAcct("cash-at-hand", amtpaid);

                        res.creditacct("consumables", amtpaid);

                        st2.executeUpdate("insert into purchase values(null, '" + date + "', '" + name + "', '" + isqty + "', '" + nprice + "', '" + amount + "', '" + amtpaid + "', '" + bal + "', '" + vendor + "', '" + staff + "')");
                        //response.sendRedirect("updateproduct.jsp");

                        Auth auth = new Auth();
                        auth.insertcashflow2("Ogudu", date, "OGPItem", "Items Purchase", 0, amount);
                    } else {
                    }

                    st.close();
                } catch (Exception e) {
                    out.print(e);
                }
                response.sendRedirect("displaypurchase.jsp");

            } else if (request.getParameter("updatepackage") != null) {

                int id = Integer.parseInt(request.getParameter("proid"));
                String date = (String) session.getAttribute("onlydate");
                //String date = "2012-12-12";
                String item = request.getParameter("pitems");

                int pics = Integer.parseInt(request.getParameter("pcs"));
                float total = Float.parseFloat(request.getParameter("total"));
                float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
                float bal = Float.parseFloat(request.getParameter("balance"));
                String staff = (String) session.getAttribute("username");
                String month = request.getParameter("month");
                String year = request.getParameter("year");

                a.insertupdate2(id, date, item, pics, total, amtpaid, bal);

                if (amtpaid > 0) {

                    a.insertpackrec(date, item, pics, total, pics, amtpaid, bal, staff);
                } else {
                }
                response.sendRedirect("updatecustpack.jsp");

                out.print("Updated successfully");

            } else if (request.getParameter("updatecustomer") != null) {

                String regno = request.getParameter("regno");
                String surname = request.getParameter("surname");
                String firstname = request.getParameter("firstname");
                String custtype = request.getParameter("custtype");
                String address = request.getParameter("address");
                String day = request.getParameter("day");
                String month = request.getParameter("month");
                String phoneno = request.getParameter("phoneno");
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");

                a.insertupdate3(regno, surname, firstname, custtype, address, day, month, phoneno, email, gender);

                response.sendRedirect("updatecustomerresult.jsp");


            } else if (request.getParameter("updatestaff") != null) {

                String regno = request.getParameter("regno");
                String surname = request.getParameter("surname");
                String firstname = request.getParameter("firstname");
                String custtype = request.getParameter("custtype");
                String address = request.getParameter("address");

                String phoneno = request.getParameter("phoneno");
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                a.insertupdate4(regno, surname, firstname, custtype, address, phoneno, username, password);
                response.sendRedirect("displaystaffupdate.jsp");


            } else if (request.getParameter("debit") != null) {
                String date = (String) session.getAttribute("sqldate");
                String expence = request.getParameter("expence");
                String narate = request.getParameter("narate");
                String expence2 = request.getParameter("expence2");
                float amount = Float.parseFloat(request.getParameter("amount"));
                a.insertjournal(date, narate, expence, expence2, amount);
                response.sendRedirect("displayjournal.jsp");


            } else {
                response.sendRedirect("error.jsp");

            }
           
            con.close();

        %>
    </body>
</html>
