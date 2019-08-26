<%-- 
    Document   : productmanagement
    Created on : Nov 25, 2014, 2:58:26 PM
    Author     : THANKGOD
--%>




<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%



    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = logout.jsp");


    StaffStatus staff = null;

    String username = (String) session.getAttribute("username");
    Date date = null;

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");


        if (request.getParameter("paymentdate") != null) {
            date = OdicUtil.convertJavaDateToSqlDate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("paymentdate")));
        } else {
            date = OdicUtil.convertJavaDateToSqlDate(new java.util.Date());
        }


        if (request.getParameter("printreceipts") != null) {
            SalesOperations salesOpx = new SalesOperations();
            Receipt receipts = (Receipt) session.getAttribute("receipts");
            date = receipts.getDate();

            salesOpx.insertReceipts(receipts);
            session.removeAttribute("receipts");


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

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon"  type="image/png" href="images/favicon.png" />

        <title>Odic Management</title>

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


                            <li >
                                <a href="odicsales.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                            </li>
                            <li>
                                <a href="banktransactionsmanagement.jsp"><i class="fa fa-fw fa-file"></i> Bank Transactions</a>
                            </li>
                            <li>
                                <a href="expenditure.jsp"><i class="fa fa-fw fa-file"></i> Expenses</a>
                            </li>
                            <li class="receipts">
                                <a href="receipts.jsp"><i class="fa fa-fw fa-file"></i> Receipts</a>
                            </li>
                            <li>
                                <a href="reports.jsp"><i class="fa fa-fw fa-file"></i> Reports</a>
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <%

                SalesOperations salesOPx = new SalesOperations();
                ArrayList receipts = salesOPx.getAllTodayReceipts(date);


            %>                    

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header text-center">Odic Receipts - <%=new SimpleDateFormat("yyyy-MM-dd").format(OdicUtil.convertJavaSqlDateToNormalDate(date))%></h1>                          
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
                                                <th>S/N</th>
                                                <th>Receipts No</th>
                                                <th>Cust ID</th>
                                                <th>Cust Name</th>
                                                <th>Bank</th>                                            
                                                <th>Date</th>   
                                                <th>Void</th>
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
                                                <td><%= receipt.getReceiptNo()%> </td>
                                                <td><%=receipt.getCustID()%></td> 
                                                <td><%=receipt.getCustName()%></td>
                                                <td><%=receipt.getAmount()%></td>                                    
                                                <td><%=receipt.getDate()%></td> 

                                                <%if (receipt.getPostedStatus().equals("notposted")) {
                                                %>
                                        <form name="voidinvoiceform" method="post" action="transactvoidaction.jsp" >
                                            <td class="center"><button type="submit" class="btn btn-primary" name="voidreceipts" value="<%=receipt.getReceiptNo() %>"> Void Receipt</button></td>
                                            <input type="hidden" name="voiddate" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(receipt.getDate())%>">

                                        </form>                                         
                                        
                                        <%

                                        } 
                                        %>

                                        </tr> 

                                        <%
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

