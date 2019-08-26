<%-- 
    Document   : Login
    Created on : Feb 18, 2013, 12:54:21 PM
    Author     : deji
--%>

<%@page import="com.topazerp.sales.StaffStatus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.topazerp.sales.*" %>
<%@page import="java.lang.NullPointerException" %>
<%@page import="javax.servlet.ServletContext" %>
<%@page import="com.topazerp.sales.SalesOperations"%>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="icon"  type="image/png" href="images/favicon.png" />


        <title>JSP Page</title>
    </head>
    <body>

        <%

            //SET time_zone = "+00:00"; select now(); use to log user out after 6pm.

            session = request.getSession(false);


            SalesOperations salesOpx = new SalesOperations();


            Calendar cal = new GregorianCalendar();
            cal = SalesOperations.convertCalendar(cal, TimeZone.getTimeZone("Africa/Lagos"));
           

            StaffStatus staff = null;
            String responseMessage = "Invalid Login";


            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String branch = request.getParameter("branch");

            staff = salesOpx.Signin(username, password);

            String next = "";

            //request.getSession(false);
            //cal.get(Calendar.DAY_OF_WEEK) != cal.get(Calendar.SUNDAY))
            


            if (request.getParameter("login") != null
                    //&& cal.get(Calendar.HOUR_OF_DAY) < 23
                    //&& cal.get(Calendar.DAY_OF_WEEK) != 1
                    && staff != null
                    && staff.getPassword().equals(password)
                    && staff.getBranch().equals(branch)
                    && staff.getStatus().equals("Active")
                    && username.equals(username)) {


                if (staff.getDepartment().equals("Sales") && staff.getJobType().equals("Cashier")) {

                    session.setAttribute("username", staff.getUsername());
                    session.setAttribute("LOGIN_USER", staff);
                    next = "odicsales.jsp";


                } else if (staff.getDepartment().equals("Sales") && staff.getJobType().equals("Cashier-Temp")) {

                    session.setAttribute("username", staff.getUsername());
                    session.setAttribute("LOGIN_USER", staff);
                    next = "odicsales.jsp";


                }
                else if (staff.getDepartment().equals("Sales") && staff.getJobType().equals("Cashier-Others")) {

                    session.setAttribute("username", staff.getUsername());
                    session.setAttribute("LOGIN_USER", staff);
                    next = "odicsales.jsp";


                }
                
                

                response.sendRedirect(next);



            } else {

                response.sendRedirect("index.jsp?responseMessage=" + responseMessage);

            }





































            /* if (userid.equals("") && branch.equals("")) {
            next = "index.jsp";
            } else if (userid.equals("Admin") && !branch.equals("")) {
            // auth.insertlog(username);
            String date = "";
            String time = "";
            Statement st2 = con.createStatement();
            String sequel = "select date(now()), curtime() from admin";
            ResultSet rs = st2.executeQuery(sequel);
            if (rs.next()) {
            date = rs.getString(1);
            time = rs.getString(2);
            }
            String sql = "insert into log values(null, ?, '" + date + "', '" + CT + "')";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, username);
            int i = st.executeUpdate();
            
            next = "welcome.jsp";
            } else if (userid.equals("Customer Service") && !branch.equals("")) {
            // auth.insertlog(username);
            String date = "";
            String time = "";
            Statement st2 = con.createStatement();
            String sequel = "select date(now()), curtime() from admin";
            ResultSet rs = st2.executeQuery(sequel);
            if (rs.next()) {
            date = rs.getString(1);
            time = rs.getString(2);
            }
            String sql = "insert into log values(null, ?, '" + date + "', '" + CT + "')";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, username);
            int i = st.executeUpdate();
            
            next = "transaction.jsp";
            
            } else if (userid.equals("operation dept") && !branch.equals("")) {
            // auth.insertlog(username);
            String date = "";
            String time = "";
            Statement st2 = con.createStatement();
            String sequel = "select date(now()), curtime() from admin";
            ResultSet rs = st2.executeQuery(sequel);
            if (rs.next()) {
            date = rs.getString(1);
            time = rs.getString(2);
            }
            String sql = "insert into log values(null, ?, '" + date + "', '" + CT + "')";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, username);
            int i = st.executeUpdate();
            
            next = "operation1.jsp";
            } else if (userid.equals("Manager") && !branch.equals("")) {
            // auth.insertlog(username);
            String date = "";
            String time = "";
            Statement st2 = con.createStatement();
            String sequel = "select date(now()), curtime() from admin";
            ResultSet rs = st2.executeQuery(sequel);
            if (rs.next()) {
            date = rs.getString(1);
            time = rs.getString(2);
            }
            String sql = "insert into log values(null, ?, '" + date + "', '" + CT + "')";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, username);
            int i = st.executeUpdate();
            
            next = "operation2.jsp";
            } else {
            next = "index.jsp";
            }
            session.setAttribute("userid", userid);
            session.setAttribute("staffDetails", staff);
            session.setAttribute("level", id);
            
            session.setAttribute("username", username.toUpperCase());
            session.setAttribute("mybranch", branch.toUpperCase());
            
             */

        %>
    </body>
</html>
