<%-- 
    Document   : printexpenses
    Created on : Dec 15, 2014, 9:42:39 PM
    Author     : THANKGOD
--%>

<%@page import="com.odic.sales.Receipt"%>
<%@page import="com.odic.sales.StaffStatus"%>
<%@page import="com.odic.sales.OdicUtil"%>
<%@page import="java.util.Calendar"%>
<%

    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    StaffStatus staff = null;
   
    String username = (String) session.getAttribute("username");
        if ((String) session.getAttribute("username") != null) {
            staff = (StaffStatus) session.getAttribute("LOGIN_USER");
                
        } else {
            response.sendRedirect("logout.jsp");
        }            
        
  




    Calendar cal = OdicUtil.generateDate();
%>

<%@page import="com.odic.sales.BankTransaction"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.odic.sales.SalesOperations"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Print Expenses</title>
        <link rel="icon"  type="image/png" href="../images/favicon.png" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <style type="text/css">
            body{
                padding-top: 70px;
            }


            @media print
            {    
                .no-print, .no-print *
                {
                    display: none !important;
                }
            }
        </style>
    </head>
    <body>
      

        <div class="container">
            <div class="jumbotron">
                
                 <%

                        SalesOperations salesOPx = new SalesOperations();
                        ArrayList receipts = salesOPx.getAllTodayReceipts();


                    %>  
                
                  
                            <h2> Receipts </h2>
                            <div  class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>Amount</th>
                                            <th>Bank</th>                                            
                                            <th>Date</th>   
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%

                                            Iterator itil = receipts.iterator();
                                            Receipt receipt = null;

                                            int counter = 1;

                                            while (itil.hasNext()) {
                                                receipt = (Receipt) itil.next();

                                        %>                                   

                                        <tr>
                                            <td><%=counter%></td> 
                                            <td><%=receipt.getCustID()%></td> 
                                            <td><%=receipt.getAmount()%></td>                                    
                                            <td><%=receipt.getDate()%></td>                                                                            

                                        </tr> 

                                        <%
                                                counter++;
                                            }

                                        %>

                                    </tbody>
                                </table>
                            </div>
                     

                

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <footer>
                        <p>&copy; Odic Electrical Company Limited</p>
                    </footer>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">                   
                    <button   type="submit"  class="btn btn-default no-print" onclick="window.print();" >Print</button> 
                </div>
                <div class="col-xs-2">
                    <form action="../allreceipts.jsp">
                        <button   type="submit" name="printinvoice" class="btn btn-default no-print" >Back</button>                  
                    </form>                        
                </div>
            </div>   
        </div>
    </body>
</html>   
