<%-- 
    Document   : index
    Created on : Oct 27, 2014, 11:20:40 AM
    Author     : THANKGOD
--%>



<%@page import="com.topazerp.sales.*"%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>


<%


    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = logout.jsp");

    StaffStatus staff = null;
    DailyInvoiceTotal todayTotal = null;

    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");

        Calendar cal = Calendar.getInstance();

        Calendar cal2 = OdicUtil.convertCalendar(cal, TimeZone.getTimeZone("Africa/Lagos"));

        SalesOperations salesOpx = new SalesOperations();


        if (salesOpx.getDailySalesCounter(staff, cal2) == null) {
            todayTotal = salesOpx.insertDailySalesCounter(staff, cal2);
        } else {
            todayTotal = salesOpx.getDailySalesCounter(staff, cal2);
        }

        if (salesOpx.checkDailyBalance(staff.getBranch()) == null) {


            DailyBalance bal = null;

            Calendar calend = new GregorianCalendar();
            calend.setTime(new Date());

            int calendarDate = calend.get(Calendar.DAY_OF_YEAR);
            int yesterday = calendarDate - 1;


            /*search:
            for (int i = 1; i < 15; i++) {
            
            //bal = salesOpx.getPreviousDay(i, staff.getBranch());
            
            if (bal == null) {
            continue search;
            } else {
            break search;
            }
            }*/

            search:
            for (int i = yesterday; i > 0; i--) {

                calend = new GregorianCalendar();
                calend.set(Calendar.DAY_OF_YEAR, i);

                bal = salesOpx.getPreviousDay(staff.getBranch(), calend.getTime());

                if (bal != null) {
                    break search;
                } else {
                    continue search;
                }
            }

            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

            if (bal != null) {
                DailyBalance bal2 = new DailyBalance();
                bal2.setBranch(bal.getBranch());
                bal2.setPreviousBal(bal.getBalance());
                bal2.setBalance(bal.getBalance());
                bal2.setDate(OdicUtil.convertJavaDateToSqlDate(format.parse(format.format(new Date()))));
                salesOpx.insertDailyBalance(bal2);
                salesOpx.insertRunReport(staff.getBranch(), bal.getDate());

            } else {

                DailyBalance bal2 = new DailyBalance();
                bal2.setBranch(staff.getBranch());
                bal2.setPreviousBal(0);
                bal2.setBalance(0);
                bal2.setDate(OdicUtil.convertJavaDateToSqlDate(format.parse(format.format(new Date()))));
                salesOpx.insertDailyBalance(bal2);

            }

        }


        session.removeAttribute("cust");
        session.removeAttribute("sale");

        if (request.getParameter("cancelTxn") != null) {
            session.removeAttribute("selectedProducts");
            session.removeAttribute("custId");

        }



        if (request.getParameter("selectedProductsCIC") != null) {
            session.removeAttribute("selectedProducts");
        }

        if (request.getParameter("address") != null) {
            session.removeAttribute("address");
        }

        if (request.getParameter("cancelReceipt") != null) {
            session.removeAttribute("receipts");

        }

        if (request.getParameter("cancelcash") != null) {
            session.removeAttribute("cash");
        }



        request.setAttribute("welcomepage", "welcomepage");




    } else {

        response.sendRedirect("logout.jsp");
        //request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }

    /**
    StaffStatus staff = null; 
    
    String username = (String) session.getAttribute("username");
    
    if (username != null) {
    
    staff = (StaffStatus) session.getAttribute("LOGIN_USER");
    
    
    
    } else {
    
    //response.sendRedirect("logout.jsp");
    request.getRequestDispatcher("logout.jsp").forward(request, response);
    
    return;
    
    }
     **/
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">       

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon"  type="image/png" href="images/favicon.png" />




        <title>ODIC SALES</title>


        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="css/plugins/morris.css" rel="stylesheet">

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
                    <a class="navbar-brand" href="#">ODIC SALES</a>

                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li> <a href="#"><i class="fa fa-fw fa-dashboard"></i> </a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user"> <%= username%> </i> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="profile.jsp"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>

                            <li>
                                <a href="changepassword.jsp"><i class="fa fa-fw fa-gear"></i> Change Pswd</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="logout.jsp"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse  navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">

                        <%if (staff.getJobType().equals("Cashier") || staff.getJobType().equals("Cashier-Temp") || staff.getJobType().equals("Cashier-Others")) {

                        %>
                        <li class="active">
                            <a href="#"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                        <%                                }%>


                        <%if (staff.getJobType().equals("Cashier") || staff.getJobType().equals("Cashier-Temp") || staff.getJobType().equals("Cashier-Others")) {

                        %>
                        <li>
                            <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                        </li>

                        <%                                }%>



                        <%if (staff.getJobType().equals("Cashier") || staff.getJobType().equals("Cashier-Temp") || staff.getJobType().equals("Cashier-Others")) {

                        %>
                        <li>
                            <a href="pricelist.jsp" ><i class="fa fa-fw fa-file"></i> Price List</a>
                        </li> 


                        <%                                }%>


                        <%if (staff.getJobType().equals("Cashier") || staff.getJobType().equals("Cashier-Temp") || staff.getJobType().equals("Cashier-Others")) {

                        %>

                        <%                                }%>



                        <%if (staff.getJobType().equals("Cashier") || staff.getJobType().equals("Cashier-Temp")) {

                        %>

                        <li>
                            <a href="#" ><i class="fa fa-fw fa-file"></i> CIC Invoice</a>
                        </li> 


                        <li>
                            <a href="pricelistcic.jsp" ><i class="fa fa-fw fa-file"></i> CIC Price List</a>
                        </li>

                        <%                                }%>
                        <%if (staff.getJobType().equals("Cashier")) {

                        %>
                        <li>
                            <a href="banktransactionscash.jsp"><i class="fa fa-fw fa-file"></i> Bank Transactions</a>
                        </li>


                        <%                                }%>

                        <%if (staff.getJobType().equals("Cashier")) {

                        %>
                        <li>
                            <a href="expenditure.jsp"><i class="fa fa-fw fa-file"></i> Expenses</a>
                        </li>


                        <%                                }%>

                        <%if (staff.getJobType().equals("Cashier")) {

                        %>
                        <li>
                            <a href="receipts.jsp"><i class="fa fa-fw fa-file"></i> Receipts</a>
                        </li>


                        <%                                }%>

                        <%if (staff.getJobType().equals("Cashier")) {

                        %>
                        <li>
                            <a href="reports.jsp"><i class="fa fa-fw fa-file"></i> Reports</a>
                        </li>

                        <%                                }%>

                        <%if (staff.getJobType().equals("Cashier")) {

                        %>
                        <li>
                            <a href="addcustomers.jsp"><i class="fa fa-fw fa-file"></i> Register Customer</a>
                        </li>



                        <%                                }%>

                      

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
                                ODIC <small>Dashboard - (<%= staff.getBranch().toUpperCase() %>)</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Dashboard
                                </li>
                            </ol>
                        </div>
                    </div>

                    <!-- /.row -->


                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-shopping-cart fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">

                                            <div class="huge"> 
                                                <%= todayTotal.getTotalInvoice()%>
                                            </div>                 

                                            <div>Today's</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="invoices.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">New Invoice</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <!-- /.row -->
                        <%if (staff.getJobType().equals("Cashier")) {

                        %>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"></div>
                                            <div>Receipts</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="receipts.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">New Receipts</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"></div>
                                            <div>Bank Transaction</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="banktransactionscash.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Cash</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>                                                           
                            </div>
                        </div> 

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"></div>
                                            <div>CIC Invoice</div>
                                        </div>
                                    </div>
                                </div>

                                <a href="selectaddresscic.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">New CIC Invoice</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">                                                             
                                <a href="banktransactionsmanagement.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Todays Bank Transaction</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>                               
                            </div>
                        </div>                        
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                                <a href="cashshop.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">New Cash From Shops</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary ">


                                <a href="pricelist.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Price List</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>






                        <%                            } else {
                        %>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary ">


                                <a href="pricelist.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Price List</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>

                        <%                             }%>



                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">

                                <a href="dailyinvoices.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Today Invoices</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>   
                        
                         <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary ">


                                <a href="voidedinvoices.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Voided Invoices</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>

                        <%if (staff.getJobType().equals("Cashier")) {

                        %>





                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">

                                <a href="expenditure.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Fund Expenses</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>                                
                            </div>
                        </div>




                        <%                                }%>


                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                                <a href="custbal.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Check Customer Balance</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">

                                <a href="reports.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">New Report</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                                <a href="oldinvoice.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Old Invoice</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                        




                        <%if (staff.getJobType().equals("Cashier")) {

                        %>




                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">

                                <a href="oldinvoicecic.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Old CIC Invoice</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>

                            </div>
                        </div>




                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                                <a href="allreceipts.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Today's Receipts</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>  
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                                <a href="allcash.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Today's Cash From Shop</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">

                                <a href="addcustomers.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Register Customer</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>  

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">

                                <a href="createproduct.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Other Company Products</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div> 

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">

                                <a href="editbal.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Edit Customer Bal</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div> 
                        <%}%>


                        <%if (staff.getJobType().equals("Cashier-Temp-Expenses")) {

                        %>

                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-comments fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"></div>
                                            <div>Expenses</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="expenses.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Expenses</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <a href="allexpenses.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">All Expenses</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <a href="director.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Director</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <a href="recieve.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">Receive Funds</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <%}%>


                    <!-- /.row -->

                </div>
                <!-- /.container-fluid -->

            </div>
            <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
             
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li> <a href="#"><i class="fa fa-fw fa-dashboard"></i> </a></li>

                  
                </ul>
            </nav>

            <!-- /#page-wrapper -->


            <!-- /#wrapper -->

            <!-- jQuery Version 1.11.0 -->
            <script src="js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>

            <!-- Morris Charts JavaScript -->
            <script src="js/plugins/morris/raphael.min.js"></script>
            <script src="js/plugins/morris/morris.min.js"></script>
            <script src="js/plugins/morris/morris-data.js"></script>

    </body>

</html>
