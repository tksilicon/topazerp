<%-- 
    Document   : selectdatesingle
    Created on : Dec 20, 2014, 4:17:17 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Iterator"%>

<%@page import="com.topazerp.sales.*"%>
<%@page import="java.util.ArrayList"%>

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

<%@page import="com.odic.sales.BankTransaction"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ODIC SALES</title>
        <link rel="icon"  type="image/png" href="images/favicon.png" />
        <link href="bank/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="bank/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

        <style type="text/css">
            .marginup{
                margin-top: 20px
            }
            body{
                padding-top: 70px;
            }

        </style>

        <script type="text/JavaScript">
            
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
                        var len = document.getElementById("amountpaidinput").value.length;
                        var index = document.getElementById("amountpaidinput").value.indexOf('.');
             
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
        
                //http://eonasdan.github.io/bootstrap-datetimepicker/
        </script>

    </head>

    <body>

        <div class="container">
            <img src="opensoon.png"></img>
            <div class="row">

            </div>

            <%



            %>

            <form  method="post" action="selectdateaction.jsp"  method="post" onsubmit="MM_validateForm('dateselector','','R' ); return document.MM_returnValue" >

                <div class="row">

                    <div class='col-sm-4'>

                        <div class="form-group">
                            <div class='input-group date marginup' id='datetimepicker1'>
                                <input name="dateselector" type="text" class="form-control" />
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <button type="submit" name="bankcash"  class="btn btn-default" >Select Date</button> 

                    </div>

                </div>
            </form>
        </div>


        <script type="text/javascript" src="bank/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bank/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bank/bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
        <script type="text/javascript">
                $(function () {
                    $('#datetimepicker1').datetimepicker({
                        pickTime: false
                        
                    });
                   
                });
        </script>


    </body>
</html>