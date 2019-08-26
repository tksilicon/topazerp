<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
%>

<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>

<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel="icon"  type="image/gif" href="images/echelonlogo.gif">

<script type="text/javascript">
    function clearThis(target) {
        target.value = "";
    }
</script>
<script type="text/javascript">
    function handleSelect(elm)
    {
        window.location = elm.value + ".jsp";
    }
</script>

<table align="center" bgcolor="white" width="1205" height="1" frame="vsides">
    <tr align="center" bgcolor="red" width="1205" height="1"><td>
        </td></tr>
</table>
<table align="center" bgcolor="white" width="1205" height="30" frame="vsides" cellspacing="1">
    <tbody>
        <tr align="center" bgcolor="#333399" cellpad="5" width="200" height="30">
            <td align="left" ONCLICK="history.go(-1)"><input type="button" value="Back" style="background-color:#330099;font-weight:bold;color:#ffffff;"  >
            </td>

            <td align="left"><a href="transaction.jsp"><input type="button" value="Home" style="background-color:#330099;font-weight:bold;color:#ffffff;"  ></a>
            </td>
            <td>
                <a href="logout.jsp" >
                    <input type="button" value="Log Out"  style="background-color:#330099;font-weight:bold;color:#ffffff;"  >   </a>
            </td>

            <td align="center" valign="middle"><font color="white" size="1" face="tahoma">
                Welcome: &nbsp; <%= session.getAttribute("username")%>
                </font> </td>

            <td align="center" valign="middle">

                <font color="white" size="1" face="tahoma">
                Branch: &nbsp; 
                </font>

                <b>
                    <font color="yellow" face="tahoma" size="1">
                    <%= session.getAttribute("mybranch")%>

                    </font></b>

            </td>

            <td align="right"><font color="#cccccc" face="tahoma" size="2"><b>Invoice Generation/Pick Up/Reports</b></font>


                &nbsp;
                &nbsp;
                &nbsp;
            </td>
            <td>

                <%

                    //response.setIntHeader("Refresh", 150);
                    // Date dt = null;
                    //dt.getDay();
                    Calendar dateTime = Calendar.getInstance();


                    String am_pm;
                    int hour = dateTime.get(Calendar.HOUR);
                    int minute = dateTime.get(Calendar.MINUTE);
                    int second = dateTime.get(Calendar.SECOND);
                    if (dateTime.get(Calendar.AM_PM) == 0) {
                        am_pm = "AM";
                    } else {
                        am_pm = "PM";
                    }
                    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                    out.println("<html><font color='whitesmoke' size='2'>" + "Date: " + String.format("%ta\n", dateTime) + " .." + "\n" + "</font>" + "</html>");
                    out.println("<html><font color='whitesmoke' size='2'>" + String.format("%tF\n", dateTime) + " .." + "\n" + "</font>" + "</html>");
                    out.println("<html><font color='whitesmoke' size='2'>" + CT + "\n" + "</font>" + "</html>");
                    session.setAttribute("date", String.format("%ta\n", dateTime) + String.format("%tF\n", dateTime) + " " + CT);

                    String rd = "";
                     SQLconnector sqlcon = new SQLconnector();
                        Connection con = sqlcon.getCon();

                    try {
                        

                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("SELECT  date(now()) from admin ");


                        while (rs.next()) {

                            rd = rs.getString(1);

                        }
                        //con.close();
                    } catch (Exception e) {
                    }

                    session.setAttribute("myinvoicedate2", String.format("%ta\n", dateTime) + " " + rd + CT);
                    session.setAttribute("onlydate", rd);
                    session.setAttribute("onlyday", String.format("%ta\n", dateTime));
                    session.setAttribute("onlytime", CT);



                %>

            </td>
            <td align="right" width="300">
                <form action="searchresult.jsp" method="post">
                    <input type="text" size="30" value="Search..."  name="sch" onfocus="clearThis(this)"><input type="submit"  value="Search" name="search" size="30" style="background-color: red;font-weight:bold;color:#ffffff;"  />

                </form>
            </td>
        </tr>
    </tbody>
</table>
<table align="center" width="1205" height="1" frame="vsides">
    <tr align="center" bgcolor="red" width="1205" height="1"><td>
        </td></tr>
</table>
<form  action="transaction.jsp" method="post">
    <table align="center" bgcolor="#ccccff" width="1205" height="95" frame="vsides">

        <tr width="700">
            <td align="left">
                <font color="green" face="arial" size="3">Customer:</font>
                <input type="text" name="keyword" size="15" value="Search" onclick="clearThis(this)" />
                <input type="submit" name="search" value="Search" style="background-color:#ff0000;font-weight:  bold;font-size: small; color:#ffffff;" >
            </td>


            <td align="right" >

                <jsp:include flush="true" page="selecttable.jsp"></jsp:include>
                </td>
                <td align="right">

                <jsp:include flush="true" page="branch.jsp"></jsp:include>
                </td>

                <td align="right">

                <jsp:include flush="true" page="custcare.jsp"></jsp:include>
                </td>

            </tr>

       
    </table>
    <table align="center" bgcolor="white" width="1205" height="5"  frame="border">
        <tr align="left" >

            <td align="left"> <INPUT NAME="refresh" TYPE="button" VALUE="Refresh"  style="background-color:red;font-weight:bold;color:#ffffff; height: 28px;" onClick="window.location.reload()" />
            </td>
            <td align="right"><jsp:include flush="true" page="CCreport.jsp"></jsp:include></td>
            </tr>
        </table>

    </form>

    <table align="center" bgcolor="#5f63fc" width="1205" height="20">

        <tr width="400" align="left">
        <%
            if (request.getParameter("custid") != null) {
                String value = request.getParameter("custid");
                String kw = String.valueOf(value);
                SQLconnector SQLcon = new SQLconnector();

                try {

                    //Connection con = SQLcon.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from customers where RegNo = '" + kw + "' ");
                    if (rs.next()) {
        %>
        <td><font color="white" face="arial" size="2"> <b> Cust Reg. No: </b> </font> </td><td><a href="selectcccustpref.jsp?name=<%=rs.getString("RegNo")%>"><input type="text" name="regno" size="7" value="<%=rs.getString("RegNo")%>" ></a> </td> </td>
        <td><font color="white" face="arial" size="2"> <b>Cust. Name: </b></font> </td><td><input type="text" size="20"  name="custname" value="<%=rs.getString("Surname")%>" > </td>
        <td><font color="white" face="arial" size="2"> <b> Address:</b></font> </td><td><input type="text" size="20"  name="address"  value="<%=rs.getString("address")%>" > </td>
        <td><font color="white" face="arial" size="2"> <b>Cust. Type: </b></font> </td><td><a href="selectcustpack.jsp?custno=<%=rs.getString("RegNo")%>"><input type="text" size="10" name="custtype"  value="<%=rs.getString("CustType")%>" ></a> </td>
            <%
                String nme = rs.getString("Surname") + " " + rs.getString("firstname").replace("null", "");
                session.setAttribute("custname", nme);
                // session.setAttribute("custname", rs.getString("Surname"));
                session.setAttribute("regno", rs.getString("RegNo"));
                session.setAttribute("custtype", rs.getString("custtype"));
                session.setAttribute("phoneno", rs.getString("phoneno").replace("null", ""));

            %>

        <%
                    }
                   // con.close();
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
            }
            con.close();
            //response.sendRedirect("transation.jsp");
%>

        <td align="left"> <font color="white" face="arial" size="2"> <b>
                Current Page:&nbsp;
            </b>
            <b>
                <font color="yellow" face="tahoma" size="2">
                <script type="text/javascript">

    var str = "<%=session.getAttribute("pageinfo")%> >>>";
    document.write(str.blink());

                </script>
                </font>
            </b>
        </td>
        <td align="right"> <font color="white" face="arial" size="2"> <b>
                <a href="transaction.jsp" style=" color:  white;" title="Back to Drop Off Page">Home</a>

            </b></font>
        </td>
    </tr>
</table>