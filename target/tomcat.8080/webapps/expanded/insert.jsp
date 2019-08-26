<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.*" %>
<%@page import="newpackage2.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>


<%
    Auth aut = new Auth();
    AdminRes res = new AdminRes();
    SQLconnector sqlcon = new SQLconnector();
    Connection con = sqlcon.getCon();
    Statement st = con.createStatement();
    float amtpaid1 = 0;

    if (request.getParameter("mypayroll") != null) {

        String branch = request.getParameter("branch");
        String date = request.getParameter("date");
        String acct = request.getParameter("acctname");
        String employee = request.getParameter("staffname");

        double basic = Double.parseDouble(request.getParameter("basic"));

        double medical = Double.parseDouble(request.getParameter("medical"));
        double transport = Double.parseDouble(request.getParameter("transport"));
        double feed = Double.parseDouble(request.getParameter("feed"));
        double tax = Double.parseDouble(request.getParameter("tax"));
        double loan = Double.parseDouble(request.getParameter("loan"));
        double house = Double.parseDouble(request.getParameter("house"));
        double ut = Double.parseDouble(request.getParameter("utility"));
        double cl = Double.parseDouble(request.getParameter("cleaning"));
        double pension = Double.parseDouble(request.getParameter("pension"));
        double od = Double.parseDouble(request.getParameter("odeduct"));
        // float iou = Float.parseFloat(request.getParameter("gross"));

        aut.insertpayroll(branch, date, acct, employee, basic, medical, transport, feed, house, ut, cl, pension, od, tax, loan);

        response.sendRedirect("regpayroll.jsp");
        session.setAttribute("pay", "Payroll setup successful");

    } else if (request.getParameter("journalentry") != null) {

        String date = (String) session.getAttribute("sqldate");
        String expence = request.getParameter("expence");
        String narate = request.getParameter("narate");
        String expence2 = request.getParameter("expence2");
        float amount = Float.parseFloat(request.getParameter("amount"));
        aut.insertjournal(date, narate, expence, expence2, amount);
        response.sendRedirect("displayjournal.jsp");


    } else if (request.getParameter("payrollrecords") != null) {

        int id = Integer.parseInt(request.getParameter("id"));
        String employee = request.getParameter("employee");
        String acct = request.getParameter("account");
        String month = request.getParameter("month");
        String year = request.getParameter("Year");
        float basic = Float.parseFloat(request.getParameter("salary"));
        float medical = Float.parseFloat(request.getParameter("medical"));
        float transport = Float.parseFloat(request.getParameter("transport"));
        float feeding = Float.parseFloat(request.getParameter("feeding"));
        float house = Float.parseFloat(request.getParameter("housing"));
        float utility = Float.parseFloat(request.getParameter("utility"));
        float clean = Float.parseFloat(request.getParameter("clean"));
        float pension = Float.parseFloat(request.getParameter("pension"));
        float tax = Float.parseFloat(request.getParameter("tax"));
        float loan = Float.parseFloat(request.getParameter("loan"));
        float od = Float.parseFloat(request.getParameter("od"));

        float grosspay = Float.parseFloat(request.getParameter("grosspay"));
        float netpay = Float.parseFloat(request.getParameter("netpay"));

        //aut.insertupdatepay(id, basic, grosspay, tax, netpay, loan);

        aut.insertpayrecord(acct, month, year, employee, basic, medical, transport, feeding, house, utility, clean, pension, od, tax, loan, grosspay, netpay);
        aut.insertcashflow("Ogudu", month + "/" + year, "Payroll", employee, 0, netpay);

        //aut.insertupdatepay(id, basic, grosspay, tax, netpay, loan);

        response.sendRedirect("displaypayrollup.jsp");

    } else if (request.getParameter("pickupform") != null) {

        String branch = (String) session.getAttribute("mybranch");
        String ndate = (String) session.getAttribute("sqldate");


        String invid = request.getParameter("invoiceid");

        float prevbal = Float.parseFloat(request.getParameter("prevbal"));
        String desc = request.getParameter("des");
        float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));

        float balance = Float.parseFloat(request.getParameter("balance"));
        String status = request.getParameter("status");
        String staff = (String) session.getAttribute("username");


        aut.insertpickup(branch, ndate, invid, prevbal, desc, amtpaid, balance, status, staff);
        if (amtpaid > 0) {
            aut.insertcashflow(branch, ndate, "pickid", "Amount Paid on Pick Up", amtpaid, 0);
        }

        //response.sendRedirect("selectpickupCC.jsp");

        //out.print("success");

    } else if (request.getParameter("item") != null) {

        String date = request.getParameter("ddate");
        String no = request.getParameter("id");
        String name = request.getParameter("name");
        String cat = request.getParameter("cat");
        int pic = Integer.parseInt(request.getParameter("pic"));
        float price = Float.parseFloat(request.getParameter("price"));
        float price2 = Float.parseFloat(request.getParameter("unit"));
        float price3 = Float.parseFloat(request.getParameter("price3"));
        float price4 = Float.parseFloat(request.getParameter("price4"));

        aut.insertBd(date, no, name, cat, pic, price, price3, price4, price2);

        response.sendRedirect("success.jsp");

    } else if (request.getParameter("itemdrop") != null) {
        String branch = (String) session.getAttribute("mybranch");
        String date = (String) session.getAttribute("sqldate");
        String custid = (String) session.getAttribute("regno");
        String idd = request.getParameter("idd");
        String items = request.getParameter("items");
        float price = Float.parseFloat(request.getParameter("price"));
        int qty = Integer.parseInt(request.getParameter("qty"));
        int pcs = Integer.parseInt(request.getParameter("pcs"));
        String desc = request.getParameter("desc");
        String color = request.getParameter("color");
        float total = Float.parseFloat(request.getParameter("total"));
        String admin = (String) session.getAttribute("username");

        aut.insertdropitem(branch, date, custid, idd, items, price, qty, pcs, desc, color, total, admin);

        response.sendRedirect("transaction.jsp");

    } else if (request.getParameter("account") != null) {
        String dt = request.getParameter("date");
        String acno = request.getParameter("acctno");
        String acname = request.getParameter("acctname");
        String actype = request.getParameter("accttype");
        float bal = Float.parseFloat(request.getParameter("balance"));


        aut.insertacct(dt, acno, acname, actype, bal);
        response.sendRedirect("displayacct.jsp");


    } else if (request.getParameter("deposit") != null) {
        String branch = request.getParameter("branch");
        String dt = request.getParameter("date");
        String teller = request.getParameter("teller");
        String depositor = request.getParameter("depositor");
        float amount = Float.parseFloat(request.getParameter("amount"));
        String bank = request.getParameter("bank");
        String acct = request.getParameter("acctname");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        int i = aut.insertdeposit(branch, dt, teller, depositor, amount, bank, acct);

        if (i > 0) {
            aut.insertbankstate(branch, dt, "Bank Deposit", acct, amount, 0);
        }


        response.sendRedirect("displaydeposit.jsp");

    } else if (request.getParameter("withdrawal") != null) {
        String branch = request.getParameter("branch");
        String dt = request.getParameter("date");
        String teller = request.getParameter("cheque");
        String depositor = request.getParameter("withdrawal");
        float amount = Float.parseFloat(request.getParameter("amount"));
        String sales = request.getParameter("sales");
        String bank = request.getParameter("acctname");

        String month = request.getParameter("month");
        String year = request.getParameter("year");
        int i = aut.insertwithdraw(branch, dt, teller, depositor, amount, sales, bank);

        if (i > 0) {
            aut.insertbankstate(branch, dt, "Bank Withdrawal", bank, 0, amount);
        }


        response.sendRedirect("displaywithdrawal.jsp");


    } else if (request.getParameter("loan") != null) {

        String date = request.getParameter("date");
        String staff = request.getParameter("staffname");

        float amount = Float.parseFloat(request.getParameter("amount"));
        String term = request.getParameter("term");

        aut.insertloan(date, staff, amount, term);
        response.sendRedirect("displayloan.jsp");

    } else if (request.getParameter("tax") != null) {

        String date = request.getParameter("date");
        String gov = request.getParameter("gov");
        String des = request.getParameter("des");
        float tamount = Float.parseFloat(request.getParameter("tamount"));
        float amountp = Float.parseFloat(request.getParameter("amountp"));
        float balance = Float.parseFloat(request.getParameter("balance"));


        aut.inserttax(date, gov, des, tamount, amountp, balance);
        response.sendRedirect("displaytax.jsp");


    } else if (request.getParameter("customer") != null) {
        String branch = request.getParameter("branch");
        String dt = request.getParameter("date");
        String custno = request.getParameter("custno");
        String surname = request.getParameter("surname");
        String fname = request.getParameter("fname");
        String oname = request.getParameter("oname");
        String addres = request.getParameter("address");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String dob1 = request.getParameter("dob1");
        String dob2 = request.getParameter("dob2");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        //String dob = dob1 + "/" + dob2;


        aut.insertcust(branch, dt, custno, surname, fname, oname, addres, state, country, dob1, dob2, gender, phone, email);
        response.sendRedirect("selectcccustomer.jsp");
        //out.println("Transaction Successfull");
        //out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else if (request.getParameter("mypayment") != null) {
        String branch = request.getParameter("branch");
        String date = request.getParameter("date");
        String acct = request.getParameter("acctname");
        String vendor = request.getParameter("vendor");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        float prevbal = Float.parseFloat(request.getParameter("prevbal"));
        String desc = request.getParameter("desc");
        float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
        float bal = Float.parseFloat(request.getParameter("bal"));
        String admin = request.getParameter("admin");

        String expense = request.getParameter("expence");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String id = "";
        try {

            String sql = "select receiver from expenses where id = '" + vendor + "'";
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                id = rs.getString("receiver");
            }

        } catch (Exception e) {
        }

        aut.insertpayment(branch, date, acct, id, address, phone, prevbal, desc, amtpaid, bal, admin, expense, vendor);

        if (amtpaid > 0) {
            aut.insertcashflow2(branch, date, "1022", vendor, 0, amtpaid);
        }
        response.sendRedirect("displaypayment.jsp");

    } else if (request.getParameter("vendor") != null) {

        String dt = request.getParameter("date");
        String custno = request.getParameter("vendorno");
        String surname = request.getParameter("name");

        String addres = request.getParameter("address");
        String phone = request.getParameter("phone");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        String gender = request.getParameter("gender");

        String email = request.getParameter("email");

        String type = request.getParameter("type");
        //String dob = dob1 + "/" + dob2;


        aut.insertvendor(dt, custno, surname, addres, phone, state, country, gender, email, type);

        response.sendRedirect("displayvendor.jsp");
        //out.println("Transaction Successfull");
        //out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else if (request.getParameter("fundtransfer") != null) {
        String branch = request.getParameter("branch");
        String date = request.getParameter("date");
        String acctfrom = request.getParameter("acctfrom");
        float prevbal = Float.parseFloat(request.getParameter("prevbal"));
        float amount = Float.parseFloat(request.getParameter("amount"));
        String acctto = request.getParameter("acctto");
        String transferby = request.getParameter("transferby");

        aut.insertfundtransfer(branch, date, acctfrom, prevbal, amount, acctto, transferby);
        response.sendRedirect("displaytfund.jsp");


    } else if (request.getParameter("raw") != null) {

        String date = request.getParameter("date");
        String name = request.getParameter("name");
        int qty = Integer.parseInt(request.getParameter("qty"));

        float price = Float.parseFloat(request.getParameter("price"));


        float amt = Float.parseFloat(request.getParameter("amount"));

        aut.insertraw(date, name, qty, price, amt);

        res.creditacct("consumables", amt);

        response.sendRedirect("displayconsume.jsp");


    } else if (request.getParameter("payment2") != null) {
        String branch = request.getParameter("branch");
        String date = request.getParameter("date");
        String acct = request.getParameter("acctname");
        String vendor = request.getParameter("newvendor");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        float prevbal = Float.parseFloat(request.getParameter("prevbal"));
        String desc = request.getParameter("desc");
        float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
        float bal = Float.parseFloat(request.getParameter("bal"));
        String admin = request.getParameter("admin");
        String expense = request.getParameter("expence");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String id = "";
        try {

            String sql = "select vendor from purchase where id = '" + vendor + "'";
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                id = rs.getString("vendor");
            }

        } catch (Exception e) {
        }
        aut.insertpayment2(branch, date, acct, id, address, phone, prevbal, desc, amtpaid, bal, admin, expense, vendor);

        if (amtpaid > 0) {
            aut.insertcashflow2(branch, date, "1022", vendor, 0, amtpaid);
        }
        response.sendRedirect("displaypayment.jsp");



    } else if (request.getParameter("expenses") != null) {

        String branch = request.getParameter("branch");
        String date = request.getParameter("date");
        String acct = request.getParameter("acctname");
        String type = request.getParameter("expence");
        String receiver = request.getParameter("receiver");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        float totalamt = Float.parseFloat(request.getParameter("totalamt"));
        String desc = request.getParameter("desc");
        float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
        float bal = Float.parseFloat(request.getParameter("bal"));
        String admin = request.getParameter("admin");
        //String month = request.getParameter("month");
        //String year = request.getParameter("year");

        aut.insertexpenses(branch, date, acct, receiver, address, phone, totalamt, desc, amtpaid, bal, admin, type);

        if (amtpaid > 0) {
            aut.insertcashflow2(branch, date, "1011", receiver, 0, amtpaid);
            //aut.insertwithdraw(branch, dt, cheque, withdrawal, amt, sales, bank);

        }
        if (acct.equals("Fidelity Bank") || acct.equals("First Bank") || acct.equals("GTBank") && amtpaid > 0) {
            String sql = "insert into withdraw values(null, '" + branch + "', '" + date + "', 'Exp-Form', '" + admin + "', '" + amtpaid + "', '" + type + "', '" + acct + "')";
            st.executeUpdate(sql);

            aut.insertbankstate(branch, date, type, acct, 0, amtpaid);
        }
        response.sendRedirect("displayexpenses.jsp");


    } else if (request.getParameter("desc") != null) {

        String invid = (String) session.getAttribute("id");
        String extra = request.getParameter("acctname");
        float price = Float.parseFloat(request.getParameter("balance"));
        int qty = Integer.parseInt(request.getParameter("quantity"));

        float total = Float.parseFloat(request.getParameter("totalcost"));

        aut.insertextrainfo(invid, extra, qty, price, total);
        response.sendRedirect("transaction.jsp");


    } else if (request.getParameter("ourinvoice") != null) {


        //String day = (String) session.getAttribute("onlyday");
        String ndate = (String) session.getAttribute("sqldate");
        //String time = (String) session.getAttribute("onlytime");
        String invid = (String) session.getAttribute("id");
        String branch = (String) session.getAttribute("mybranch");
        String custname = (String) session.getAttribute("custname");
        String custid = (String) session.getAttribute("regno");
        String address = (String) session.getAttribute("custtype");

        String tagno = request.getParameter("tagno");

        int qty = Integer.parseInt(request.getParameter("totalqty"));

        float discount = Float.parseFloat(request.getParameter("discount"));
        // float subtotal = Float.parseFloat(request.getParameter("stotal"));
        String extra = request.getParameter("extra");
        float gtotal = Float.parseFloat(request.getParameter("grandt"));
        amtpaid1 = Float.parseFloat(request.getParameter("amtpaid"));
        float bal = Float.parseFloat(request.getParameter("bal"));
        String ready = request.getParameter("colldate");
        String d = request.getParameter("day");
        String t = request.getParameter("time");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String day="";

        Statement stt = con.createStatement();
        String sql = "select DAYNAME('"+ready+"') from admin";
        ResultSet rset = stt.executeQuery(sql);
        if(rset.next()){
            day = rset.getString(1);
        }
        float disc = (discount / 100) * gtotal;
        String nready = ready + " " + day.substring(0, 3) + " " + t;
        String staff = (String) session.getAttribute("username");
        String status = "Not Verified";

        String i = aut.insertourinvoice(ndate, invid, branch, custname, custid, address, tagno, qty, disc, extra, gtotal, amtpaid1, bal, nready, staff, day, status);
        //aut.insertid(invid, d);


        if (address.equals("Regular") && amtpaid1 > 0) {
            aut.insertcashflow(branch, ndate, invid, custname, amtpaid1, 0);
        }

        if (custname == null || staff == null || branch == null || bal < 0) {
            response.sendRedirect("transaction.jsp");
        } else {
            if (branch.equals("HEADOFFICE")) {
                String v = "hi";
                String query = "insert into invid values(null, '" + v + "')";
                PreparedStatement st2 = con.prepareStatement(query);
                st2.executeUpdate();

                response.sendRedirect("invoice_1.jsp");
            }
            if (branch.equals("HAVILAHGOLD")) {
                String v = "hi";
                String query = "insert into invid2 values(null, '" + v + "')";
                PreparedStatement st2 = con.prepareStatement(query);
                st2.executeUpdate();

                response.sendRedirect("invoice_1.jsp");
            }
            if (branch.equals("KINGSDELIGHT")) {
                String v = "hi";
                String query = "insert into invid3 values(null, '" + v + "')";
                PreparedStatement st2 = con.prepareStatement(query);
                st2.executeUpdate();
                con.close();
                response.sendRedirect("invoice_1.jsp");
            }
        }

    } else if (request.getParameter("fixedasset") != null) {
        String branch = (String) session.getAttribute("mybranch");
        String date = request.getParameter("date");
        String name = request.getParameter("fixedname");

        String des = request.getParameter("description");

        float cost = Float.parseFloat(request.getParameter("cost"));
        String location = request.getParameter("location");
        int depre = Integer.parseInt(request.getParameter("depre"));

        float nbv = Float.parseFloat(request.getParameter("nbv"));
        String account = request.getParameter("acctname");

        aut.insertfixedasset(branch, date, name, des, cost, location, depre, nbv, account, date);
        //aut.insertcashflow(branch, date, "Asset11", account, 0, cost);

        response.sendRedirect("displayfixedasset.jsp");

        //out.print("success");

    } else if (request.getParameter("initial") != null) {
        String branch = request.getParameter("branch");
        String tagno = request.getParameter("tagno");
        String item = request.getParameter("items");
        String type = request.getParameter("type");
        String indexno = request.getParameter("indesno");
        String day = request.getParameter("day");
        //Date dat = java.util.Date();
        String date = request.getParameter("mydate");
        String operator = (String) session.getAttribute("username");
        String remark = request.getParameter("remark");

        String month = request.getParameter("month");
        String year = request.getParameter("year");

        aut.insertIO(branch, tagno, item, type, indexno, day, date, operator, remark);
        response.sendRedirect("selectinitial.jsp");



    } else if (request.getParameter("packnew") != null) {


        String staff = (String) session.getAttribute("username");
        String date = (String) session.getAttribute("sqldate");
        String custno = request.getParameter("regno");
        String name = request.getParameter("custname");

        int pcs = Integer.parseInt(request.getParameter("pcs"));
        float total = Float.parseFloat(request.getParameter("cost"));
        float amtpaid = Float.parseFloat(request.getParameter("amtpaid"));
        float balance = Float.parseFloat(request.getParameter("balance"));
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        aut.insertnewpack(date, custno, name, pcs, total, amtpaid, balance);
        if (amtpaid > 0) {
            aut.insertpackrec(date, name, pcs, total, pcs, amtpaid, balance, staff);
        } else {
        }
        response.sendRedirect("selectcustpackall.jsp");


        // out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");

    } else if (request.getParameter("discount") != null) {
        String discresult = "";
        String custno = request.getParameter("regno");
        String name = request.getParameter("custname");
        int discount = Integer.parseInt(request.getParameter("disc"));
        int i;

        aut.insertdiscount(custno, name, discount);

       

        response.sendRedirect("discount.jsp");

        // out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");

    } else if (request.getParameter("hanger") != null) {
        String branch = request.getParameter("branch");
        String date = (String) session.getAttribute("sqldate");
        String invoiceno = request.getParameter("invoiceno");
        String tagno = request.getParameter("tagno");
        int hungpack = Integer.parseInt(request.getParameter("hungpack"));
        int folded = Integer.parseInt(request.getParameter("folded"));
        int nohanger = Integer.parseInt(request.getParameter("nohanger"));
        String presser = request.getParameter("presser");

        String collated = (String) session.getAttribute("username");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        aut.inserthanger(branch, date, invoiceno, tagno, hungpack, folded, nohanger, presser, collated);
        response.sendRedirect("selecthanger.jsp");

    } else if (request.getParameter("staff") != null) {
        String branch = request.getParameter("branch");
        String dt = request.getParameter("date");
        String staffno = request.getParameter("staffno");
        String surname = request.getParameter("surname");
        String fname = request.getParameter("fname");
        String oname = request.getParameter("oname");
        String phone = request.getParameter("phone");
        String addres = request.getParameter("address");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String dob = request.getParameter("dob");
        String emptype = request.getParameter("emptype");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String dept = request.getParameter("dept");
        int level = Integer.parseInt(request.getParameter("level"));
        String status = "Active";
        aut.insertstaff(branch, dt, staffno, surname, fname, oname, phone, addres, state, country, dob, emptype, username, password, dept, level, status);

        response.sendRedirect("regstaff.jsp");


    } else if (request.getParameter("branch") != null) {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String manager = request.getParameter("manager");
        String date = request.getParameter("date");


        aut.insertbranch(name, address, manager, date);

        response.sendRedirect("success.jsp");

    } else if (request.getParameter("extra") != null) {
        String dt = request.getParameter("date");
        String name = request.getParameter("name");
        String des = request.getParameter("des");

        float price = Float.parseFloat(request.getParameter("price"));

        aut.insertextra(dt, name, des, price);

        response.sendRedirect("success.jsp");

    } else if (request.getParameter("mycomment") != null) {
        String des = request.getParameter("remark");


        aut.insertcomment(des);


    } else if (request.getParameter("custpref") != null) {
        String dt = request.getParameter("date");
        String customerno = request.getParameter("customerno");
        String pref = request.getParameter("preference");
        String prio = request.getParameter("priority");

        aut.insertcustpref(dt, customerno, pref, prio);

        response.sendRedirect("success.jsp");



        // response.sendRedirect("transaction.jsp");
    } else if (request.getParameter("export") != null) {

        CreateExcelINCSTATE aTE = new CreateExcelINCSTATE();
        aTE.mainm();

        response.sendRedirect("displaycashflow.jsp");

    } else if (request.getParameter("export2") != null) {

        CreateExcegenledger aTE = new CreateExcegenledger();
        aTE.mainm();

        response.sendRedirect("displayacct.jsp");

    } else if (request.getParameter("export3") != null) {

        CreateExceexpenses aTE = new CreateExceexpenses();
        aTE.mainm();

        response.sendRedirect("displayexpenses.jsp");

    } else if (request.getParameter("export4") != null) {

        CreateExceedeposit aTE = new CreateExceedeposit();
        aTE.mainm();

        response.sendRedirect("displaydeposit.jsp");

    } else if (request.getParameter("export5") != null) {

        CreateExceewithdraw aTE = new CreateExceewithdraw();
        aTE.mainm();

        response.sendRedirect("displaywithdrawal.jsp");

    } else if (request.getParameter("export6") != null) {

        CreateExceacctpay aTE = new CreateExceacctpay();
        aTE.mainm();

        response.sendRedirect("displaypayment.jsp");

    } else if (request.getParameter("export7") != null) {

        CreateExcepayrol aTE = new CreateExcepayrol();
        aTE.mainm();

        response.sendRedirect("displaypayroll.jsp");
    } else if (request.getParameter("export8") != null) {

        CreateExcelCust aTE = new CreateExcelCust();
        aTE.mainm();

        response.sendRedirect("success.jsp");

        //response.sendRedirect("displaypayroll.jsp");
    } else if (request.getParameter("export9") != null) {

        CreateExcelFile aTE = new CreateExcelFile();
        aTE.mainm();

        response.sendRedirect("success.jsp");

        //response.sendRedirect("displaypayroll.jsp");
    } else if (request.getParameter("export10") != null) {

        CreateExcelstaff aTE = new CreateExcelstaff();
        aTE.mainm();

        response.sendRedirect("displaystaff.jsp");

    } else if (request.getParameter("export11") != null) {

        CreateExcecashflow aTE = new CreateExcecashflow();
        aTE.mainm();

        response.sendRedirect("displayincomestate.jsp");
    } else if (request.getParameter("export12") != null) {

        CreateExceacctrec aTE = new CreateExceacctrec();
        aTE.mainm();

        response.sendRedirect("displayacctreceivable.jsp");

    } else if (request.getParameter("deprename") != null) {

        String value = request.getParameter("deprename");
        String kw = String.valueOf(value);
        int depre = 0;
        double cost = 0.0;
        double nbv = 0.0;
        String last = null;
        try {

            String sql = "select *  FROM fixedasset WHERE id = '" + kw + "'";
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                depre = rs.getInt("depreciation");
                cost = rs.getDouble("cost");
                nbv = rs.getDouble("nbv");

            }
            //out.print(depre);
            //out.print(nbv);
            int de = 100;
            double d = (depre * nbv) / 100;
            out.print(d);
            double newbal = nbv - d;
            out.print(newbal);

            String sql2 = "update fixedasset set nbv = '" + newbal + "',  lastdepre = '" + session.getAttribute("ddate") + "' where id ='" + kw + "'";
            int i = st.executeUpdate(sql2);

            AdminRes adminRes = new AdminRes();
            adminRes.creditacct("depreciations", d);
            if (i > 0) {
                out.print("Depreciation successful");
            }

        } catch (Exception e) {
            out.print(e);
        }
        response.sendRedirect("displayfixedasset.jsp");
    } else {
        response.sendRedirect("error.jsp");

    }
    con.close();
    st.close();
    //String next = "welcome.jsp";
    //request.getRequestDispatcher(next).forward(request, response);
%>

