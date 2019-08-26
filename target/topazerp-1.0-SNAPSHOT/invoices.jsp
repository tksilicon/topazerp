
<%-- 
    Document   : invoices
    Created on : Oct 3, 2014, 2:12:17 AM
    Author     : THANKGOD
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%

    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");
    StaffStatus staff = null;
    SalesOperations salesOpx = null;
    Calendar cal = null;

    String username = (String) session.getAttribute("username");
    session.setAttribute("oldproduct", "false");
    session.removeAttribute("oldinvoicedate");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");
        

        salesOpx = new SalesOperations();



        if (request.getParameter("selectedProducts") != null) {
            session.removeAttribute("selectedProducts");
            session.removeAttribute("custId");
        }

        if (request.getParameter("selectedProductsCIC") != null) {
            session.removeAttribute("selectedProductsCIC");
            session.removeAttribute("custId");
        }


        if (request.getParameter("cancelTxn") != null) {

            //salesOpx.deleteSale(request.getParameter("cancelTxn"));
            session.removeAttribute("selectedProducts");
            session.removeAttribute("custId");
            session.removeAttribute("selectedProductsCIC");
        }


        cal = OdicUtil.generateDate();



    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }








%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.topazerp.sales.*" %>
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
        <script src="autocomplete/autocomplete.js"></script> 

        <script type="text/JavaScript">
            $(document).ready(function(){
                $('input[type="radio"]').click(function(){
                    if($(this).attr("value")=="new"){
                        $("#existingcustomer").hide();
                        $("#newcustomer").show();
                    }
                    if($(this).attr("value")=="old"){
                        $("#newcustomer").hide();
                        $("#existingcustomer").show();
                    }
                    
                });
            });
            
           

            function MM_findObj(n, d) { //v4.01
                var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
                    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
                if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
                for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
                if(!x && d.getElementById) x=d.getElementById(n); return x;
            }

            function MM_validateForm() { //v4.0
                var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
            
                for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
                    if (val) { nm=val.name; if ((val=val.value)!="") {
                            if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
                                if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
                            } else if (test!='R') { num = parseFloat(val);
                                if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
                                if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
                                    min=test.substring(8,p); max=test.substring(p+1);
                                    if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
                                } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
                } if (errors) alert('The following error(s) occurred:\n'+errors);
                document.MM_returnValue = (errors == '');
            }
            
            function validateForm() {
                var x = document.forms["newcustomerForm"]["surname"].value;
                if (x == null || x == "") {
                    alert("Enter surname and first name of customer");
                    return false;
                }
                //var x = document.forms["newcustomerForm"]["phone"].value;
                //if (x == null || x == "") {
                //alert("Enter phone number of customer");
                //return false;
                //}
            }                    
                   
            

        </script>




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
                                Generate 
                                <small>Invoices</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="odicsales.jsp">Dashboard</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Invoices
                                </li>
                            </ol>

                            <h1 class="page-header">

                                <small ><%
                                    if (request.getParameter("limiterror") != null) {

                                        if (request.getParameter("limiterror").equals("error")) {

                                    %>
                                    Request Extension of Credit limit From Management
                                    <%                                    } else {
                                    %>
                                    Register Customer to request Credit limit
                                    <%                                        }
                                        }
                                    %></small>
                            </h1>

                        </div>
                    </div>
                    <!-- /.row -->




                    <div class="row">
                        <form action="selectproductsaction.jsp" method="post"  name="newcustomerForm" onsubmit="return validateForm()">
                            <div class="col-lg-6" > 


                                <div class="panel panel-default">                
                                    <div class="panel-body">   
                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Branch</label>                                 
                                            <div class="col-md-offset-4">
                                                <input   class="form-control" name="custbranch" value="<%= staff.getBranch()%>" readonly="readonly" />                                  
                                            </div>                                
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Customer Number</label>                                 
                                            <div class="col-md-offset-4">
                                                <input   class="form-control" name="custno" value="" readonly="readonly" />                                  
                                            </div> 
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Date</label>                                 
                                            <div class="col-md-offset-4">
                                                <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");%>
                                                <input   class="form-control" name="todaydate" value="<%= format.format(cal.getTime())%>"  readonly="readonly"/>                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Title </label>                                 
                                            <div class="col-md-offset-4">
                                                <select  class="form-control" name="title" />  
                                                <option value=''> Select</option>
                                                <option value='Mr'>Mr</option>
                                                <option value='Mrs'>Mrs</option>
                                                <option value='Dr'>Dr</option>
                                                <option value='Chief'>Chief</option>
                                                <option value='Prof'>Prof</option>
                                                <option value='Alhaji'>Alhaji</option>
                                                <option value='Otunba'>Otunba</option>
                                                <option value='Ms'>Ms</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Surname</label>                                 
                                            <div class="col-md-offset-4">
                                                <input   class="form-control" name="surname" />                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">First Name</label>                                 
                                            <div class="col-md-offset-4">
                                                <input  class="form-control" name="fname" />                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Address</label>                                 
                                            <div class="col-md-offset-4">
                                                <input  class="form-control" name="address" />                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Phone number</label>                                 
                                            <div class="col-md-offset-4">
                                                <input  class="form-control" name="phone" />                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-3 text-right">Email Address</label>                                 
                                            <div class="col-md-offset-4">
                                                <input  class="form-control" name="email" />                                  
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-xs-2 text-left">State</label>                                 
                                            <div class="col-xs-4">
                                                <select  class="form-control" name="state" /> 
                                                <OPTION value='' >Select</OPTION>  
                                                <OPTION value=Abia>Abia</OPTION> 
                                                <OPTION value=Abuja>Abuja</OPTION>  
                                                <OPTION value=Adamawa>Adamawa</OPTION>  
                                                <OPTION value='Akwa Ibom'>Akwa Ibom</OPTION> 
                                                <OPTION value=Anambra>Anambra</OPTION>  
                                                <OPTION value=Bauchi>Bauchi</OPTION>  
                                                <OPTION value=Bayelsa>Bayelsa</OPTION>  
                                                <OPTION value=Benue>Benue</OPTION>  
                                                <OPTION value='Cross River'>Cross River</OPTION>  
                                                <OPTION value=Delta>Delta</OPTION> 
                                                <OPTION value=Ebonyi>Ebonyi</OPTION>  
                                                <OPTION value=Edo>Edo</OPTION> 
                                                <OPTION value=Ekiti>Ekiti</OPTION>  
                                                <OPTION value=Enugu>Enugu</OPTION> 
                                                <OPTION value=Gombe>Gombe</OPTION>  
                                                <OPTION value=Imo>Imo</OPTION> 
                                                <OPTION value=Jigawa>Jigawa</OPTION>              
                                                <OPTION value=Kaduna>Kaduna</OPTION>  
                                                <OPTION value=Kano>Kano</OPTION>  
                                                <OPTION value=Katsina>Katsina</OPTION> 
                                                <OPTION value=Kebbi>Kebbi</OPTION>  
                                                <OPTION value=Kogi>Kogi</OPTION>  
                                                <OPTION value=Kwara>Kwara</OPTION> 
                                                <OPTION value=Lagos>Lagos</OPTION>  
                                                <OPTION value=Nassarawa>Nassarawa</OPTION> 
                                                <OPTION value=Niger>Niger</OPTION>  
                                                <OPTION value=Ogun>Ogun</OPTION>  
                                                <OPTION value=Ondo>Ondo</OPTION> 
                                                <OPTION value=Osun>Osun</OPTION>  
                                                <OPTION value=Oyo>Oyo</OPTION> 
                                                <OPTION value=Plateau>Plateau</OPTION>  
                                                <OPTION value=Rivers>Rivers</OPTION>  
                                                <OPTION value=Sokoto>Sokoto</OPTION>  
                                                <OPTION value=Taraba>Taraba</OPTION>  
                                                <OPTION value=Yobe>Yobe</OPTION>  
                                                <OPTION value=Zamfara>Zamfara</OPTION>
                                                </select>
                                            </div>    


                                            <label class="control-label col-xs-2 text-left">Country</label>                                 
                                            <div class="col-xs-4">
                                                <select  class="form-control" name="country" />  
                                                <option>Nigeria </option>
                                                <option>Non-Nigerian </option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <br>

                                        <div class="form-group">
                                            <label class="control-label  text-right col-xs-2">Gender </label>                                 
                                            <div class="col-xs-4">
                                                <select  class="form-control" name="gender" />  
                                                <option value=''> select</option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                                </select>
                                            </div>

                                            <label class="control-label  text-right col-xs-2">CustType </label>                                 
                                            <div class="col-xs-4">
                                                <select  class="form-control" name="custtype" />  
                                                <option value="Retail"Retail</option>
                                                <option value="Wholesale">Wholesale</option>                                          
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="form-group">
                                            <label class="control-label col-xs-6 text-center">Birth Day (D)</label> 
                                            <label class="control-label col-xs-6 text-center">Birth Day (M)</label>  
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <select  class="form-control" name="month" /> 
                                                <option >   Select   </option>
                                                <option >   1   </option>
                                                <option>   2     </option>
                                                <option>   3     </option>
                                                <option>   4     </option>
                                                <option>   5     </option>
                                                <option>   6     </option>
                                                <option>   7     </option>
                                                <option>   8     </option>
                                                <option>   9     </option>
                                                <option>   10     </option>
                                                <option>   11     </option>
                                                <option>   12     </option>

                                                <option >   13   </option>
                                                <option>   14     </option>
                                                <option>   15    </option>
                                                <option>   16    </option>
                                                <option>   17    </option>
                                                <option>   18    </option>
                                                <option>   19    </option>
                                                <option>   20   </option>
                                                <option>   21    </option>
                                                <option>   22     </option>
                                                <option>   23     </option>
                                                <option>   24     </option>
                                                <option>   25     </option>
                                                <option >  26   </option>
                                                <option>   27     </option>
                                                <option>   28    </option>
                                                <option>   29     </option>
                                                <option>   30     </option>
                                                <option>   31    </option>
                                                </select>
                                            </div>                                                            


                                            <div class="col-xs-6">
                                                <select  class="form-control" name="day" />  
                                                <option >   Select   </option>
                                                <option >   1   </option>
                                                <option>   2     </option>
                                                <option>   3     </option>
                                                <option>   4     </option>
                                                <option>   5     </option>
                                                <option>   6     </option>
                                                <option>   7     </option>
                                                <option>   8     </option>
                                                <option>   9     </option>
                                                <option>   10     </option>
                                                <option>   11     </option>
                                                <option>   12     </option>
                                                </select>
                                            </div>
                                        </div>
                                        <br></br>




                                    </div>
                                </div>
                                <div class="form-group">                                             
                                    <div class="col-md-offset-2">
                                        <button type="submit" name="newcustomer" class="btn btn-default form-control">Continue</button>

                                    </div>

                                </div>
                            </div>


                        </form>


                        <form method="post" action="selectproductsaction.jsp" >
                            <div class="col-lg-6" >

                                <div class="form-group">
                                    <label class="control-label  col-xs-2">Existing Customer </label>  
                                    <div class="col-xs-8">
                                        <select name="customerselect"  class="form-control">
                                            <%


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


                                                    double bal = cust.getCustomerBalance();


                                            %>
                                            <option value="<%=regno%>"><%=custname.toUpperCase() + " " + regno + " " + phone + " "+ bal%></option>
                                            <%
                                                    phone = "";
                                                }
                                                session.setAttribute("custList", odicCustomers);
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <br></br>
                                <div class="form-group">
                                    <center><button type="submit" name="invoices" class="btn btn-default">Select</button></center>
                                </div>





                                <!-- /.container-fluid -->

                            </div>
                        </form>
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
