<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "All Items Reports");
%>
<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>Items</title>

        <script type="text/JavaScript">
            <!--
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
            eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
            if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
            alert(msg);
            //-->

            function MM_goToURL() { //v3.0
            var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
            for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
            }
        </script>
        <script type="text/javascript">
            function generateexcel() {
            var table = document.getElementById('customer');
            var html = table.outerHTML;
            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <script>
            function printDiv()
            {
            var divToPrint = document.getElementById('items');
            newWin = window.open("");
            newWin.document.write(divToPrint.outerHTML);
            newWin.print();
            newWin.close();
            }

        </script>

    </head>
    <body>  
        <jsp:include page="cshead.jsp"></jsp:include>
            <table align="center" bgcolor="white" id="items" width="1205" height="600" frame="border">
                <tbody align="left">
                <td>
                    <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; height:  35px;" 
                           ONCLICK="printDiv();" />

                    <INPUT TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099; font-weight:bold; color:#ffffff;  height:  35px;"  />
                    <br>
                    <br>
                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;">
                        <FORM ENCTYPE="multipart/form-data" ACTION="readExcel.jsp" METHOD=POST>
                            <table align="center"   frame="border"  id="customer" width="400"   cellspacing="1">

                                <tr><center><td colspan="2"><p align="center"><B>UPLOAD A REPORT</B><center></td></tr>
                                        <tr><td><b>Choose the Excel File To Upload:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><INPUT  type="FILE" name="datafile" size="70"></td></tr>
                                        <tr align="center"><td colspan="2" align="center">
                                                <INPUT TYPE="submit" name="uploaddata" VALUE="Upload File" style=" background-color:  #22229C; height: 35px; width: 100px; color: whitesmoke;" >
                                            </td>
                                        </tr>
                                        </table>
                                        </FORM>

                                        <table>
                                            <tr>
                                                <td>
                                                <%
                                                    try {
                                                        SQLconnector SQLcon = new SQLconnector();

                                                        Connection con = SQLcon.getCon();
                                                        Statement st = con.createStatement();

                                                        SQLconnectorweb SQLconweb = new SQLconnectorweb();

                                                        Connection conweb = SQLconweb.getCon();


                                                        String query = "select * from ourinvoice ";

                                                        ResultSet rs = st.executeQuery(query);
                                                        if (rs.next()) {
                                                            String date = rs.getString(1);
                                                            String invid = rs.getString(2);
                                                            String branch = rs.getString(3);
                                                            String custname = rs.getString(4);
                                                            String custid = rs.getString(5);
                                                            String type = rs.getString(6);
                                                            String tagno = rs.getString(7);
                                                            int qty = rs.getInt(8);
                                                            float discount = rs.getFloat(9);
                                                            String extra = rs.getString(10);
                                                            float gtotal = rs.getFloat(11);
                                                            float amtpaid = rs.getFloat(12);
                                                            float bal = rs.getFloat(13);
                                                            String ready = rs.getString(14);
                                                            String staff = rs.getString(15);
                                                            String status = rs.getString(16);



                                                            String sql = "insert into ourinvoice values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                                                            PreparedStatement st2 = conweb.prepareStatement(sql);


                                                            st2.setString(1, date);
                                                            st2.setString(2, invid); 
                                                            st2.setString(3, branch);
                                                            st2.setString(4, custname);
                                                            st2.setString(5, custid);
                                                            st2.setString(6, type);
                                                            st2.setString(7, tagno);
                                                            st2.setInt(8, qty);
                                                            st2.setFloat(9, discount);
                                                            st2.setString(10, extra);
                                                            st2.setFloat(11, gtotal);
                                                            st2.setFloat(12, amtpaid);
                                                            st2.setFloat(13, bal);
                                                            st2.setString(14, ready);
                                                            st2.setString(15, staff);
                                                            st2.setString(16, status);

                                                        }

                                                    } catch (Exception e) {
                                                        out.print(e);
                                                    }

                //mysql_query("INSERT INTO database2.categories (category_name,description,group_id,created)");
                //mysql_close();

                //mysql_connect("localhost","root","");
                //mysql_select_db("database1");
                //mysql_query("SELECT table1.name, table1.description, 12, UNIX_TIMESTAMP() FROM GiveArang_categories Where `p_id`= '225' ");
//mysql_close();
%>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                    </td>
                                    </tbody>
                                    </table>

                                    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
                                    </body>
                                    </html>

