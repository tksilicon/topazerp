<%-- 
    Document   : selectproductscic
    Created on : Dec 14, 2014, 11:02:36 PM
    Author     : THANKGOD
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%-- 
    Document   : selectproducts
    Created on : Oct 9, 2014, 8:07:31 AM
    Author     : THANKGOD
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.topazerp.sales.*" %>
<%@page import="java.util.Calendar"%>



<%
    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = logout.jsp");

    String username = (String) session.getAttribute("username");
    StaffStatus staff = null;
    Customer cust = null;
    SalesOperations salesOpx = null;
    if (username != null) {
        staff = (StaffStatus) session.getAttribute("LOGIN_USER");


       session.removeAttribute("sale");
        
        if(session.getAttribute("cust") != null){
            
           cust = (Customer)session.getAttribute("cust");
            
        }else{
            
            salesOpx = new SalesOperations();
        
            cust = salesOpx.getCustomers("HQS21");
      

            cust.setCustname(cust.getSurname());
        
            cust.setAddress(request.getParameter("address"));
        
            session.setAttribute("cust", cust);
            
        }
        
       
       
       
        String action = request.getParameter("action");
        
        if (action.equals("old")) {
                       
            session.setAttribute("oldinvoicedate", request.getParameter("paymentdate"));
            session.setAttribute("oldproduct", "true");           
            
            
        }
        
        


    } else {
        response.sendRedirect("logout.jsp");
        return;

    }











%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        <style type="text/css">
            #existingcustomer{               
                display: none;               
            }
            #newcustomer{

            }
            .righfloat {
                float:right;
            }
            .leftfloat{
                float: left;  
            }

        </style>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script src="js/jquery-1.10.2.js"></script>

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

   <script type="text/javascript"> 
            history.forward('1');
        </script>
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
                    var charCode = (evt.which) ? evt.which : event.keyCode;
                
                    if ( charCode > 31 && (charCode < 48 || charCode > 57)) {
                        return false;
                    } else {
                        return true;
                    }      
                }   
       
              
            
                function validateForm2() {
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%=staff.getUsername()%> <b class="caret"></b></a>
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
                            <a href="odicsales.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li class="active">
                            <a href="invoices.jsp"><i class="fa fa-fw fa-file"></i> Invoices</a>
                        </li>
                        <li>
                            <a href="pricelistcic.jsp" ><i class="fa fa-fw fa-file"></i> CIC Price List</a>
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
                                Select 
                                <small>Products</small>
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

                    <div class="row">
                        <form method="post" action="odicsales.jsp" > 
                            <button type="submit" name="cancelTxn" class="btn btn-default" >Cancel Invoice</button> 
                        </form>
                    </div>

                    <br>
                    <!-- /.row -->



                    <form  id="selectForm" class="form-horizontal" action="selectproductscicaction.jsp" method="post" onsubmit="MM_validateForm('quantitydisplay','','R', 'retailwholesale', '', 'R','pricetype', '','R' ); return document.MM_returnValue" >

                        <div class="row">
                            <div class="col-sm-5">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Customer Information</h3>
                                    </div>
                                    <div class="panel-body">




                                        <label >NAME:  <%= cust.getCustname()%></label> </br>
                                        <label >ADDRESS:
                                            <%
                                            
                                                if (cust.getAddress() != null) {
                                            %>
                                            <%= cust.getAddress()%>
                                           
                                            <%
                                                }
                                            %>

                                        </label> </br>

                                        <label >PHONE:
                                            <%
                                                if (cust.getPhoneno() != null) {
                                            %>
                                            <%= cust.getPhoneno()%>
                                            <%
                                                }
                                            %>
                                        </label> </br>




                                    </div>
                                </div> 
                            </div>

                            <div class="col-sm-5">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Product Select</h3>
                                    </div>
                                    <div class="panel-body">
                                        <label>Select Product</label>
                                        <select name="productselect"  class="form-control">
                                            <%
                                                SalesOperations sales = null;
                                                ArrayList<OdicProduct> odicProducts = null;


                                                if (session.getAttribute("prodListCIC") != null) {

                                                    odicProducts = (ArrayList<OdicProduct>) session.getAttribute("prodListCIC");

                                                } else {

                                                    sales = new SalesOperations();
                                                    odicProducts = sales.getProductsCIC();

                                                }


                                                Iterator itil = odicProducts.iterator();
                                                String product_id = "";
                                                String product_desc = "";
                                                OdicProduct prod = null;
                                                String prodname = "";


                                                while (itil.hasNext()) {
                                                    prod = (OdicProduct) itil.next();
                                                    product_id = prod.getItemId();
                                                    product_desc = prod.getItemDescription();


                                                    prodname = product_id + "--" + product_desc;

                                            %>
                                            <option value="<%=product_id%>"><%=  prodname%></option>
                                            <%
                                                }

                                                session.setAttribute("prodListCIC", odicProducts);
                                            %>

                                        </select>


                                    </div>

                                </div>
                            </div>
                        </div>




                        <div class="row">

                            <div class="form-group">
                                <label class="control-label  col-xs-3">Retail/Wholesale </label>                                                           
                                <div class="col-xs-6">
                                    <input  class="form-control"   name="retailwholesale" value='wholesale' readonly="readonly"/>                                  
                                </div>
                            </div>          

                        </div>

                       

                        <div class="form-group">
                            <label class="control-label  col-xs-3">Price Type </label>                                 
                            <div class="col-xs-2">
                                <select  class="form-control" name="pricetype" /> 
                                <option value=''> Select</option>
                                <option value='system'> System Price</option>
                                <option value='entered'>Entered Price</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-3">Enter Quantity</label>                                 
                            <div class="col-xs-6">
                                <input  class="form-control" id="productQuantity"  name="quantitydisplay"  onpaste="return false;" onkeypress="return isNumberKey(event)" />                                  
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-xs-3">Enter Price</label>
                            <div class="col-xs-6">
                                <input class="form-control" name="productprice"  onpaste="return false;" onkeypress="return isNumberKey(event)" />
                            </div>
                        </div>                 

                        <div class="form-group">
                            <label class="control-label col-xs-3">Enter Discount</label>
                            <div class="col-xs-6">
                                <input class="form-control"  name="discountdisplay"  onpaste="return false;" onkeypress="return isNumberKey(event)" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label  col-xs-3">Type of Discount </label>                                 
                            <div class="col-xs-2">
                                <select  class="form-control" name="typeOfDiscount" />  
                                <option value="item"> Item</option>
                                <option value="total">Total</option>
                                </select>
                            </div>
                        </div>

                        <center> <button type="submit" name="selectproduct"  class="btn btn-default" >Select</button>  </center>

                </div>


                <%

                    Set<OdicProduct> selectedProducts = null;
                    if (session.getAttribute("selectedProductsCIC") != null) {

                        selectedProducts = (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProductsCIC");

                        if (selectedProducts.isEmpty()) {
                %>
                No Product Selected  
                <%                                      } else {

                    itil = selectedProducts.iterator();

                    DecimalFormat f = new DecimalFormat("##,###.00");

                %>

                <div class="row">

                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr><th>Selected Products</th></tr>
                            <tr>
                                <th>Product ID</th>
                                <th>Product description</th>
                                <th>Unit Price</th>
                                <th>Quantity</th>
                                <th>Sub-Total</th>
                                <th>Discount</th>                                        
                                <th>Total </th>
                                 <th>TotalAfterDiscount </th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%


                                while (itil.hasNext()) {
                                    prod = (OdicProduct) itil.next();

                            %>

                            <tr>
                                <td><%=  prod.getItemId()%></td>
                                <td><%=  prod.getItemDescription()%></td>

                                <%
                                    if (prod.isEnteredAValue() == true) {

                                %>
                                <td><%= prod.getEnteredPrice()%></td>
                                <%

                                } else if (prod.isEnteredAValue() != true) {

                                %>    

                                <td><%= prod.getWholesalePrice()%></td>



                                <%

                                }
                                %>

                                <td><%=  prod.getQuantity()%></td>
                                <td><%=  f.format(prod.getSubtotal())%></td>
                                <td>
                                    <%
                                        if (prod.getDiscount() <= 0) {
                                    %>

                                    <%=  prod.getDiscount()%>


                                    <%
                                    } else {

                                    %>
                                    <%=  f.format(prod.getDiscount())%>
                                    <%
                                        }

                                    %>
                                </td>


                                <td>
                                    <%
                                        if (prod.getDiscount() > 0) {
                                    %>
                                    <%=  f.format(prod.getSubTotalAfterDiscount())%>

                                    <%
                                        }

                                    %>
                                </td>
                                <td>
                                    <%
                                        if (prod.getTotal() <= 0) {
                                    %>

                                    <%=  prod.getTotal()%>


                                    <%
                                    } else {

                                    %>
                                    <%=  f.format(prod.getTotal())%>
                                    <%
                                        }

                                    %>
                                </td>
                                <td>   
                                    <button type="submit" name="removeproduct" value="<%=prod.getItemId()%>" value class="btn btn-default" onclick ='this.form.onsubmit="return validateForm2()";' >Remove</button> 
                                    <input name="productId" value="<%=prod.getItemId()%>" type="hidden"></input>
                                </td>

                            </tr>
                            <%

                                }

                            %>
                            <tr><td> 
                                 </td>
                                <td> 
                                    <%
                                        if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                                    %>
                                    <button type="submit" name="creditinvoice" value="creditinvoice" class="btn btn-xs btn-primary" onclick ='this.form.onsubmit="return validateForm2()"; this.form.action="salesdispatchcic.jsp";'>Credit Invoice</button>
                                    <% }%>
                                </td>


                                <td> 
                                   
                                </td>                                                      

                            </tr>





                        </tbody>
                    </table>
                </div>

                <%

                    }



                } else {

                %>
                No Product Selected  
                <%                                 }

                %>   




                </form>
            </div>

        </div>

    </div>

    <!-- form -->

    <!-- /.container-fluid -->
    <!-- /#page-wrapper -->
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>

