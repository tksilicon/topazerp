<%-- 
    Document   : selectsortinc
    Created on : Apr 24, 2013, 8:47:16 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table align="left" width="100">
            <tr>
                <td></td>
            </tr>

        </table>


        <form action="selectgarment.jsp" method="post">
            <table width="350" align="left">
            <tr bgcolor="#eeeee">
                                <td>Enter Date:</td>
                                <td><input type="text" name="snewdate" value="<%=session.getAttribute("mynewdate")%>"</td>

                                <td><input type="submit" name="vnewdate" value="Submit">  </td>
                            </tr>
        </table>
        </form>

<table align="left" width="50">
            <tr>
                <td></td>
            </tr>

        </table>
                <form action="selectgarmentmonth.jsp" method="post">
                <table width="300" align="left">
            <tr bgcolor="blue">
                    <td><font color="#eeeee" face="arial" size="2"> <b>Month: </b></font>
                        <select name="month">
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
                    <td>
                        And
                    </td>
                    <td><font color="black" face="arial" size="2"> <b>Year: </b></font>
                        <select name="year">
                           
                            <option>2013</option>
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
                         <td><input type="submit" name="gmonth" value="View"></td>
            </tr>
        </table>
        </form>

                <table align="left" width="50">
            <tr>
                <td></td>
            </tr>

        </table>
                <form action="selectgarmentyear.jsp" method="post">

            <table width="250" align="left">
                <tr bgcolor="#eeeee">

                    <td><font color="black" face="arial" size="2"><b>Yearly reports: </b></font></td>

                    <td><select name="year">
                            <option>2010</option>
                            <option>2011</option>
                            <option>2012</option>
                            <option>2013</option>
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
                    <td><input type="submit" name="gyear" value="View"></td>
                </tr>
            </table>
        </form>

    </body>
</html>
