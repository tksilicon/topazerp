<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "Void Invoice");
%>
<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Void Invoice</title>

        <script type="text/javascript">
            function validate(){
                var reason = document.getElementById("reason");
                if(reason == null){

                    window.alert("You must enter reason to void this invoice");
                }
               
            }



         </script>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>
       

        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
        <%
                    // Set refresh, autoload time as 90 seconds

                    // Get current time
                    Calendar calendar = new GregorianCalendar();
                    String am_pm;
                    int hour = calendar.get(Calendar.HOUR);
                    int minute = calendar.get(Calendar.MINUTE);
                    int second = calendar.get(Calendar.SECOND);
                    if (calendar.get(Calendar.AM_PM) == 0) {
                        am_pm = "AM";
                    } else {
                        am_pm = "PM";
                    }
                    String CT = hour + ":" + minute + ":" + second + " " + am_pm;

                    session.setAttribute("mydate", String.format("%tF\n", calendar));
        %>


        <table align="center" bgcolor="white" width="1205" height="400" frame="border">



            <tbody align="left">


            <td align="left"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="left" valign="top">

                <form action="deleting.jsp" method="post" >
                    <table align="center" width="500" height="30" bgcolor="purple">
                        <tr>
                            <td align="center"><font color="orange"  face="tahoma" size="3"> <%= session.getAttribute("mes".replace("null", ""))%></font> </td>
                        </tr>
                    </table>

                    <table align="center" width="500" height="45" bgcolor="#eeeeee">

                        <tr>
                            <td><font color="blue" size="3" face="tohoma">Enter Invoice Number: e.g OG201)</font> </td>
                            <td><input type="text" name="invoicenumber" size = "30"> </td>
                        </tr>
                        <tr>
                            <td><font color="blue" size="4" face="tohoma">Reason: </font> </td>
                            <td><textarea cols="45" rows="4" name="reason"></textarea></td>
                        </tr>
                    </table>
                    <table align="center" width="500" height="20" bgcolor="grey">
                        <tr align="right">
                            <td><input type="submit" name="voidinvoice" value="Void Invoice"  style="background-color:red;font-weight:bold;color:#ffffff;"  /></td>
                        </tr>
                    </table>
                </form>

                <table height="20">

                </table>



                <form action="deleting.jsp" method="post">
                    <table align="center" width="500" height="30" bgcolor="purple">
                        <tr>
                            <td align="center"><font color="white"  face="tahoma" size="3"> <%= session.getAttribute("mes1".replace("null", ""))%></font> </td>
                        </tr>
                    </table>
                    <table align="center" width="500" height="45" bgcolor="#eeeeee">

                        <tr>
                            <td><font color="blue" size="3" face="tohoma">Enter Pick up Number:(e.g 101)</font> </td>
                            <td><input type="text" name="receiptnumber" size="30"> </td>
                        </tr>
                           <tr>
                            <td><font color="blue" size="4" face="tohoma">Reason: </font> </td>
                            <td><textarea cols="45" rows="4" name="reason" id="reason"></textarea></td>
                        </tr>
                    </table>
                    <table align="center" width="500" height="20" bgcolor="grey">
                        <tr align="right">
                            <td><input type="submit" name="voidreceipt" value="Void Pickup" style="background-color:red;font-weight:bold;color:#ffffff;"  /></td>
                        </tr>
                    
                    </table>
                </form></td>


            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
            </td>
        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
