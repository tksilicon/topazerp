<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="logo.gif">
        <title>New Branch</title>

        <script type="text/JavaScript">
           
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
                eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
  alert(msg);
          
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

             <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>BRANCH REGISTRATION FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>
           
          
        </table>
        <form action="insert.jsp" method="post">
            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="150" style="background-image:  url(images/back.gif);">


                <tr>
                    <td ><font color="#333399" size="3">Branch Name: </font> </td>
                    <td ><input type= "date" name="name"   size="30" onclick="MM_popupMsg('Enter date in this format: 2013-01-01\r')"> </td>

                    <td ><font color="#333399" size="3">Address: </font> </td>
                    <td ><input type="text" name="address" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Branch Manager: </font> </td>
                    <td ><input type="text" name="manager"  size="30"> </td>

                    <td ><font color="#333399" size="3">Date Commissioned: </font> </td>
                    <td ><input type="text" name="date" size="30"> </td>
                </tr>

            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" name="branch" value="Register" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displaybranch.jsp"><input type="button" value="View All Branches"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                    <td align ="left"><input type="button" value="Update Branch" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="button" value="Delete Branch" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>
