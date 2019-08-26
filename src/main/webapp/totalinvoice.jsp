<%-- 
    Document   : totalinvoice
    Created on : Dec 17, 2012, 5:32:30 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.*"%>

<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function Maths()
            {

            var input3 = document.getElementById('input3').value;
            var input4 = document.getElementById('input4').value;
            var total = document.getElementById('grandtotal').value;
            var disc = parseFloat(input3)/100 * parseFloat(total);

            var ded = parseFloat(disc) + parseFloat(input4);

            var bal = parseFloat(total) - parseFloat(ded);

            document.getElementById('balance').value = parseFloat(bal);
            }
        </script>

        <script type="text/javascript">
            function show_now() {
            var my_day = new Date()
            //var dt = new Date(\"Aug 16, 2005 05:55:00\");

            var day_name = new Array(7);
            day_name[0] = "Sun"
            day_name[1] = "Mon"
            day_name[2] = "Tue"
            day_name[3] = "Wed"
            day_name[4] = "Thur"
            day_name[5] = "Fri"
            day_name[6] = "Sat"

            //alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
            document.getElementById('mday').value = day_name[my_day.getDay() + 2];

            var month_name = new Array(12);
            month_name[0] = "Jan"
            month_name[1] = "Feb"
            month_name[2] = "March"
            month_name[3] = "April"
            month_name[4] = "May"
            month_name[5] = "June"
            month_name[6] = "July"
            month_name[7] = "Aug"
            month_name[8] = "Sept"
            month_name[9] = "Oct"
            month_name[10] = "Nov"
            month_name[11] = "Dec"

            //alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
            document.getElementById('mmonth').value = month_name[my_day.getMonth()];
            document.getElementById('myear').value = my_day.getUTCFullYear();
            }
        </script>

        <script type="text/javascript">
            function show_month() {
            var my_day = new Date()
            //var dt = new Date(\"Aug 16, 2005 05:55:00\");

            var day_name = new Array(12);
            day_name[0] = "Jan"
            day_name[1] = "Feb"
            day_name[2] = "March"
            day_name[3] = "April"
            day_name[4] = "May"
            day_name[5] = "June"
            day_name[6] = "July"
            day_name[7] = "Aug"
            day_name[8] = "Sept"
            day_name[9] = "Oct"
            day_name[10] = "Nov"
            day_name[11] = "Dec"

            //alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
            document.getElementById('mmonth').value = day_name[my_day.getMonth()];
            document.getElementById('myear').value = my_day.getYear();
            }
        </script>
        <script type="text/JavaScript">
            <!--
            function MM_findObj(n, d) { //v4.01
            var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
            d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
            if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
            for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
            if(!x && d.getElementById) x=d.getElementById(n); return x;
            }

            function MM_validateForm() { //v4.0
            var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
            for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
            if (val) { nm=val.name; if ((val=val.value)!="") {
            if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
            if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
            } else if (test!='R') { num = parseFloat(val);
            if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
            if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
            } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
            } if (errors) alert('The Following Fields are Compulsory:\n'+errors);
            document.MM_returnValue = (errors == '');
            }
            //-->
        </script>
    </head>
    <body>
        <form action="insert.jsp" method="post" onsubmit="MM_validateForm('id', '', 'R', 'day', '', 'R', 'tagno', '');
                return document.MM_returnValue">
            <table align="center" bgcolor="#663399" width="1205" height="50" frame="border" valign="top" >
                <tr>
                    <td><font color="white" face="arial" size="2"><b>I.P: </b>  </font></td>
                    <td><input type="text" name="extra" value="" size="11" id="ip" style=" font-weight: bold;">
                        <%
                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();
                            String date2 = "";
                            try {

                                Statement st = con.createStatement();
                                String sql = "select CURDATE() + INTERVAL 2 DAY from admin";
                                ResultSet rs = st.executeQuery(sql);
                                if (rs.next()) {
                                    date2 = rs.getString(1);
                                }

                                //session.setAttribute("myinvoicedate", String.format("%ta\n", dateTime)+" "+rd+"-"+rd1+"-"+rd2 + CT);
%>
                    <td><font face="tahoma" size="2" color="white">C.Date:</font></td><td> <input type="date" name="colldate" value="<%=date2%>" size="10" style=" font-weight: bold;"> </td>

                   
                    
                    <td><font face="tahoma" size="2" color="white" >Time:</font></td><td> <input type="text" name="time" value="5.00PM" size="4" style=" font-weight: bold;"> </td>

                    <%
                            //con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>

                    <%
                        double sum = 0;
                        int sum2 = 0;
                        try {

                            Statement st = con.createStatement();

                            ResultSet rs = st.executeQuery("select sum(total), sum(qty*pcs) from invoicebody where invoiceid = '" + session.getAttribute("id") + "' ");

                            if (rs.next()) {

                                double c = rs.getDouble(1);
                                int c2 = rs.getInt(2);
                                sum = sum + c;
                                sum2 = sum2 + c2;
                            }
                    %>
                    <td><font color="white" face="arial" size="2" >Tag No: </font></td>
                    <td><input type="text" name="tagno" value="<%= session.getAttribute("id")%>"  size="6" style=" font-weight: bold; " ></td>
                    <td><font color="white" face="arial" size="2" ><b>Total Qty:</b> </font></td>
                    <td><input type="text" name="totalqty" readonly="readonly" size="2" value="<%=sum2%>" style=" font-weight: bold;"></td>



                    <td><font color="white" face="arial" size="2" >Disc.:  </font></td>
                        <%
                            int d = 0;

                            String kw = (String) session.getAttribute("regno");

                            //out.print(kw);
                            SQLconnector SQLcon = new SQLconnector();

                            String sql = "select disc from discount where custid = '" + kw + "'";


                            ResultSet rss = st.executeQuery(sql);
                            if (rss.next()) {
                                d = rss.getInt(1);
                            }




                        %>


                    <td>
                        <select name="discount"  id="input3" >
                            <option><%= d%></option>
                            <option>0</option>
                            <option>1</option>

                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                            <option>32</option>
                            <option>33</option>
                            <option>34</option>
                            <option>35</option>
                            <option>36</option>
                            <option>37</option>
                            <option>38</option>
                            <option>39</option>
                            <option>40</option>

                        </select>

                    </td>


                    <td><font color="white" face="arial" size="2">Total: </font></td>
                    <td><input type="text" name="grandt" readonly="readonly" id="grandtotal" size="7" value=" <%=sum%>" style=" font-weight: bold;"></td>
                    <td><font color="white" face="arial" size="2">Deposit:</font></td>
                    <td><input type="text" name="amtpaid" size="7" value="0" id="input4" style=" font-weight: bold;"></td>
                    <td><font color="white" face="arial"  size="2" >Bal.:</font></td>
                    <td><input type="text" name="bal" id="balance"  size="6" readonly="readonly" onclick="Maths();" style=" font-weight: bold;" ></td>

                    <td><input type="submit" name="ourinvoice" value="Post" onmouseover="Maths();" onclick="javascript:return confirm('Are you sure you want to POST this transaction ?\nPlease ask the customer if there is any adjustment\nClick on Cancel button to STOP Posting this transaction\nor Click on OK button to proceed')" style="background-color:red;font-weight:bold;color:#ffffff;" ></td>
                </tr>

            </table>
        </form>
        <%
                con.close();
            } catch (Exception e) {
                out.println(e);
            }
            con.close();
        %>

    </body>
</html>
