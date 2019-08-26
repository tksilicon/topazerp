<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo2", "Monthly Income Statement");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="Classespack.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Income Statement</title>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="360" frame="border">



            <tbody align="left">


            <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="300"  valign="top">

                <div align="center"   style=" overflow-y: scroll;  height:90px;" >
                    <jsp:include page="selectsortinc.jsp"></jsp:include>

                    <%
                                DecimalFormat formatter = new DecimalFormat("###,###,###");
                               
                    %>


                    <table align="center" dir="LTR" frame="border"  width="940"  height="30" valign="top" cellpadding="1" cellspacing="1">

                        <TR valign="center" bgcolor="#eeeee" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Name</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>
                             <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust.Type</FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">PMT Type</FONT></TD>


                        </TR>
                    </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >   <jsp:include page="selectincomestatedaily_2.jsp" flush="true" ></jsp:include> </div> </td>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>