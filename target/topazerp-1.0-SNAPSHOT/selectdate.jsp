
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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

                String dateselected = request.getParameter("dateselector");
                DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                java.sql.Date date = OdicUtil.convertJavaDateToSqlDate(formatter.parse(dateselected));

                if (request.getParameter("bankcash") != null) {

                    BankTransaction transaction = null;


                    String amountpaidin = request.getParameter("amountpaidin");
                    String bankpayed = request.getParameter("bankpayed");
                    String tellerno = request.getParameter("tellerno");
                    

                    transaction = new BankTransaction();

                    transaction.setAmount(amountpaidin);
                    transaction.setAmountpaid(Integer.parseInt(transaction.getAmount()));
                    transaction.setBank(bankpayed);
                    transaction.setTellerno(tellerno);
                    transaction.setBranch(staff.getBranch());
                    transaction.setDate(date);

                    session.setAttribute("transaction", transaction);

                } else if (request.getParameter("receiptspaid") != null) {

                    String regno = request.getParameter("customerselect");
                    String amount = request.getParameter("amountpaid");

                    Receipt receipts = new Receipt();
                    SalesOperations salesOpx = new SalesOperations();

                    ArrayList<Customer> odicCustomers = salesOpx.getCustomers();

                    Iterator itil = odicCustomers.iterator();

                    Customer cust = null;

                    String custname = "";

                    outer:
                    while (itil.hasNext()) {
                        cust = (Customer) itil.next();
                        if (cust.getRegno().equals(regno)) {
                            receipts.setCust(cust);

                            custname = cust.getSurname() + " ";

                            if (!cust.getFirstname().toUpperCase().equals("null") | cust.getFirstname() != null | !cust.getFirstname().equals("")) {
                                custname = custname + cust.getFirstname();
                            }

                            receipts.setCustName(custname);

                            break outer;

                        }
                    }

                  

                    receipts.setDate(date);
                    receipts.setCustID(regno);
                    receipts.setAmountpaid(amount);
                    receipts.setAmount(Integer.parseInt(receipts.getAmountpaid()));
                    receipts.setReceiptsId(new ReceiptId());

                    session.setAttribute("receipts", receipts);

                } else if (request.getParameter("fundexpenses") != null) {

                    String fundAmount = request.getParameter("fundAmount");
                    Expenses expenses = new Expenses();
                    expenses.setAmountspent(fundAmount);
                    expenses.setDate(date);

                    expenses.setAmount(Integer.parseInt(expenses.getAmountspent()));

                    session.setAttribute("fundexpenses", expenses);
                    
                   


                } else if (request.getParameter("expensescash") != null) {

                    String expenseAmount = request.getParameter("expenseAmount");
                    String purpose = request.getParameter("purpose");
                    String expensestype = request.getParameter("expensestype");


                    Expenses expenses = new Expenses();
                    expenses.setAmountspent(expenseAmount);
                    expenses.setPurpose(purpose);
                    expenses.setAmount(Integer.parseInt(expenses.getAmountspent()));
                    expenses.setExpenseType(expensestype);
                    expenses.setDate(date);

                    session.setAttribute("expenses", expenses);


                } else if (request.getParameter("shopcash") != null) {



                    String amount = request.getParameter("amountreceived");
                    String holder = request.getParameter("holder");
                    String branch = request.getParameter("branch");

                    CashShop cash = new CashShop();

                    cash.setAmount(Integer.parseInt(amount));
                    cash.setBranch(branch);
                    cash.setHolder(holder);
                    cash.setDateCash(date);
                    cash.setCashId(new CashId());

                    session.setAttribute("cash", cash);

                }
               response.sendRedirect("selectdateaction.jsp");

            %>


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
