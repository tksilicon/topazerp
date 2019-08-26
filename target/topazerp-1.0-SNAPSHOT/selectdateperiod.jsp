<%-- 
    Document   : newjspselectdateperiod
    Created on : Dec 20, 2014, 4:18:26 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.ArrayList"%>

<%@page import="com.topazerp.sales.*"%>
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

<%@page import="com.topazerp.sales.BankTransaction"%>
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

                   <div class="col-sm-6" style="height:75px;">
       <div class='col-md-5'>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker9'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <div class='col-md-5'>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker10'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
    </div>

                </div>
            </form>
        </div>


        <script type="text/javascript" src="bank/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bank/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bank/bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
        <script type="text/javascript">
        $(function () {
            $('#datetimepicker9').datetimepicker();
            $('#datetimepicker10').datetimepicker();
            $("#datetimepicker9").on("dp.change",function (e) {
               $('#datetimepicker10').data("DateTimePicker").setMinDate(e.date);
            });
            $("#datetimepicker10").on("dp.change",function (e) {
               $('#datetimepicker9').data("DateTimePicker").setMaxDate(e.date);
            });
        });
    </script>

    </body>
</html>

