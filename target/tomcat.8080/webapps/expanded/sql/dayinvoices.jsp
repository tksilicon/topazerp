<%-- 
    Document   : todaysinvoices
    Created on : Dec 7, 2014, 11:03:52 AM
    Author     : THANKGOD
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="com.odic.sales.errors.SaveInvoiceException"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%


    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    StaffStatus staff = null;
    SalesOperations salesOpx = null;
    Calendar cal = null;;
    Sale sale = null;
    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    
    

    String paymentdate = request.getParameter("paymentdate");
    Date workingDate = null;
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");


    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");
        salesOpx = new SalesOperations();

        cal = OdicUtil.generateDate();

        if (request.getParameter("paymentdate") != null) {
            workingDate = formatter.parse(paymentdate);
        } else if (session.getAttribute("oldinvoicedate") != null) {
            workingDate = formatter.parse((String)session.getAttribute("oldinvoicedate"));
        } else if (request.getParameter("dateforsupply") != null) {
            workingDate = formatter.parse(request.getParameter("dateforsupply"));
        }

        session.removeAttribute("oldinvoicedate");
        session.setAttribute("oldproduct", "false");


        if ((Sale) session.getAttribute("sale") != null) {
            sale = (Sale) session.getAttribute("sale");

            try {

                sale.setStatus("uncompleted");
                sale.setSuppliedFrom("none");
                sale.setPostedStatus("notposted");

                salesOpx.saveInvoice(sale);



            } catch (SaveInvoiceException ex) {


                if (session.getAttribute("selectedProducts") != null) {
                    session.removeAttribute("selectedProducts");
                }

                if (session.getAttribute("sale") != null) {
                    session.removeAttribute("sale");
                }
                if (session.getAttribute("custId") != null) {
                    session.removeAttribute("custId");
                }
                if (session.getAttribute("selectedProductsCIC") != null) {
                    session.removeAttribute("selectedProductsCIC");
                }


                response.sendRedirect("dailyinvoices.jsp?error=error");
            } catch (Exception ex) {


                if (session.getAttribute("selectedProducts") != null) {
                    session.removeAttribute("selectedProducts");
                }

                if (session.getAttribute("sale") != null) {
                    session.removeAttribute("sale");
                }
                if (session.getAttribute("custId") != null) {
                    session.removeAttribute("custId");
                }
                if (session.getAttribute("selectedProductsCIC") != null) {
                    session.removeAttribute("selectedProductsCIC");
                }


                response.sendRedirect("dailyinvoices.jsp?error=error");
            }




            if (session.getAttribute("selectedProducts") != null) {
                session.removeAttribute("selectedProducts");
            }

            if (session.getAttribute("sale") != null) {
                session.removeAttribute("sale");
            }
            if (session.getAttribute("custId") != null) {
                session.removeAttribute("custId");
            }
            if (session.getAttribute("selectedProductsCIC") != null) {
                session.removeAttribute("selectedProductsCIC");
            }



        }

        



    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

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
                    <a class="active navbar-brand" href="odicsales.jsp">ODIC SALES</a>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%=staff.getUsername()%><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
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
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="odicsales.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>

                        <li class="active">
                            <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                        </li>                       
                        <li>
                            <a href="reports.jsp"><i class="fa fa-fw fa-file"></i> Reports</a>
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
                            <h1 class="page-header text-center">


                                <small>Invoices - <%= format.format(workingDate)%> </small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="odicsales.jsp">Dashboard</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Invoices
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <% if (request.getParameter("error") != null) {

                        %>
                        <form method="post" action="invoices.jsp" >
                            <center style="margin-top:10px; margin-left: 300px;float:none"> <button   type="submit" name="cancelTxn" class="btn btn-default" >Regenerate  Invoice</button> 
                            </center>
                        </form>
                        <%                                }
                        %>
                    </div>

                    <%

                        ArrayList sales = null;

                      

                        sales = salesOpx.getTodaySales(staff.getBranch(), workingDate);



                        //Collections.sort(sales, new SalesComparator());

                    %>                    

                    <div class="row">
                        <div class="form-group">
                            <div class="col-lg-4">
                                <a href="oldinvoice.jsp" role="button" class="btn btn-success btn-large">Old Invoice</a>
                            </div>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col-lg-10">
                            <h2> Date </h2>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>

                                            <th>S/N</th>
                                            <th>Invoice No</th>
                                            <th>Customer Name</th>
                                            <th>Customer ID</th>
                                            <th>Total Discount</th>                                            
                                            <th>Grand Total</th>
                                            <th>Amount Paid</th>
                                            <th>Balance</th>                                     
                                            <th>Staff</th>                                            

                                            <th>Status</th>
                                            <th>Void</th>
                                            <th>Supply</th>
                                            <th>Posted</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%

                                            Iterator itil = sales.iterator();
                                            Sale sale2 = null;

                                            int counter = 1;

                                            while (itil.hasNext()) {
                                                sale2 = (Sale) itil.next();

                                        %>                                   

                                        <tr>
                                            <td><%=counter%></td> 



                                    <form name="viewinvoiceform" method="post" action="viewinvoice.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="viewinvoice" value="<%=sale2.getInvoiceNo()%>"> <%=sale2.getInvoiceNo()%></button></td>
                                    </form>  


                                    <td><%=sale2.getCustName()%></td> 
                                    <td><%=sale2.getCustID()%></td>                                                  
                                    <td><%=sale2.getTotalDiscount()%></td> 
                                    <td><%=sale2.getTotal()%></td> 
                                    <td><%=sale2.getAmountPaid()%></td> 
                                    <td><%=sale2.getBalance()%></td> 
                                    <td><%=sale2.getStaffname()%></td>                                        

                                    <% if (sale2.getStatus().equals("uncompleted")) {

                                    %>
                                    <form name="editinvoiceform" method="post" action="invoiceaction.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="setcompleted" value="<%=sale2.getInvoiceNo()%>" onclick="javascript:return confirm('This action will change invoice status to completed')"> <%= sale2.getStatus()%></button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">
                                    </form>

                                    <form name="voidinvoiceform" method="post" action="invoiceaction.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="voidinvoice" value="<%=sale2.getInvoiceNo()%>"> Void Invoice</button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">

                                    </form>
                                    <td></td>
                                    <td><%=sale2.getPostedStatus()%></td>  
                                    <%
                                    } else if (sale2.getStatus().equals("completed") && sale2.getSupply().equals("none")) {

                                    %>
                                    <td> <%= sale2.getStatus()%></td>
                                    <form name="voidinvoiceform" method="post" action="invoiceaction.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="voidinvoice" value="<%=sale2.getInvoiceNo()%>" onclick="javascript:return confirm('This action will delete invoice and add the invoice to void usable list')"> Void Invoice</button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">

                                    </form>
                                    <form name="postforSupplyform" method="post" action="invoicepost.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="suppyinvoice" value="<%=sale2.getInvoiceNo()%>" onclick="javascript:return confirm('This action will post invoice for supply')"> Supply Invoice</button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">
                                    </form>
                                    <td><%= sale2.getPostedStatus()%> </td>
                                    <%

                                    } else if (sale2.getStatus().equals("completed") && sale2.getSupply().equals("supplyposted")) {

                                    %>
                                    <td> <%= sale2.getStatus()%></td>
                                    <td></td>
                                    <td><%= sale2.getSupply()%> </td>
                                    <td><%= sale2.getPostedStatus()%> </td>





                                    <%

                                    } else if (sale2.getStatus().equals("completed") && sale2.getSupply().equals("supplied")) {

                                    %>

                                    <td> <%= sale2.getStatus()%></td>
                                    <form name="voidinvoiceform" method="post" action="invoiceaction.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="voidinvoice" value="<%=sale2.getInvoiceNo()%>" onclick="javascript:return confirm('This action will delete invoice and add the invoice to void usable list')"> Void Invoice</button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">
                                    </form>
                                    <td><%=sale2.getSupply()%></td> 
                                    <form name="postinvoiceform" method="post" action="invoiceaction.jsp" >
                                        <td class="center"><button type="submit" class="btn btn-primary" name="postinvoice" value="<%=sale2.getInvoiceNo()%>" onclick="javascript:return confirm('This action will post the invoice to admin')"> Post Invoice</button></td>
                                        <input type="hidden" name="dateforsupply" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(workingDate)%>">
                                    </form>

                                    <%

                                    } else if (sale2.getPostedStatus().equals("posted")) {

                                    %>

                                    <td> <%= sale2.getStatus()%></td>
                                    <td></td>
                                    <td><%=sale2.getSupply()%></td> 
                                    <td><%=sale2.getPostedStatus()%></td> 

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
                        </div>                  
                    </div>
                </div>


                <!-- /#page-wrapper -->

            </div>
            <!-- /#wrapper -->
        </div>

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>



    </body>
</html>
