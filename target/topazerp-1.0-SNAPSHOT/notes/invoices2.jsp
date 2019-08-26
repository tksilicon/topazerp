<%-- 
    Document   : invoices
    Created on : Oct 3, 2014, 2:12:17 AM
    Author     : THANKGOD
--%>

<%


    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp");
    }


    if (request.getParameter("cancelTxn") != null) {
        session.removeAttribute("selectedProducts");
        session.removeAttribute("custId");
    }
%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.odic.sales.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon"  type="image/png" href="images/favicon.png" />

        <title>Invoices</title>
        
        <link rel="stylesheet" type="text/css" href="autocomplete/autocomplete.css" />
         <script type="text/javascript"
            src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        <script src="autocomplete/autocomplete.js"></script> 

       



        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="active navbar-brand" href="index.html">ODIC SALES</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading">
                                                <strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading">
                                                <strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading">
                                                <strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-footer">
                                <a href="#">Read All New Messages</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <li>
                                <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">View All</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%=username%><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="logout.jsp"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>

                        <li class="active">
                            <a href="invoices.jsp"><i class="fa fa-fw fa-file"></i> Invoices</a>
                        </li>
                        <li>
                            <a href="banktransactions.html"><i class="fa fa-fw fa-file"></i> Bank Transactions</a>
                        </li>
                        <li>
                            <a href="expenses.html"><i class="fa fa-fw fa-file"></i> Expenses</a>
                        </li>
                        <li>
                            <a href="reports.html"><i class="fa fa-fw fa-file"></i> Reports</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Generate 
                                <small>Invoices</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Invoices
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                    <form method="post" action="selectproducts.jsp" >




                        <div class="row">
                        


                            <div class="col-lg-10" >

                                <div class="form-group">

                                    <label class="control-label  col-xs-5">Start Typing Existing Customer </label>  
                                    <div class="col-xs-8">
                                        <input id="existingcustomernames" class="form-control" name="existingcustomernames" /> 

                                        <script>
                                            $("#existingcustomernames").autocomplete("getdata.jsp");
                                        </script>
                                    </div>
                                </div>
                               
                                <center><button type="submit" name="invoices" class="btn btn-default">Select</button></center>




                                <!-- /.container-fluid -->

                            </div>
                        </div>
                        <!-- /#page-wrapper -->
                    </form>
                </div>
                <!-- /#wrapper -->
            </div>

            

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>



    </body>
</html>




 </br>
            </br>
            </br>
            </br>
            <div class="row">
                <div class="row">
                    <div class="col-xs-6">
                        <h1>
                            <img src="images/opensoon.png">
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">

                                <h5>Date:  <%= format.format(sale.getDate())%></h5>
                                <h5>Name:  <%= sale.getCust().getFirstname() + "  " + sale.getCust().getSurname()%></h5>
                                <h6>Address:  <%= sale.getCust().getAddress()%> ,<%= sale.getCust().getState()%> </h6> 

                                <h6>Phone:  <%= sale.getCust().getPhoneno()%> </h6> 

                            </div>                           
                        </div>
                    </div>

                    <div class="col-xs-5 col-xs-offset-2 text-right">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3> <%=sale.getInvoiceType() + "   Invoice"%> </h3>
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
                    <h4>Quantity</h4>
                    </th>
                    <th>
                    <h4>Unit Price</h4>
                    </th>
                    <th>
                    <h4>Total</h4>
                    </th>
                    </tr>
                    </thead>
                    <tbody>

                        <%

                            itil = selectedProducts.iterator();
                            countersize = 0;
                            while (itil.hasNext()) {
                                prod = (OdicProduct) itil.next();
                        %>


                        <tr>
                            <td><%= ++countersize%></td>
                            <td><a href="#"><%= prod.getItemId() + " " + prod.getItemDescription()%></a></td>
                            <td class="text-right"><%= prod.getQuantity()%></td>             
                            <td class="text-right"><%= f.format(prod.getPrice())%></td>

                            <% %>
                            <td class="text-right"><%= f.format(prod.getTotal())%></td>
                        </tr>

                        <%
                            }
                        %>

                    </tbody>
                </table>
                <div class="row text-right">
                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; <%=   f.format(sale.getTotal())%> 
                        </strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <label class="label-info">Goods sold are not returnable and no refund after payment</label> <br>
                        <label class="label-info">THANKS FOR YOUR PATRONAGE</label> 
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4>Intercontinental Bank Plc</h4>
                                <h6>ODIC Electrical Company Limited </h6>
                                <h5>Account Number : --------</h5>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4>Spring Bank Limited</h4>
                                <h6>ODIC Electrical Company Limited</h6>
                                <h5>Account Number : --------</h5>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="row">
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


            <div class="container" id="printable">
                <div class="row">
                    <div class="col-xs-6">
                        <h1>
                            <img src="images/opensoon.png">
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">

                                <h5>Date:  <%= format.format(sale.getDate())%></h5>
                                <h5>Name:  <%= sale.getCust().getFirstname() + "  " + sale.getCust().getSurname()%></h5>
                                <h6>Address:  <%= sale.getCust().getAddress()%> ,<%= sale.getCust().getState()%> </h6> 

                                <h6>Phone:  <%= sale.getCust().getPhoneno()%> </h6> 

                            </div>                           
                        </div>
                    </div>

                    <div class="col-xs-5 col-xs-offset-2 text-right">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3> <%=sale.getInvoiceType() + "   Invoice"%> </h3>
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
                    <h4>Quantity</h4>
                    </th>
                    <th>
                    <h4>Unit Price</h4>
                    </th>
                    <th>
                    <h4>Total</h4>
                    </th>
                    </tr>
                    </thead>
                    <tbody>

                        <%

                            itil = selectedProducts.iterator();
                            countersize = 0;
                            while (itil.hasNext()) {
                                prod = (OdicProduct) itil.next();
                        %>


                        <tr>
                            <td><%= ++countersize%></td>
                            <td><a href="#"><%= prod.getItemId() + " " + prod.getItemDescription()%></a></td>
                            <td class="text-right"><%= prod.getQuantity()%></td>             
                            <td class="text-right"><%= f.format(prod.getPrice())%></td>

                            <% %>
                            <td class="text-right"><%= f.format(prod.getTotal())%></td>
                        </tr>

                        <%
                            }
                        %>

                    </tbody>
                </table>
                <div class="row text-right">
                    <div class="col-xs-2 col-xs-offset-8">
                        <p>
                            <strong>
                                Total:                           
                            </strong>
                        </p>
                    </div>
                    <div class="col-xs-2">
                        <strong>
                            &#8358; <%=   f.format(sale.getTotal())%> 
                        </strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <label class="label-info">Goods sold are not returnable and no refund after payment</label> <br>
                        <label class="label-info">THANKS FOR YOUR PATRONAGE</label> 
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4>Intercontinental Bank Plc</h4>
                                <h6>ODIC Electrical Company Limited </h6>
                                <h5>Account Number : --------</h5>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4>Spring Bank Limited</h4>
                                <h6>ODIC Electrical Company Limited</h6>
                                <h5>Account Number : --------</h5>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="row">
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

