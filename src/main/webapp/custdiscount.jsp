<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }

    session.setAttribute("pageinfo", "Customer's Discount Setup");
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
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">



        <title>Customer Discount</title>
        <script type="text/javascript">
            function Math()
            {
                // Capture the entered values of two input boxes
                var my_input1 = document.getElementById('cost').value;
                var my_input2 = document.getElementById('paid').value;


                // Add them together and display
                var sum = parseInt(my_input1) - parseInt(my_input2);
                document.getElementById('bal').value = parseInt(sum);

            }
        </script>

        <script type="text/javascript">
            function showEmp(emp_value) {
                if (document.getElementById("custname").value != "-1") {
                    xmlHttp = GetXmlHttpObject()
                    if (xmlHttp == null) {
                        alert("Browser does not support HTTP Request")
                        return
                    }
                    var url = "getvalue.jsp"
                    url = url + "?regno=" + emp_value
                    xmlHttp.onreadystatechange = stateChanged
                    xmlHttp.open("GET", url, true)
                    xmlHttp.send(null)
                }
                else {
                    alert("Please Select customer's Id");
                }
            }
            function stateChanged() {
                document.getElementById("custname").value = "";

                if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                    var showdata = xmlHttp.responseText;
                    var strar = showdata.split(":");
                    if (strar.length == 1) {
                        document.getElementById("").focus();
                        alert("Please Select customer's Id");

                        document.getElementById("custname").value = " ";
                    }
                    else if (strar.length > 1) {
                        var strname = strar[1];
                        document.getElementById("custname").value = strar[1];

                    }
                }
            }

            function GetXmlHttpObject() {
                var xmlHttp = null;
                try {
                    xmlHttp = new XMLHttpRequest();
                }
                catch (e) {
                    try {
                        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e) {
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
        </script>

    </head>
    <body>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="500" frame="border">
                <tbody align="left">
                <td>

                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >
                        <table height="50">

                        </table>
                        <table align="center" frame="border" bgcolor="#333399" width="700" height="40">

                            <tr align="center">
                                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                                <td><font size="2" color="white"><b>DISCOUNT SETUP FORM </b></font>  </td>
                                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
                            </tr>

                        </table>

                        <form action="insert.jsp" method="post" >

                            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="180">

                                <tr>
                                    <td><font color="navy" size="2">Customer No </font> </td>
                                        <%

                                            try {
                                                if (request.getParameter("name") != null) {
                                                    String value = request.getParameter("name");
                                                    String kw = String.valueOf(value);

                                                    //out.print(kw);
                                                    SQLconnector SQLcon = new SQLconnector();

                                                    Connection con = SQLcon.getCon();
                                                    Statement st = con.createStatement();

                                                    String sql = "select regno from customers where regno = '" + kw + "'";

                                                    ResultSet rss = st.executeQuery(sql);

                                        %>

                                <td> <select  name="regno"   width="30" onchange="showEmp(this.value);">
                                        <option value="-1">Select</option>
                                        <%

                                            while (rss.next()) {

                                        %>
                                        <option value="<%=rss.getString("regno")%>"><%=rss.getString("regno")%></option>  


                                        <%
                                            }
                                        %>
                                    </select>  
                                    <%

                                                //response.sendRedirect("regexpenses.jsp");
                                                con.close();
                                            }
                                        } catch (Exception e) {
                                            out.print(e);
                                        }
                                    %>

                                </td>

                                <td ><font color="navy" size="2">Cust. Name: </font> </td>
                                <td ><input type="text" name="custname" id="custname" size="30"> </td>
                            </tr>
                            <tr>

                                <td ><font color="navy" size="2">Discount: </font> </td>
                                <td>
                                    <select name="disc" >

                                        <option value="0">Select discount for this customer</option>
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

                            </tr>



                            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                                <tr align ="center">
                                    <td align ="center"><input type="submit" value="SetUp" size="20" name="discount"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                                    <td align ="center"><a href="discount.jsp"><input type="button" value="View All Discount Customers" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></a> </td>

                                </tr>
                            </table>           

                    </form>


                    <table height="180">

                    </table>

                </div>
            </td>
        </tbody>
    </table>

    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
