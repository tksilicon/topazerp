<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
%>

<%-- 
    Document   : header
    Created on : Apr 3, 2013, 2:59:46 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <script type="text/javascript">
            function clearThis(target){
                target.value= "";
            }
        </script>


        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }
            table.rowHover a:hover{ background-color: silver; border-bottom:  none; color: white; font-size: 13px;  }
            table.rowHover a:link{  border-bottom:  none; color:  blue; }
            table.rowHover a:visited{  border-bottom:  none; color:  blue; }

        </style>

    </head>
    <body>

        <table align="center" bgcolor="white" width="1205" height="1" frame="vsides" cellpadding="0" cellspacing="0">
            <tr align="center" bgcolor="red" width="1205" height="1"><td>
                </td></tr>
        </table>
        <table align="center" bgcolor="white" width="1205" height="30" frame="vsides" cellpadding="0" cellspacing="1">


            <tbody>


                <tr align="center" bgcolor="#ccffoo " cellpad="5" width="200" height="30">
                    <td align="left"  ONCLICK="history.go(-1)"><input type="button" value="Back" style="background-color:black;font-weight:bold;color:#ffffff;"  >
                    </td>
                    <td align="left"><a href="welcome.jsp"><input type="button" value="Home" style="background-color:black;font-weight:bold;color:#ffffff;"  ></a>
                    </td>
                    <td>
                    <a href="logout.jsp" >
                            <input type="button" value="Log Out"  style="background-color:black;font-weight:bold;color:#ffffff;"  >   </a>

                    </td>

                    <td align="center" valign="middle" width="120"><font color="blue" size="1" face="tahoma">
                            Welcome: &nbsp; <%= session.getAttribute("username")%>
                        </font> </td>
                    <td align="center" valign="middle"><font color="blue" size="1" face="tahoma">
                            Branch: &nbsp; <%= session.getAttribute("mybranch")%>
                        </font>
                    </td>

                    <td align="center" valign="middle">
                        &nbsp;
                        &nbsp;
                        &nbsp;
                    </td>
                    <td valign="middle" width="250">
                        <font color="green" face="arial" size="2">
                            Page:&nbsp;
                        </font>
                        <font color="blue" face="arial" size="2">
                            <b>
                                <script>
                                    var str ="<%=session.getAttribute("pageinfo2")%> >>";
                                    document.write(str.blink());
                                </script>
                            </b>
                        </font>

                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <%
                                    // Set refresh, autoload time as 90 seconds

                                    // Get current time
                                    Calendar calendar = new GregorianCalendar();
                                    String am_pm;
                                    int hour = calendar.get(Calendar.HOUR_OF_DAY);
                                    int minute = calendar.get(Calendar.MINUTE);
                                    int second = calendar.get(Calendar.SECOND);
                                    if (calendar.get(Calendar.AM_PM) == 0) {
                                        am_pm = "AM";
                                    } else {
                                        am_pm = "PM";
                                    }
                                    String CT = hour + ":" + minute + ":" + " " + am_pm;
                                    // out.println("<html><font color='blue' size='2'>" + "Date: " + String.format("%tF\n", calendar) + " .." + "\n" + "</font>" + "</html>");
                                    //out.println("<html><font color='blue' size='2'>" + CT + "\n" + "</font>" + "</html>");
                                    session.setAttribute("mydate", String.format("%tF\n", calendar));
                        %>

                        <%
                                    String nrd = "";
                                   
                                    try {
                                        SQLconnector sqlcon = new SQLconnector();
                                        Connection con = sqlcon.getCon();

                                        Statement st = con.createStatement();

                                        ResultSet rs = st.executeQuery("SELECT  date(now()) from admin ");


                                        while (rs.next()) {

                                            nrd = rs.getString(1);
                                            
                                        }

                                        session.setAttribute("mynewdate", nrd);
                                        out.println("<html><td valign='middle'><font color='blue' size='2'>" + "Date: " + nrd + "\n" + "</font></td></html>");

                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                        %>
                    </td>

                    <td align="right" width="260" valign="middle">
                        <form action="searchresult.jsp" method="post">
                            <input type="text" size="25" value="Search..."  name="sch" onfocus="clearThis(this)"><input type="submit"  value="Search" name="search" size="30" style="background-color: black;font-weight:bold;color:#ffffff;"  />

                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
        <table align="center" width="1205" height="1" frame="vsides" cellpadding="0" cellspacing="0">
            <tr align="center" bgcolor="red" width="1205" height="1"><td>
                </td></tr>

        </table>

    </body>
</html>
