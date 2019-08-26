<%-- 
    Document   : getdata
    Created on : Nov 14, 2014, 8:55:52 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.Customer"%>
<%@page import="com.topazerp.sales.autocomplete.ExistingCustomers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%
    ExistingCustomers db = new ExistingCustomers();

    String query = request.getParameter("q");

    List<Customer> customers = db.getData(query);

    Customer cust = null;


    Iterator<Customer> iterator = customers.iterator();
    String surname = "";
    String firstname = "";
    String regno = "";

    String custname = "";
    while (iterator.hasNext()) {
        cust = (Customer) iterator.next();
        surname = cust.getSurname();
        firstname = cust.getFirstname();
        regno = cust.getRegno();


        if (firstname.equals("null")) {
            custname = surname;
        } else {
            custname = surname + " " + firstname;
        }
        cust.setCustname(custname);


        
            out.println(custname + "   CustID-" + regno );
        }
    
%>
