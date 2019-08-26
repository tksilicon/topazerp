<%-- 
    Document   : insert
    Created on : Aug 10, 2012, 11:06:27 AM
    Author     : user
--%>

<%@page import="Classespack.AcctBal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>

        <form action ="mypay.jsp"  method="post">
            <table align="center"   frame="border"  id="customer" width="940"  height="130" cellspacing="1"> 
                <tr width="400" align="left">
                    <%
                        if (request.getParameter("updatepayroll") != null) {
                            String value = request.getParameter("updatepayroll");
                            String kw = String.valueOf(value);
                            SQLconnector SQLcon = new SQLconnector();

                            try {

                                Connection con = SQLcon.getCon();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from paysolution where id = '" + kw + "' ");


                                if (rs.next()) {

                                    session.setAttribute("id", rs.getInt("id"));
                    %>
                <tr bgcolor="#eeeeee">
                <input type="hidden"  name="account" size="2"  value="<%=rs.getString("account")%>" > </td>

                <td><input type="text" readonly="readonly" name="id" size="2"  value="<%=rs.getInt("id")%>" > </td>
                <td><font color="black"  face="arial" size="2"> <b> Employee:</b> </font> </td><td><input readonly="readonly" type="text" name="employee" size="15"  value="<%=rs.getString("employee")%>" ></td>
                <td><font color="black" face="arial" size="2"> <b>Basic Salary: </b></font> </td><td><input type="text" size="6"  name="salary" value="<%=rs.getString("basicsalary")%>" > </td>
                <td><font color="black" face="arial" size="2"> <b>Medical Allwe:</b></font> </td><td><input type="text" size="6"  name="medical" id="input11"  value="<%=rs.getFloat("medical")%>" > </td>
                <td><font color="black" face="arial" size="2"> <b>Transport Allwe: </b></font> </td><td><input type="text" size="6" name="transport" id="input22" value="<%=rs.getInt("transport")%>" > </td>
                <td><font color="black" face="arial" size="2"> <b>Feeding: </b></font> </td><td><input type="text" size="6" name="feeding"  value="<%=rs.getString("feeding")%>" > </td>
                </tr>
                <tr bgcolor="#eeeeee">
                    <td><font color="black" face="arial" size="2"> <b>Housing: </b></font> </td><td><input type="text" size="6" name="housing"  value="<%=rs.getString("housing")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Utility: </b></font> </td><td><input type="text" size="6" name="utility"  value="<%=rs.getString("utility")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Cleaning: </b></font> </td><td><input type="text" size="6" name="clean"  value="<%=rs.getString("cleaning")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Pension: </b></font> </td><td><input type="text" size="6" name="pension"  value="<%=rs.getString("pension")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Other Deduct: </b></font> </td><td><input type="text" size="6" name="od"  value="<%=rs.getString("odedut")%>" > </td>
                </tr>
                <tr bgcolor="#eeeeee">
                    <td><font color="black" face="arial" size="2"> <b>Tax: </b></font> </td><td><input type="text" size="6" name="tax" id="mytotal"  value="<%=rs.getFloat("tax")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Loan: </b></font> </td><td><input type="text" size="6" name="loan" id="mytotal"   value="<%=rs.getFloat("loan")%>" > </td>
                    <td><font color="black" face="arial" size="2"> <b>Gross Pay: </b></font> </td><td><input type="text" size="6" name="grosspay" id="mytotal"  value="<%=rs.getFloat("grosspay")%>" > </td>

                    <td><font color="black" face="arial" size="2"> <b>Net Pay: </b></font> </td><td><input type="text" size="6" name="netpay" id="mytotal"   value="<%=rs.getFloat("netpay")%>" > </td>

                    <td><font color="black" face="arial" size="2"> <b>Period: Month: </b> <select name="month">
                                <option>Jan</option>
                                <option>Feb</option>
                                <option>March</option>
                                <option>April</option>
                                <option>May</option>
                                <option>June</option>
                                <option>July</option>
                                <option>Aug</option>
                                <option>Sept</option>
                                <option>Oct</option>
                                <option>Nov</option>
                                <option>Dec</option>
                            </select> </td>
                    <td><font color="black" face="arial" size="2"> <b>Year: </b> <select name="year">
                                <option>2014</option>
                                <option>2015</option>
                                <option>2016</option>
                                <option>2017</option>
                                <option>2018</option>
                                <option>2019</option>
                                <option>2020</option>
                                <option>2021</option>
                                <option>2022</option>
                                <option>2023</option>
                                <option>2024</option>
                                <option>2025</option>
                                <option>2026</option>
                                <option>2027</option>
                                <option>2028</option>
                                <option>2029</option>
                                <option>2030</option>
                            </select> </td>

                    <td align="center"><input type= "submit" size="20" name = "payrollrecords"  value="Post Payroll"  style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>
                </tr>
                <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    } else {
                    }

                    //response.sendRedirect("transation.jsp");
                %>

            </table>
        </form>

        <jsp:include flush="false" page="selectpayroll.jsp"></jsp:include>


    </body>
</html>
