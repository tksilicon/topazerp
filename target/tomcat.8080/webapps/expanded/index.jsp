<%-- 
    Document   : index
    Created on : Nov 25, 2014, 11:41:54 AM
    Author     : THANKGOD
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
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

        <title>Login</title>

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
        
        
         <script>

            history.forward('1');

        </script>
        
         <SCRIPT LANGUAGE="JavaScript">
            function isEmpty(str) {
                if (str == null || str == '')
                    return true;
                return false;
            }

            function validate(username, password, branch) {
                
                
                 if (isEmpty(branch)) {
                    alert('You must enter a Branch');
                    return false;
                }
                if (isEmpty(username)) {
                    alert('You must enter a User Name');
                    return false;
                }
                if (isEmpty(password)) {
                    alert('You must enter a Password');
                    return false;
                }
                return true;
            }
        </SCRIPT>

    </head>

    <body>

        <div class="container">
            <div class="row">

                <!-- /.col-lg-4 -->
                <div class="col-md-4 col-md-offset-4 text-center"> 
                     <img src="images/logotopaz.png">   
                    <h1>TOPAZ ERP (SALES)</h1>
                                   
                </div>

            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <form method="post"  action="Login.jsp" OnSubmit="return validate(this.username.value,
                               this.password.value, this.branch.value)" role="form">
                                <fieldset>
                                    <div class="form-group">
                                       <% 
                                                                         
                                           
                                            if(request.getParameter("responseMessage") != null ){
                                           %>  <label class="form-control"><%= request.getParameter("responseMessage")%></label>  <%
                                        }                       
                                           
                                        %>   
                                    </div>
                                    <div class="form-group">
                                         <select class="form-control" name="branch" autofocus >
                                                <option value=''> Select a Branch</option>
                                                
                                                <%
                                                    
                                               
                                                SalesOperations salesOpx = new SalesOperations();
                                                
                                                ArrayList<String> branches = salesOpx.getBranchesIndexPage();
                                                Iterator itil = branches.iterator();
                                               
                                                
                                                while(itil.hasNext()){
                                                    String branch = (String)itil.next();
                                                    %>
                                                     <option value="<%= branch  %>"><%= branch  %> </option>
                                                    <%
                                                }
                                               
                                                %>
                                         </select>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Username" name="username"  >
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <!--<div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                     Change this to a button or input when using this as a form -->
                                    <button class="btn btn-lg btn-success btn-block" name="login">Login</button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>

    </body>

</html>
