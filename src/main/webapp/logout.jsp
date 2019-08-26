<%-- 
    Document   : logout
    Created on : Oct 29, 2014, 12:15:30 PM
    Author     : THANKGOD
--%>


<%@page import="com.topazerp.sales.StaffStatus"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
<%

  
    session.getAttribute("selectedProducts");
    session.getAttribute("custId");
    session.getAttribute("username");

       
    session.removeAttribute("username");
    session.removeAttribute("selectedProducts");
    session.removeAttribute("custId");
    session.removeAttribute("LOGIN_USER");
    session.removeAttribute("cust");
   



    if (session != null) {        
        session.invalidate();       
        response.sendRedirect("index.jsp");
    }







%>
