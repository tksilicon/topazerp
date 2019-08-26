<%-- 
    Document   : viewinvoice
    Created on : Jan 17, 2015, 2:59:31 PM
    Author     : THANKGOD
--%>


<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.topazerp.sales.*"%>
<%



    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = logout.jsp");



    StaffStatus staff = null;

    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");



    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }



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


        <script>

            history.forward('1');

        </script>

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
                    <a class="navbar-brand" href="odicsales.jsp">ODIC SALES</a>
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
                                            <h5 class="media-heading"><strong></strong>
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
                                            <h5 class="media-heading"><strong></strong>
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
                                            <h5 class="media-heading"><strong>John Smith</strong>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user"> <%= staff.getUsername()%> </i> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                            </li>
                            <li>
                                <a href="changepasword.jsp"><i class="fa fa-fw fa-gear"></i> Change Pswd</a>
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
                        <li >
                            <a href="odicsales.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                       
                       
                        <li>
                            <a href="reports.jsp"><i class="fa fa-fw fa-file"></i> Reports</a>
                        </li>
                    </ul>
                </div>

                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <%

                    String viewinvoice = null;

                    if (request.getParameter("viewinvoice") != null) {

                        viewinvoice = request.getParameter("viewinvoice");
                        session.setAttribute("viewinvoice", viewinvoice);

                    } else {

                        viewinvoice = (String) session.getAttribute("viewinvoice");

                    }


                    SalesOperations salesOpx = new SalesOperations();
                    ArrayList<OdicProduct> arr = (ArrayList<OdicProduct>) salesOpx.getSaleInvoiceBody(viewinvoice);

                    Sale sale = salesOpx.getSaleForAdjustment(viewinvoice);
                    Iterator itil = arr.iterator();
                    OdicProduct prod = null;




                %>

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                ODIC <small><%=sale.getCustName() + "-" + viewinvoice%></small>

                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Dashboard
                                </li>
                            </ol>
                        </div>
                    </div>



                    <div class="row">

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr><th >Products</th></tr>
                                    <tr>
                                        <th>Product ID</th>
                                        <th>Quantity</th>
                                        <th>Status</th>
                                        <th>Check Availability</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <% while (itil.hasNext()) {
                                            prod = (OdicProduct) itil.next();



                                    %> 
                                    <tr>
                                        <td><%=prod.getItemId()%></td>
                                        <td><%=prod.getQuantity()%></td>
                                        <td><%=prod.getAvailableStatus()%></td>
                                        <td>  

                                            <% if (prod.getAvailableStatus().equals("available")) {

                                            %>
                                            <form name="postinvoiceform" method="post" action="checkavailable.jsp" >
                                                <button type="submit" name="checkvailability" value="" class="btn btn-default" onclick ='this.form.onsubmit="return validateForm2()";' disabled></button> 
                                                <input type="hidden" name="productId" value="<%=prod.getItemId()%>"></input>

                                            </form>


                                            <%                                                        } else {

                                            %>

                                            <form name="postinvoiceform" method="post" action="checkavailable.jsp" >
                                                <button type="submit" name="checkvailability" value="" class="btn btn-default" viewinvoice></button> 
                                                <input type="hidden" name="productId" value="<%=prod.getItemId()%>"></input>                                                                                               

                                            </form>

                                            <%

                                                }
                                            %>

                                        </td>
                                    </tr>

                                    <% }%>

                                    <tr><td>  

                                            <form name="viewinvoiceform" method="post" action="dayinvoices.jsp" >
                                                <td class="center"><button type="submit" class="btn btn-primary" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(sale.getDate())%>"> Back To Invoices </button></td>
                                            </form> 

                                           
                                        </td>                                               
                                        <td>                                                    
                                            <label class="control-label  col-xs-4">Total Items</label>
                                        </td>
                                        <td>                                                    
                                            <label class="control-label  col-xs-4"><%= arr.size()%></label>                                                  
                                        </td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>




                    <!-- /.row -->

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- /#page-wrapper -->

        </div>
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