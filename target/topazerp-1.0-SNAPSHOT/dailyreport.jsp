<%-- 
    Document   : productmanagement
    Created on : Nov 25, 2014, 2:58:26 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.topazerp.sales.*"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%







    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    StaffStatus staff = null;
    SalesOperations salesOpx = null;
    DailyBalance bal = null;
    double totalInvoiceShops = 0.0;
    double subtotal = 0.0;
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");

        salesOpx = new SalesOperations();

        bal = salesOpx.getDailySalesBalance(staff.getBranch());

        totalInvoiceShops = bal.getCa19() + bal.getB2526() + bal.getPlaza();
        subtotal = bal.getCashsales() + totalInvoiceShops + bal.getPreviousBal();

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

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon"  type="image/png" href="images/favicon.png" />





        <title>Odic Sales</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet">

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
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="odicsales.jsp">ODIC SALES</a>
                </div>
                <!-- /.navbar-header -->
                <div class="navbar-brand"> You are logged in as : <%= staff.getUsername().substring(0, 1).toUpperCase() + staff.getUsername().substring(1, staff.getUsername().length())%></div>


                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>

                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li>
                                <a href="changepassword.jsp"><i class="fa fa-fw fa-gear"></i> Change Pswd</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">

                                <!-- /input-group -->
                            </li>
                            <li>
                                <a  href="odicsales.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                            </li>
                            <li>
                                <a href="pricelistcic.jsp" ><i class="fa fa-fw fa-file"></i> CIC Price List</a>
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header text-center"><%= format.format(new Date())%></h1>                          
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <br>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">

                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Invoice No</th>
                                                <th>Total Invoice</th>
                                                <th>Cash Sales</th>
                                                <th>Discount</th>
                                                <th>NYP</th>
                                                <th>PD to Bank</th>
                                                <th>Tellno</th>
                                                <th>Date</th>
                                                <th>Bank</th>


                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                DecimalFormat f = new DecimalFormat("###,###.00");

                                                DateFormat fd = new SimpleDateFormat("dd-MM-yyyy");
                                                ArrayList<Sale> sales = salesOpx.getTodaySales(staff.getBranch());

                                                Iterator itil = sales.iterator();
                                                Sale sale = null;
                                                int counter = 1;

                                                while (itil.hasNext()) {

                                                    sale = (Sale) itil.next();
                                                    InvoiceDetails details = salesOpx.getTodaysInvoiceDetails(sale.getInvoiceNo());

                                                    sale.setInvoiceType(details.getInvoiceType());


                                                    if (counter % 2 == 0) {

                                            %>

                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= sale.getInvoiceNo()%> </td>
                                                <td class="text-right"><%= f.format(sale.getTotal())%></td>                                     
                                                <td class="text-right"><%=  f.format(sale.getAmountPaid())%></td>

                                                <td class="text-right"><% if (sale.getTotalDiscount() > 0) {
                                                    %>
                                                    <%= f.format(sale.getTotalDiscount())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>
                                                </td>

                                                <td class="text-right"> <% if (details.getInvoiceType().equals("Credit")) {

                                                    %>
                                                    <%=  f.format(sale.getBalance())%>
                                                    <%
                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>
                                                </td>
                                                <td class="text-right">
                                                    <% if (details.getCashInBank() > 0) {
                                                    %>
                                                    <%= f.format(details.getCashInBank())%>
                                                    <%

                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>                                                   

                                                </td>
                                                <td class="text-right">

                                                    <% if (details.getTellerNo() != null) {

                                                    %>
                                                    <%= details.getTellerNo()%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentDate() != null) {

                                                    %>
                                                    <%= fd.format(details.getPaymentDate())%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentBank() != null) {

                                                    %>
                                                    <%= details.getPaymentBank()%>
                                                    <%
                                                        }%>

                                                </td>   

                                            </tr>

                                            <%

                                            } else {

                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= sale.getInvoiceNo()%> </td>
                                                <td class="text-right"><%= f.format(sale.getTotal())%></td>                                     
                                                <td class="text-right"><%=  f.format(sale.getAmountPaid())%></td>

                                                <td class="text-right"><% if (sale.getTotalDiscount() > 0) {
                                                    %>
                                                    <%= f.format(sale.getTotalDiscount())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>
                                                </td>

                                                <td class="text-right"> <% if (details.getInvoiceType().equals("Credit")) {

                                                    %>
                                                    <%=  f.format(sale.getBalance())%>
                                                    <%
                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>
                                                </td>
                                                <td class="text-right">
                                                    <% if (details.getCashInBank() > 0) {
                                                    %>
                                                    <%= f.format(details.getCashInBank())%>
                                                    <%

                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>                                                   

                                                </td>
                                                <td class="text-right">

                                                    <% if (details.getTellerNo() != null) {

                                                    %>
                                                    <%= details.getTellerNo()%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentDate() != null) {

                                                    %>
                                                    <%= fd.format(details.getPaymentDate())%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentBank() != null) {

                                                    %>
                                                    <%= details.getPaymentBank()%>
                                                    <%
                                                        }%>

                                                </td>   

                                            </tr>

                                            <%

                                                    }
                                                    counter++;
                                                }
                                            %>




                                        </tbody>
                                    </table>


                                </div>



                                <!-- /.table-responsive -->                               
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->



                    </div>


                    <!-- /.col-lg-12 -->
                    <div class="col-lg-6">

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Desc</th>
                                        <th>Amount</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td> Total Sales</td>
                                        <td class="text-right"> 

                                            <% if (bal.getInvoices() > 0) {
                                            %>

                                            <%= f.format(bal.getInvoices())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getInvoices()%>
                                            <%
                                                }

                                            %>


                                    </tr>
                                    <tr>
                                        <td>Total Cash Sales</td>
                                        <td class="text-right">
                                            <% if (bal.getCashsales() > 0) {
                                            %>

                                            <%= f.format(bal.getCashsales())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getCashsales()%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Total Inv Shops </td>
                                        <td class="text-right">



                                            <% if (totalInvoiceShops > 0) {
                                            %>

                                            <%= f.format(totalInvoiceShops)%>
                                            <%
                                            } else {
                                            %>
                                            <%= totalInvoiceShops%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>B/F </td>
                                        <td class="text-right">

                                            <% if (bal.getPreviousBal() > 0) {
                                            %>

                                            <%= f.format(bal.getPreviousBal())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getPreviousBal()%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    <tr>

                                        <td> Subtotal </td>
                                        <td class="text-right">  <% if (subtotal > 0) {
                                            %>

                                            <%= f.format(subtotal)%>
                                            <%
                                            } else {
                                            %>
                                            <%= subtotal%>
                                            <%
                                                }

                                            %> </td>
                                    </tr>  
                                    <tr>
                                        <td>Less Expenses </td>
                                        <td class="text-right"><% if (bal.getExpenses() > 0) {
                                            %>

                                            <%= f.format(bal.getExpenses())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getExpenses()%>
                                            <%
                                                }

                                            %> </td></td>

                                    <tr>
                                        <td>Balance</td>
                                        <td class="text-right"><% if (bal.getBalance() > 0) {
                                            %>

                                            <%= f.format(bal.getBalance())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getBalance()%>
                                            <%
                                                }

                                            %> </td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function() {
                $('#dataTables-example2').dataTable();
            });
        </script>


    </body>

</html>

