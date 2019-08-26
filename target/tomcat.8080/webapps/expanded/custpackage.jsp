<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }

session.setAttribute("pageinfo", "Package Customer Registration Form");
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



        <title>Customer Package</title>
        <script type="text/javascript">
            function Math()
            {
                // Capture the entered values of two input boxes
                var my_input1 = document.getElementById('cost').value;
                var my_input2 = document.getElementById('paid').value;
                

                // Add them together and display
                var sum = parseInt(my_input1)- parseInt(my_input2);
                document.getElementById('bal').value = parseInt(sum);
                
            }
        </script>
         <script type="text/javascript">
function show_now(){
var my_day=new Date()
//var dt = new Date(\"Aug 16, 2005 05:55:00\");


var month_name=new Array(12);
month_name[0]="Jan"
month_name[1]="Feb"
month_name[2]="March"
month_name[3]="April"
month_name[4]="May"
month_name[5]="June"
month_name[6]="July"
month_name[7]="Aug"
month_name[8]="Sept"
month_name[9]="Oct"
month_name[10]="Nov"
month_name[11]="Dec"

//alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
document.getElementById('mmonth').value = month_name[my_day.getMonth()];
document.getElementById('myear').value = my_day.getUTCFullYear();
}
</script>

        <script type="text/javascript">
            function display()
            {
               
                if( document.getElementById('pcs').value == "30"){
                    document.getElementById('cost').value = "13000"
                }
                else if( document.getElementById('pcs').value == "50"){
                    document.getElementById('cost').value = "21500"
                }
                else if( document.getElementById('pcs').value == "80"){
                    document.getElementById('cost').value = "34000"
                }
                else if( document.getElementById('pcs').value == "100"){
                    document.getElementById('cost').value = "42000"
                }
                else if( document.getElementById('pcs').value == "Select"){
                    document.getElementById('cost').value = "0"
                }
                else{
                   
                }
                
            }
        </script>


        <script type="text/javascript">
            function showEmp(emp_value){ 
                if(document.getElementById("custname").value!="-1"){
                    xmlHttp=GetXmlHttpObject()
                    if (xmlHttp==null){
                        alert ("Browser does not support HTTP Request")
                        return
                    }
                    var url="getvalue.jsp"
                    url=url+"?regno="+emp_value
                    xmlHttp.onreadystatechange=stateChanged 
                    xmlHttp.open("GET",url,true)
                    xmlHttp.send(null)
                }
                else{
                    alert("Please Select customer's Id");
                }
            }
            function stateChanged(){ 
                document.getElementById("custname").value ="";

                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") { 
                    var showdata = xmlHttp.responseText; 
                    var strar = showdata.split(":");
                    if(strar.length==1){
                        document.getElementById("").focus();
                        alert("Please Select customer's Id");
  
                        document.getElementById("custname").value =" ";
                    }
                    else if(strar.length>1) {
                        var strname = strar[1];
                        document.getElementById("custname").value= strar[1];

                    }
                } 
            }

            function GetXmlHttpObject(){
                var xmlHttp=null;
                try{
                    xmlHttp=new XMLHttpRequest();
                }
                catch (e) {
                    try {
                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e)  {
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
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
                            <td><font size="4" color="white"><b>CUSTOMER'S PACKAGE REGISTRATION FORM </b></font>  </td>
                            <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
                        </tr>


                    </table>

                    <form action="insert.jsp" method="post" >




                        <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="180">

                            <tr>
                                <td><font color="navy" size="3">Customer No </font> </td>
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



                                <td ><font color="navy" size="3">Cust. Name: </font> </td>
                                <td ><input type="text" name="custname" id="custname" size="30"> </td>
                            </tr>
                            <tr>

                                <td ><font color="navy" size="3">Total Pieces: </font> </td>
                                <td> <select  name="pcs"  id="pcs"  width="30" onchange="display();" >
                                        <option>   Select   </option>
                                        <option>   30   </option>
                                         <option>   80   </option>
                                        <option>   50   </option>
                                        <option>   100   </option>


                                    </select>
                                </td>

                                <td ><font color="navy" size="3">  Total Cost: </font> </td>
                                <td ><input type="text" name="cost" id="cost" size="30"> </td>
                            </tr>


                            <tr>

                                <td ><font color="navy" size="3"> Amount Paid: </font> </td>
                                <td ><input type="text" name="amtpaid" value="0" id="paid" onmouseover="show_now();"  size="30"> </td>

                                <td ><font color="navy" size="3"> Balance: </font> </td>
                                <td ><input type="text" name="balance" id="bal" onclick="Math();" onmouseover="show_now();" size="30"> </td>

                            </tr>

                        </table>
                        <input type="hidden" name="month" id="mmonth" >
                        <input type="hidden" name="year" id="myear" >
                        <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                            <tr align ="left">
                                <td align ="left"><input type="submit" value="Register" size="20" name="packnew"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                                <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>

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
