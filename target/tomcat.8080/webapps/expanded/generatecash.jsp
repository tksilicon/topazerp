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
    
    String username = (String) session.getAttribute("username");
    
    if (username != null) {
    
    staff = (StaffStatus) session.getAttribute("LOGIN_USER");
    
    
    
    } else {
    
    //response.sendRedirect("logout.jsp");
    request.getRequestDispatcher("logout.jsp").forward(request, response);
    
    return;
    
    }



    String cashNo = null;
    DateFormat format = new SimpleDateFormat("dd-MM-yy");
    String s = "";
    CashShop cash = null;
    DecimalFormat f = new DecimalFormat("###,###.00");

    if (session.getAttribute("cash") != null) {

        cash = (CashShop) session.getAttribute("cash");


        format = new SimpleDateFormat("dd/MM/yyyy");
        String phrase = String.valueOf(cash.getAmount());
        Float num = new Float(phrase);
        int dollars = (int) Math.floor(num);
        int cent = (int) Math.floor((num - dollars) * 100.0f);



        if (num % 1.0 == 0) {
            s = EnglishNumberToWords.convert(dollars) + " Naira ";
        } else {
            s = EnglishNumberToWords.convert(dollars) + " Naira " + EnglishNumberToWords.convert(cent) + " kobo";
        }

        cashNo = cash.getCashId().getCashNo();
    } else {
        response.sendRedirect("cashshop.jsp");
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
                <form method="post" action="allcash.jsp" >  
                    <center style="margin-top:10px;margin-left: 100px;float: left"> <button   type="submit" name="printcash" class="btn btn-default" onclick="window.print();window.print();window.print();" >Print Cash</button> </center>
                </form>

                <form method="post" action="odicsales.jsp" >
                    <center style="margin-top:10px; margin-left: 300px;float:none"> <button   type="submit" name="cancelcash" class="btn btn-default" >Cancel Cash</button> 
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
                           No: <%=cashNo%>                            
                    </div>
                   

              
                     <div class="col-xs-4 col-xs-offset-2 text-right" >
                         <div class="panel panel-default">
                             <div class="panel-body">
                                  <h3> <%= format.format(cash.getDateCash())%></h3>
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
                       <h2><%=cash.getHolder() %></h2>
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
                        &#8358; <%=   f.format(cash.getAmount())%> 
                    </strong>
                </div>
            </div><br>

                <div class="row">
                    <div class="col-xs-6">

                        <p>_______________________</p>
                        <p>Holder Signature</p>
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
