<%-- 
    Document   : generateinvoice
    Created on : Oct 7, 2014, 11:43:16 PM
    Author     : THANKGOD
--%>

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

    Sale sale = null;
    String invoiceNo = null;
    SimpleDateFormat format = null;
    String s = "";

    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");

        if (session.getAttribute("sale") != null) {

            sale = (Sale) session.getAttribute("sale");


            format = new SimpleDateFormat("dd/MM/yyyy");
            String phrase = String.valueOf(sale.getTotalAfterDiscount());
            Float num = new Float(phrase);
            int dollars = (int) Math.floor(num);
            int cent = (int) Math.floor((num - dollars) * 100.0f);



            if (num % 1.0 == 0) {
                s = EnglishNumberToWords.convert(dollars) + " Naira ";
            } else {
                s = EnglishNumberToWords.convert(dollars) + " Naira " + EnglishNumberToWords.convert(cent) + " kobo";
            }

            invoiceNo = sale.getInvoice().getInvoiceNo();
        } else {
            response.sendRedirect("dailyinvoices.jsp");
        }



    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

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

         <script type="text/javascript"> 
            history.forward('1');
        </script>
    </head>

    <body>
        <div class="container">




            <div class="row" >

                <center style="margin-top:12px;margin-left: 50px;float: left"> <label> <%=staff.getUsername()%> </label></center>


                <%

                    if (request.getParameter("copy") != null) {

                %>

                <% if (session.getAttribute("oldproduct").equals("true"))  {

                %>
                
                <form method="post" action="dayinvoices.jsp" >  
                    <center style="margin-top:10px;margin-left: 100px;float: left"> <button   type="submit" name="printinvoice" class="btn btn-default" onclick="window.print();window.print();" >Print Admin/Cashier Copy</button> 

                    </center>
                </form> 
                <%                    } else {

                %>
                <form method="post" action="dailyinvoices.jsp" >  
                    <center style="margin-top:10px;margin-left: 100px;float: left"> <button   type="submit" name="printinvoice" class="btn btn-default" onclick="window.print(); window.print();window.print();" >Print Admin/Cashier Copy</button> 

                    </center>
                </form> 

                <%                        }
                } else {

                %>

                <form method="post" action="printinvoice.jsp" >  
                    <center style="margin-top:10px;margin-left: 100px;float: left"> <button   type="submit" name="printinvoice" class="btn btn-default" onclick="window.print();" >Print Customer Invoice</button> 

                    </center>
                </form>



                <%                        }

                %>




                <form method="post" action="odicsales.jsp" >
                    <center style="margin-top:10px; margin-left: 300px;float:none"> <button   type="submit" name="cancelTxn" class="btn btn-default" >Cancel Invoice</button> 
                    </center>
                </form>
            </div>


            <div class="containter">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <p class="text-center">
                                    <%
                                        if (staff.getBranch().equals("PLAZA")) {

                                    %>
                                    <img src="images/odic.jpg"> 
                                    <%                                    } else {
                                    %>
                                    <img src="images/doume.jpg"> 
                                    <%                                         }

                                    %>

                                </p>                                 
                            </div>                            
                        </div>  
                    </div>
                </div>


                <div class="row">
                    <div class="col-xs-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">

                                <h5>Date:  <%= format.format(sale.getDate())%></h5>


                                <h5>Name:  <%= sale.getCust().getCustname()%></h5>
                                <h6>Address: <%= sale.getCust().getAddress() %> </h6> 
                                <h6>Phone:  </h6> 

                            </div>                           
                        </div>
                    </div>

                    <div class="col-xs-5 col-xs-offset-2 text-right">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3> <%=sale.getInvoiceType() + "   Invoice"%> </h3>
                                <h2> <% if (request.getParameter("copy") != null) {

                                    %>
                                    <h2><small>CASHIER COPY</small></h2>
                                    <%                                    } else {
                                    %>
                                    <h2><small>CUSTOMER COPY</small></h2>
                                    <%                                        }

                                    %> </h2>
                                <h2><small>No.  <%= invoiceNo%></small></h2>

                            </div>

                        </div>
                    </div>
                </div>
                <!-- / end client details section -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>
                    <h4>Item</h4>
                    </th>
                    <th>
                    <h4>Description</h4>
                    </th>
                    <th>
                    <h4>Unit Price</h4>
                    </th>
                    <th>
                    <h4>Quantity</h4>
                    </th>

                    <% if (sale.getTotalDiscount() > 0) {
                    %>
                    <th>
                    <h4>Discount</h4>
                    </th>
                    <%                            }
                    %>
                   


                    <th>
                    <h4>Total</h4>
                    </th>


                    </tr>
                    </thead>
                    <tbody>

                        <%
                            LinkedHashSet<OdicProduct> selectedProducts = (LinkedHashSet<OdicProduct>) sale.getSoldProducts();

                            Iterator itil = selectedProducts.iterator();
                            OdicProduct prod = null;
                            DecimalFormat f = new DecimalFormat("###,###.00");



                            int countersize = 0;


                            while (itil.hasNext()) {
                                prod = (OdicProduct) itil.next();
                        %>


                        <tr>
                            <td><%= ++countersize%></td>
                            <td><a href="#"><%= prod.getItemId() + " " + prod.getItemDescription()%></a></td>

                            <%

                                double prices = prod.getSellingPrice() + prod.getShadow();


                            %>
                            <td class="text-right"><%= f.format(prices)%></td>



                            <td class="text-right"><%= prod.getQuantity()%></td>   
                            <% if (sale.getTotalDiscount() > 0) {
                            %>
                            <td class="text-right"><%= f.format(prod.getTotalProductDiscount())%></td>  
                            <%                            }
                            %>

                            

                            
                            <td class="text-right"><%= f.format(prod.getSubTotalAfterDiscount())%></td>





                        </tr>

                        <%
                            }
                        %>

                    </tbody>
                </table>

                <div class="row text-right">
                    <% if (sale.getInvoiceType().equals("Cash")) {

                    %>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; 
                            <%= f.format(sale.getTotal())%>
                            


                        </strong>
                    </div>

                    <% if (request.getParameter("copy") != null) {
                    %>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total After Discount:                           
                            </strong>
                        </p>
                    </div>

                    <div class="col-xs-2">
                        <strong>
                            &#8358; 

                            <%=   f.format(sale.getTotalAfterDiscount())%> 
                        </strong>
                    </div>



                    <%
                        }
                    %>                                

                    <%
                        }
                    %>

                    <% if (sale.getInvoiceType().equals("Cash/Credit")) {

                    %>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; 



                           <%= f.format(sale.getTotal())%>
                        </strong>
                    </div>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Amount Paid:                        
                            </strong>
                        </p>
                    </div>                                    
                    <div class="col-xs-2">
                        <strong>
                            &#8358; <%=   f.format(sale.getAmountPaid())%> 
                        </strong>
                    </div>
                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Balance:                        
                            </strong>
                        </p>
                    </div>    

                    <div class="col-xs-2">
                        <strong>
                            &#8358; 
                           
                            <%=  f.format(sale.getBalance())%> 
                           


                        </strong>
                    </div>


                    <%
                        }
                    %>

                    <% if (sale.getInvoiceType().equals("Credit")) {

                    %>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; 

                            
                            <%= f.format(sale.getTotal())%><br>
                          
                           

                        </strong>
                    </div>


                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Amount Paid:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; 0 
                        </strong>
                    </div>

                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Balance:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; 

                           
                            <%=   f.format(sale.getTotalAfterDiscount())%> 
                                            

                        </strong>
                    </div>
                </div>

                <%
                    }
                %>

                <div class="row text-left">
                    <div class="col-xs-6">
                        <label class="label-info">Goods sold or delivered in good conditions are not returnable & no refunds After Payment</label> <br>
                        <label class="label-info">THANKS FOR YOUR PATRONAGE</label> 
                    </div>
                </div>

                

                <div class="row text-left">
                    <div class="col-xs-12">

                        <p> <h5>Amount in Words</h5> <h2> <%= s%></h2></p>
                    </div>
                </div>
                <br>


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
