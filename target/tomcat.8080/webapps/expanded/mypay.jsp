<%-- 
    Document   : mypay
    Created on : Feb 19, 2013, 1:19:24 PM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="newpackage2.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>
<%@ page  import="Classespack.*" %>
<%@ page import="java.lang.NullPointerException" %>

        <%
            Auth a = new Auth();
            AdminRes res = new AdminRes();
            if (request.getParameter("payrollrecords") != null) {

                try {

                    int id = Integer.parseInt(request.getParameter("id"));
                    String employee = request.getParameter("employee");
                    String acct = request.getParameter("account");
                    String month = request.getParameter("month");
                    String year = request.getParameter("year");
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

                    //a.insertupdatepay(id, basic, grosspay, tax, netpay, loan);

                    a.insertpayrecord(acct, month, year, employee, basic, medical, transport, feeding, house, utility, clean, pension, od, tax, loan, grosspay, netpay);
                    a.insertcashflow("Ogudu", month + "/" + year, "Payroll", employee, 0, netpay);

                    a.insertupdatepay(id, basic, tax, loan, grosspay, netpay);
                    if(pension > 0){
                    a.insertpension(employee, month, year, pension);
                    }
                    response.sendRedirect("displaypayrollup.jsp");

                } catch (NullPointerException e) {
                    out.print(e);
                }
            } else {
            }
        %>
    