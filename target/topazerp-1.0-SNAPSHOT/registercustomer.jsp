<%-- 
    Document   : registercustomer
    Created on : Jan 17, 2015, 1:32:07 AM
    Author     : THANKGOD
--%>

<%@page import="java.sql.Connection"%>
<%@page import="com.topazerp.sales.SalesConnection"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
<%@page import="com.topazerp.sales.OdicUtil"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.topazerp.sales.StaffStatus"%>
<%
    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");

    StaffStatus staff = null;


    String username = (String) session.getAttribute("username");
    Customer cust = null;

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");


    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }
%>

<%@page import="com.odic.sales.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            Calendar cal = OdicUtil.generateDate();

            String custname = "";
            String address = "";
            String phoneno = "";

            Customer newCust = null;




            String custtype;
            String state;
            String country;
            String day;
            String month;
            String gender;

            String email;

            newCust = new Customer();
            newCust.setBranch(staff.getBranch());

            newCust.setRegno(request.getParameter("custno"));
            newCust.setRegDate2(cal.getTime());

            if (!request.getParameter("title").equals("")) {
                newCust.setTitle(request.getParameter("title"));
                custname = custname + " " + request.getParameter("title") + " ";

            }

            newCust.setSurname(request.getParameter("surname"));
            custname = custname + request.getParameter("surname");

            String customerbalancetype = request.getParameter("customerbalancetype");
            String customerbalance2014 = request.getParameter("customerbalance2014");
            String customerbalance2013 = request.getParameter("customerbalance2013");






            if (request.getParameter("customerbalance") != null) {
                double bal = newCust.getCustomerBalance();
                double enteredBal = Double.parseDouble(request.getParameter("customerbalance"));

                if (customerbalancetype.equals("negative")) {
                    bal = bal - enteredBal;
                } else {
                    bal = bal + enteredBal;
                }

                newCust.setCustomerBalance(bal);

            } else {
                newCust.setCustomerBalance(0);
            }



            if (request.getParameter("customerbal2014") != null) {

                double bal = newCust.getCustomerBalance();
                double enteredBal = Double.parseDouble(request.getParameter("customerbal2014"));

                if (customerbalance2014.equals("negative")) {
                    bal = bal - enteredBal;
                } else {
                    bal = bal + enteredBal;
                }

                newCust.setCustomerBalance(bal);
                newCust.setCustomerbal2014(enteredBal);
            } else {
                newCust.setCustomerbal2014(0);
            }



            if (request.getParameter("customerbal2013") != null) {

                double bal = newCust.getCustomerBalance();
                double enteredBal = Double.parseDouble(request.getParameter("customerbal2013"));

                if (customerbalance2013.equals("negative")) {
                    bal = bal - enteredBal;
                } else {
                    bal = bal + enteredBal;
                }

                newCust.setCustomerBalance(bal);
                newCust.setCustomerbal2013(enteredBal);

            } else {
                newCust.setCustomerbal2013(0);
            }

            if (request.getParameter("fname") != null) {
                newCust.setFirstname(request.getParameter("fname"));
                custname = custname + " " + request.getParameter("fname");
            }

            if (request.getAttribute("phone") != null) {
                phoneno = request.getParameter("phone");
                newCust.setPhoneno(phoneno);
            }

            if (request.getParameter("address") != null) {
                address = request.getParameter("address");
                newCust.setAddress(address);
            }

            if (request.getParameter("state") != null) {
                state = request.getParameter("state");
                newCust.setState(state);
            }



            if (request.getParameter("country") != null) {
                country = request.getParameter("country");
                newCust.setCountry(country);
            }



            if (request.getParameter("gender") != null) {
                gender = request.getParameter("gender");
                newCust.setGender(gender);
            }


            if (request.getParameter("month") != null) {
                month = request.getParameter("month");
                newCust.setMonth(month);
            }

            if (request.getParameter("day") != null) {
                day = request.getParameter("day");
                newCust.setDay(day);
            }

            if (request.getParameter("email") != null) {
                email = request.getParameter("email");
                newCust.setEmail(email);
            }


            custtype = request.getParameter("custtype");
            newCust.setCusttype(custtype);
            newCust.setCreditLimit(0);

            SalesOperations salesOpx = new SalesOperations();
            
            SalesConnection salesCon = new SalesConnection();
            Connection con = salesCon.getCon();
            con.setAutoCommit(false);

            int maxnumber = 0;

            if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                maxnumber = salesOpx.getLatestCustomerNo(staff, "CUN", con);
            } else if (staff.getBranch().equals("PLAZA")) {
                maxnumber = salesOpx.getLatestCustomerNo(staff, "PLZC", con);
            } else if (staff.getBranch().equals("CA19")) {
                maxnumber = salesOpx.getLatestCustomerNo(staff, "CA19C", con);
            } else if (staff.getBranch().equals("B/25 No 26")) {
                maxnumber = salesOpx.getLatestCustomerNo(staff, "B25C", con);
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

            newCust.setRegno(custRegNo);

            salesOpx.saveNewCustomer3(newCust, con);

            if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                salesOpx.updateCustomerNo(maxnumber, "CUN", con);
            } else if (staff.getBranch().equals("PLAZA")) {
                salesOpx.updateCustomerNo(maxnumber, "PLZC", con);
            } else if (staff.getBranch().equals("CA19")) {
                salesOpx.updateCustomerNo(maxnumber, "CA19C", con);
            } else if (staff.getBranch().equals("B/25 No 26")) {
                salesOpx.updateCustomerNo(maxnumber, "B25C", con);

            }



            response.sendRedirect("custbal.jsp");

        %>



    </body>
</html>
