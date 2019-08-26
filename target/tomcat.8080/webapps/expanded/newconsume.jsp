<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>New Consumables</title>

        <script type="text/JavaScript">

            function MM_jumpMenu(targ,selObj,restore){ //v3.0
            eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
            if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
            alert(msg);

            function MM_goToURL() { //v3.0
            var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
            for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
            }
        </script>

        <script type="text/JavaScript">

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
            } if (errors) alert('The Following Fields are Compulsory:\n'+errors);
            document.MM_returnValue = (errors == '');
            }

        </script>
        <script type="text/javascript">
            function doMath()
            {
            // Capture the entered values of two input boxes
            var prevbal = document.getElementById('qty').value;
            var my_input2 = document.getElementById('price').value;

            // Add them together and display
            var sum = parseInt(prevbal) * parseInt(my_input2);
            document.getElementById('total').value = parseInt(sum);
            }
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>RAW MATERIAL SETUP FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>
            
        </table>
        <form action="insert.jsp" method="post" onsubmit="MM_validateForm('id', '', 'R', 'name', '', 'R', 'pic', '', 'RisNum', 'price', '', 'RisNum');
                return document.MM_returnValue">
            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="180" style="background-image:  url(images/back.gif);">

                <tr>
                    <td ><font color="#333399" size="3">Date: </font> </td>
                    <td ><input type="text" name="date" value="<%=session.getAttribute("mynewdate")%> " readonly="readonly" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Item's Name </font> </td>
                    <td ><input type="text" name="name" size="30"> </td>
                    <td ><font color="#333399" size="3">Beginning Qty: </font> </td>
                    <td ><input type="text" name="qty" value="0" id="qty"   size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Unit Price </font> </td>
                    <td ><input type="text" name="price" id="price"  value="0"   size="30"> </td>
                    <td ><font color="#333399" size="3">Beginning Bal.: </font> </td>
                    <td ><input type="text" name="amount" id="total"  value="0" onclick="doMath();" autocomplete="off" size="30"> </td>
                </tr>
            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="SetUp" size="20" name="raw"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displayconsume.jsp"><input type="button" value="View Consumables" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                    <td align ="left"><a href="displayconsume.jsp"><input type="button" value="Issue" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                </tr>
            
            </table>
        </form>
    </body>
</html>

