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
        <title>New Items</title>

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
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>ITEMS REGISTRATION FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>


        </table>
        <form action="insert.jsp" method="post" onsubmit="MM_validateForm('id','','R','name','','R','pic','','RisNum','price','','RisNum');return document.MM_returnValue">
            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="180" style="background-image:  url(images/back.gif);">

                <tr>
                    <td ><font color="#333399" size="3">Reg. Date: </font> </td>
                    <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate")%>" readonly="readonly"></td>

                    <td ><font color="#333399" size="3">Item's Id: </font> </td>
                    <td ><input type="text" name="id" value="item11" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Item's Name: </font> </td>
                    <td ><input type="text" name="name"  size="30"> </td>

                    <td ><font color="#333399" size="3">Category </font> </td>
                    <td> <select name="cat"   width="30" >
                            <option >  Men_Suits   </option>
                            <option>   Men_Pants     </option>
                            <option>   Sports_jkt    </option>
                            <option>   Sweaters      </option>
                            <option>   DC_Shirts    </option>
                            <option>  LD_Shirts    </option>
                            <option>   Ladies_Pants   </option>

                            <option>   Skirts     </option>
                            <option>   Skirt_Suits     </option>
                            <option>   DC_Skirts    </option>
                            <option>   TieAndMisc     </option>
                            <option>   Uniform     </option>
                            <option>   Jacket     </option>
                            <option>   Blouse     </option>
                            <option>   Press_Only     </option>
                            <option>   Child     </option>
                            <option>   HouseHold     </option>

                            <option>   Dress     </option>
                            <option>   Pant_Suit   </option>
                            <option>   LD_Pants     </option>
                            <option>   LD_Table_Cloth    </option>
                            <option>   OverCoat  </option>
                            <option>   RainCoat       </option>
                            <option>   Jackets </option>
                            <option>   Blouse   </option>
                            <option>   Dress_Suits </option>

                            <option>   T_Shirts  </option>
                            <option>   Dress_Suits  </option>
                            <option>   Laundry     </option>
                            <option>   DC_Men_Natives     </option>
                            <option>   LD_Men_Natives     </option>
                            <option>   DC_Women_Natives     </option>
                            <option>   LD_Women_Natives     </option>
                            <option>   LD_Shirt     </option>
                            <option>   Kg_Garment     </option>
                            <option>   Others     </option>

                        </select>
                    </td>

                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Pieces: </font> </td>
                    <td> <select name="pic" >
                            <option >   1   </option>
                            <option>   2     </option>
                            <option>   3    </option>
                            <option>   4    </option>
                            <option>   5  </option>
                            <option>   6     </option>
                            <option >  7   </option>
                            <option>   8     </option>
                            <option>   9    </option>
                            <option>   10    </option>
                            <option>   11  </option>
                            <option>   12    </option>
                            <option >  13   </option>
                            <option>   14     </option>
                            <option>   15    </option>
                            <option>   15    </option>
                            <option>   16  </option>
                            <option>   17     </option>
                            <option >  18   </option>
                            <option>   19    </option>
                            <option>   20    </option>
                            <option>   21    </option>
                            <option>   22  </option>
                            <option>   23    </option>
                            <option >  24   </option>
                            <option>   25     </option>
                            <option>   26    </option>
                            <option>   27    </option>
                            <option>   28  </option>
                            <option>   29     </option>
                            <option >  30   </option>
                            <option>   31     </option>
                            <option>   32    </option>
                            <option>   33    </option>
                            <option>   35  </option>
                            <option>   36     </option>
                             <option>  37  </option>
                            <option>   38    </option>
                            <option >  39   </option>
                            <option>   40     </option>
                            <option>   41    </option>
                            <option>   42    </option>
                            <option>   43  </option>
                            <option>   44     </option>
                            <option >  45   </option>
                            <option>   46     </option>
                            <option>   47    </option>
                            <option>   48    </option>
                            <option>   49  </option>
                            <option>   50     </option>


                        </select>
                    </td>
                    <td ><font color="#333399" size="3">Head Office Price: </font> </td>
                    <td ><input type="text" name="price" size="30" autocomplete="off"> </td>

                </tr>
                <tr>

                    <td ><font color="#333399" size="3">Branch A Price: </font> </td>
                    <td ><input type="text" name="price3" value="0" size="30"> </td>
                    <td ><font color="#333399" size="3">Branch B Price: </font> </td>
                    <td ><input type="text" name="price4" value="0" size="30"> </td>
                </tr>
                <tr>

                    <td ><font color="#333399" size="3">Package Unit: </font> </td>
                    <td ><input type="text" name="unit" size="30"> </td>
                </tr>
            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="Register" size="20" name="item"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displayitem.jsp"><input type="button" value="View Items" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                    <td align ="left"><input type="submit" value="Update Items" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="button" name="delitem" value="Delete Item"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>

                    <td align ="left"><a href="regextra.jsp"><input type="button" value="Extra Charge" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>

                </tr>
            </table>


        </form>


    </body>
</html>

