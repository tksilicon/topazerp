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
                        <table align="center" style=" margin-top: 20px;">
                             <tr>
                                <td align="center">
                                    <b><u>STEPS TO FOLLOW WHILE UPLOADING INVOICE</u></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b><font color="red"> Step 1: </font> Export invoice to be uploaded to Excel and SAVE it as "invoice.xsl" in the C: directory.</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b><font color="red"> Step 2:</font> In the Excel environment, delete the header of the document and change the date format to text.<br> Make sure your date is in this format 2013-10-10 (yyyy-mm-dd)  </b>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <b><font color="red"> Step 3:</font> Click on UPLOAD INVOICE button below to upload invoice    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b><font color="red">Step 4: </font>Repeat the above steps to upload items. Save it as items.xsl and click on upload item. <br>   </b> 
                                </td>
                            </tr>
                            <hr>
                        </table>
                       <table align="center" style=" margin-top: 50px;">
                            <tr align="center">
                                <td>
                                    <a href="readExcel.jsp" target="_BLANK"> <input type="button" value="UPLOAD INVOICE" onclick="javascript:return confirm('Are you sure you want to upload invoice\n\nMake sure you follow the instructions thoroughly\n\nUploading wrong information can trigger error in the database')"  style=" background-color: red; font-style: bold; color: white; height: 50px; width: 120px;"></a>  
                                </td>
                            </tr>
                        </table>
                        <table align="center" style=" margin-top: 50px;">
                            <tr align="center" style=" margin-top: 30px;">
                                <td style=" margin-top: 50px;">
                                    <a href="readExcelItems.jsp" target="_BLANK"> <input type="button" value="UPLOAD ITEMS" onclick="javascript:return confirm('Are you sure you want to upload items\n\nMake sure you follow the instructions thoroughly\n\nUploading wrong information can trigger error in the database')"  style=" background-color: red; font-style: bold; color: white; height: 50px; width: 120px;"></a>  
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