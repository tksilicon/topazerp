<%-- 
    Document   : changepassword
    Created on : Jan 19, 2015, 9:52:02 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.topazerp.sales.*" %>

<%


    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = logout.jsp");

    StaffStatus staff = null;

    if ((String) session.getAttribute("username") == null) {
        response.sendRedirect("logout.jsp");
    } else {
        staff = (StaffStatus) session.getAttribute("LOGIN_USER");

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

        <style>
            .btn {
                margin-bottom:5px;
            }
        </style>

        <script type="text/javascript">
            function validateForm() {
                var x = document.forms["stockInfo"]["productId"].value;
                if (x == null || x == "") {
                    alert("Select product to view stock");
                    return false;
                }
                //var x = document.forms["newcustomerForm"]["phone"].value;
                //if (x == null || x == "") {
                //alert("Enter phone number of customer");
                //return false;
                //}
            }  
            
            

            // function checkPassword(str)
            //{
            // var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
            //return re.test(str);
            // }

            function checkPassword(str)
            {
                var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
                return re.test(str);
            }
            
             //re = /^\w+$/;
             //if(!re.test(form.username.value)) {
                    //alert("Error: Username must contain only letters, numbers and underscores!");
                    //form.username.focus();
                    //return false;
                //}
                
            //http://www.the-art-of-web.com/javascript/validate-password/
            function checkForm(form)
            {
                if(form.username.value == "") {
                    alert("Error: Username cannot be blank!");
                    form.username.focus();
                    return false;
                }
               
                var str1 = form.pwd1.value;
                var n1 = str1.length;
                
                if(form.pwd1.value != "" && n1>6 && form.pwd1.value == form.pwd2.value) {
                
                    //if(!checkPassword(form.pwd1.value)) {
                        //alert("The password you have entered is not valid!");
                        //form.pwd1.focus();
                        //return false;
                    //}
                }else if (n1 < 6){
                    
                    alert("Error: Password must be greater than 6 characters!");
                    form.pwd1.focus();
                    return false;
                }else {
                    alert("Error: Please check that you've entered and confirmed your password!");
                    form.pwd1.focus();
                    return false;
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
                    <a class="navbar-brand" href="odicinventory.jsp">ODIC SALES</a>
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
                        
                         <%if(staff.getJobType().equals("Cashier")){
                            %>
                        <li>
                            <a href="pricelist.jsp" ><i class="fa fa-fw fa-file"></i> Price List</a>
                        </li>                       
                        <li >
                            <a href="banktransactionsmanagement.jsp"><i class="fa fa-fw fa-file"></i> Bank Transactions</a>
                        </li>
                        <li>
                            <a href="expenses.jsp"><i class="fa fa-fw fa-file"></i> Expenses</a>
                        </li>
                        <li >
                            <a href="receipts.jsp"><i class="fa fa-fw fa-file"></i> Receipts</a>
                        </li>
                         <%
                            
                        }%>
                       
                        <li class="active">
                            <a href="changepassword.jsp"><i class="fa fa-fw fa-file"></i> Change Password</a>
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
                            <h1 class="page-header">
                                ODIC <%= staff.getBranch()%> <small>Dashboard</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Change Password
                                </li>
                            </ol>
                        </div>
                    </div>



                    <!-- /.row -->

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">                               
                            </h1>

                        </div>
                    </div>
                    <form action="passwordconfirm.jsp" method="post"  name="changepwd" onsubmit="return checkForm(this);">




                        <div class="row">
                            <div class="col-lg-5" > 
                                <div class="panel panel-default">                
                                    <div class="panel-body"> 

                                        <div class="form-group">
                                            <label class="control-label col-xs-3  text-right">Username: </label>


                                            <div class="col-md-offset-4">
                                                <input class="form-control"  name="username"  value="<%=staff.getUsername()%> "onpaste="return false;" readonly="readonly" >
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3  text-right">Password: </label>


                                            <div class="col-md-offset-4">
                                                <input class="form-control" type="password"  name="pwd1" onpaste="return false;"  >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-xs-3  text-right">Confirm Password: </label>


                                            <div class="col-md-offset-4">
                                                <input class="form-control" type="password" name="pwd2" onpaste="return false;" >
                                            </div>
                                        </div>

                                        <div class="form-group">                                             
                                            <div class="col-md-offset-2">
                                                <button type="submit" name="paswchange" class="btn btn-default form-control">Change Password</button>

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>


                </div>

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

