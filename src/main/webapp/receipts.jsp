<%-- 
    Document   : receipts
    Created on : Dec 15, 2014, 10:12:23 PM
    Author     : THANKGOD
--%>


<%@page import="java.util.Collections"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.topazerp.sales.*" %>

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

        <script type="text/javascript">
            
            
            function MM_findObj(n, d) { //v4.01
                var p,i,x;  if(!d) 
                    d=document; 
                if((p=n.indexOf("?"))>0&&parent.frames.length) {
                    d=parent.frames[n.substring(p+1)].document;
                    n=n.substring(0,p);
                }
                if(!(x=d[n])&&d.all)
                    x=d.all[n]; 
                for (i=0;!x&&i<d.forms.length;i++) 
                    x=d.forms[i][n];
                for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
                    x=MM_findObj(n,d.layers[i].document);
                if(!x && d.getElementById) 
                    x=d.getElementById(n); return x;
            }

            function MM_validateForm() { //v4.0
                var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
                    
                for (i=0; i<(args.length-2); i+=3) {
                    test=args[i+2];
                    val=MM_findObj(args[i]);
                        
                    if (val) { 
                        nm=val.name; 
                        if ((val=val.value)!="") {
                            if (test.indexOf('isEmail')!=-1) { 
                                p=val.indexOf('@');
                                if (p<1 || p==(val.length-1)) 
                                    errors+='- '+nm+' must contain an e-mail address.\n';
                                
                            }else if (test!='R') {
                                num = parseFloat(val);
                                if (isNaN(val))
                                    errors+='- '+nm+' must contain a number.\n';
                                if (test.indexOf('inRange') != -1) {
                                    p=test.indexOf(':');
                                    min=test.substring(8,p);
                                    max=test.substring(p+1);
                                    if (num<min || max<num) 
                                        errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
                                } 
                            } 
                        } else if (test.charAt(0) == 'R' ) 
                            errors += '- '+nm+' is required.\n'; }
                    }
                    if (errors) 
                        alert('The following error(s) occurred:\n'+errors);
                    document.MM_returnValue = (errors == '');
                }    
            
                function isNumberKey(evt) {
                    var charCode = (evt.which) ? evt.which : event.keyCode
                    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46)
                        return false;
                    else {
                        var len = document.getElementById("amountpaid").value.length;
                        var index = document.getElementById("amountpaid").value.indexOf('.');
             
                        if (index > 0 && charCode == 46) {
                            return false;
                        }
                        if (index > 0) {
                            var CharAfterdot = (len + 1) - index;
                            if (CharAfterdot > 3) {
                                return false;
                            }
                        }

                    }
                    return true;
                }
        
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
                                <a href="profile.jsp"><i class="fa fa-fw fa-user"></i> Profile</a>
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
                        <li class="active">
                            <a href="odicsales.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                        </li>
                        <li>
                            <a href="banktransactions.html"><i class="fa fa-fw fa-file"></i> Bank Transactions</a>
                        </li>
                        <li>
                            <a href="expenses.jsp"><i class="fa fa-fw fa-file"></i> Expenses</a>
                        </li>
                        <li>
                            <a href="receipts.jsp"><i class="fa fa-fw fa-file"></i> Receipts</a>
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
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header text-center">
                                Receipts  <small></small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="odicsales.jsp">Dashboard</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Receipts
                                </li>
                            </ol>
                        </div>
                    </div>


                </div>
                <!-- /.row -->


                <form name="receiptsForm" method="post" action="selectdate.jsp" method="post" onsubmit="MM_validateForm('customerselect','','R', 'amountpaid', '', 'R','dateselector','','R' ); return document.MM_returnValue" >


                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-info">
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="control-label  col-xs-4">Existing Customer:</label>    
                                        <div class="col-md-offset-4">
                                            <select class="form-control" name="customerselect" >
                                                <option value=''> Select</option>
                                                <%
                                                    SalesOperations salesOpx = new SalesOperations();


                                                    ArrayList<Customer> odicCustomers = salesOpx.getCustomers();
                                                    Collections.sort(odicCustomers);

                                                    Iterator itil = odicCustomers.iterator();

                                                    String surname = "";
                                                    String firstname = "";
                                                    String regno = "";
                                                    String phone = "";

                                                    Customer cust = null;

                                                    String custname = "";

                                                    while (itil.hasNext()) {
                                                        cust = (Customer) itil.next();
                                                        if (cust.getSurname().equals("CIC")) {
                                                            continue;
                                                        }
                                                        surname = cust.getSurname();
                                                        firstname = cust.getFirstname();
                                                        regno = cust.getRegno();



                                                        if (firstname.equals(null) | firstname.equals("null")) {
                                                            custname = surname;
                                                        } else {
                                                            custname = surname + " " + firstname;
                                                        }
                                                        cust.setCustname(custname);

                                                        if (cust.getPhoneno() != null) {
                                                            phone = cust.getPhoneno();
                                                        }





                                                %>
                                                <option value="<%=regno%>"><%=custname + " " + regno + " " + phone%></option>

                                                <%

                                                    }

                                                    session.setAttribute("custListrecipts", odicCustomers);
                                                %>
                                            </select>                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-xs-4">Amount:</label>
                                        <div class="col-md-offset-4">
                                            <input class="form-control" id="amountpaid"  name="amountpaid"  onpaste="return false;" onkeypress="return isNumberKey(event)" />
                                        </div>
                                    </div>
                                    <div class="form-group">               

                                        <label class="control-label col-xs-4">Payment Date</label>
                                        <div class="col-md-offset-4">
                                            <input   class="form-control" type="date" id="paymentdate" name="dateselector"  onpaste="return false;"  />                                  
                                        </div>                                    
                                    </div>


                                    <center> <button type="submit" name="receiptspaid"  class="btn btn-default" >Enter Transaction</button>  </center>


                                </div>
                            </div>                                       
                        </div>

                    </div>
                </form>
            </div>

        </div>


        <!-- /.container-fluid -->

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
