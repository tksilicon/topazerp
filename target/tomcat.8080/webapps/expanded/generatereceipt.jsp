<%-- 
    Document   : generateinvoice
    Created on : Oct 7, 2014, 11:43:16 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.topazerp.sales.*" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.text.DecimalFormat"%>

<%

    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    StaffStatus staff = null;

    if ((String) session.getAttribute("username") == null) {
        response.sendRedirect("logout.jsp");
    } else {
        staff = (StaffStatus) session.getAttribute("LOGIN_USER");
    }



    String receiptNo = null;
    DateFormat format = new SimpleDateFormat("dd-MM-yy");
    String s = "";
    Receipt receipt = null;
    DecimalFormat f = new DecimalFormat("###,###.00");

    if (session.getAttribute("receipts") != null) {

        receipt = (Receipt) session.getAttribute("receipts");


        format = new SimpleDateFormat("dd/MM/yyyy");
        String phrase = String.valueOf(receipt.getAmount());
        Float num = new Float(phrase);
        int dollars = (int) Math.floor(num);
        int cent = (int) Math.floor((num - dollars) * 100.0f);



        if (num % 1.0 == 0) {
            s = EnglishNumberToWords.convert(dollars) + " Naira ";
        } else {
            s = EnglishNumberToWords.convert(dollars) + " Naira " + EnglishNumberToWords.convert(cent) + " kobo";
        }

        receiptNo = receipt.getReceiptsId().getReceiptNo();
        
    } else {
        response.sendRedirect("receipts.jsp");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="icon"  type="image/png" href="images/favicon.png" />

        <title>Odic Invoice</title>
        <link rel="stylesheet" href="css/invoicecss/bootstrap.css"/>
        <style>
            @import url(http://fonts.googleapis.com/css?family=Bree+Serif);
            body, h1, h2, h3, h4, h5, h6{
                font-family: 'Bree Serif', serif;
            }
        </style>

        <script>
            history.forward('1');
        </script>
    </head>

    <body>
        <div class="container">
            <div class="row" >
                <center style="margin-top:12px;margin-left: 50px;float: left"> <label> <%=staff.getUsername()%> </label></center>          
                <form method="post" action="allreceipts.jsp" >  
                    <center style="margin-top:10px;margin-left: 100px;float: left"> <button   type="submit" name="printreceipts" class="btn btn-default" onclick="window.print();window.print();window.print();" >Print Receipts</button> </center>
                </form>

                <form method="post" action="odicsales.jsp" >
                    <center style="margin-top:10px; margin-left: 300px;float:none"> <button   type="submit" name="cancelReceipt" class="btn btn-default" >Cancel Receipts</button> 
                    </center>
                </form>
            </div>
            <div class="containter">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <p class="text-center">
                                    <img src="images/doume.jpg"> 
                                </p>                                 
                            </div>                            
                        </div>  
                    </div>
                </div>


                <div class="row">
                    <div class="col-xs-4">  
                         <div class="panel panel-default">
                             <div class="panel-body">
                                  <h5> CASH RECEIPT</h5> 
                             </div>
                         </div>                                                               
                    </div>

                    <div class="col-xs-2 text-center">                       
                           No: <%=receiptNo%>                            
                    </div>
                   

              
                     <div class="col-xs-4 col-xs-offset-2 text-right" >
                         <div class="panel panel-default">
                             <div class="panel-body">
                                  <h3> <%= format.format(receipt.getDate()) %></h3>
                             </div>
                         </div>
                     </div>
            </div>                
                
            <div class="row text-left">
                <div class="col-xs-1">
                    <p>
                        Received from:                           
                        
                    </p>
                </div>
                <div class="col-xs-8">
                    <strong>
                       <h2><%= receipt.getCustName()%></h2>
                    </strong>
                </div>
            </div>
                    
                    
           <div class="row text-left">
                <div class="col-xs-1">
                    <p>
                        the sum of:                           
                        
                    </p>
                </div>
                <div class="col-xs-8">
                    <strong>
                        <h2><%= s%></h2>
                    </strong>
                </div>
            </div>
                    <br>

            <div class="row text-left">

                <div class="col-xs-2">
                    <p>
                        <strong>
                            Deposit:                           
                        </strong>
                    </p>
                </div>
                <div class="col-xs-4 text-left">
                    <strong>
                        &#8358; <%=   f.format(receipt.getAmount())%> 
                    </strong>
                </div>
            </div><br>

                <div class="row">
                    <div class="col-xs-6">

                        <p>_______________________</p>
                        <p>Customer's Signature</p>
                    </div>

                    <div class="col-xs-6 text-right">

                        <p>_______________________</p>
                        <p class="text-right">For:Company</p>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
