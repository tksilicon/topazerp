<%-- 
    Document   : selectproductsaction
    Created on : Dec 13, 2014, 2:32:51 PM
    Author     : THANKGOD
--%>

<%
    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");

    StaffStatus staff = null;


    String username = (String) session.getAttribute("username");
    Customer cust = null;

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");


    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }
%>

<%@page import="java.util.Set"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.topazerp.sales.*"%>
<%@page import="java.util.Calendar"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%




            Calendar cal = OdicUtil.generateDate();

            String custname = "";
            String address = "";
            String phoneno = "";

            Customer newCust = null;

            if (request.getParameter("newcustomer") != null) {


                String custtype;
                String state;
                String country;
                String day;
                String month;
                String gender;

                String email;

                newCust = new Customer();

                newCust.setBranch(staff.getBranch());


                newCust.setRegDate2(cal.getTime());

                if (!request.getParameter("title").equals("")) {
                    newCust.setTitle(request.getParameter("title"));
                    custname = custname + " " + request.getParameter("title") + " ";

                }

                newCust.setSurname(request.getParameter("surname"));
                custname = custname + request.getParameter("surname");

                if (request.getParameter("fname") != null) {
                    newCust.setFirstname(request.getParameter("fname"));
                    custname = custname + " " + request.getParameter("fname");
                }

                if (request.getAttribute("phone") != null) {
                    phoneno = request.getParameter("phone");
                    newCust.setPhoneno(phoneno);
                }

        %>
        <%=request.getAttribute("phone")%>
        <%



            if (request.getParameter("address") != null) {
                address = request.getParameter("address");
                newCust.setAddress(address);
            }

        %>
        <%=request.getAttribute("address")%>
        <%


            if (request.getParameter("state") != null) {
                state = request.getParameter("state");
                newCust.setState(state);
            }

        %>
        <%=request.getAttribute("state")%>
        <%

            if (request.getParameter("country") != null) {
                country = request.getParameter("country");
                newCust.setCountry(country);
            }

        %>
        <%=request.getAttribute("country")%>
        <%

            if (request.getParameter("gender") != null) {
                gender = request.getParameter("gender");
                newCust.setGender(gender);
            }
        %>
        <%=request.getAttribute("gender")%>
        <%

                if (request.getParameter("month") != null) {
                    month = request.getParameter("month");
                    newCust.setMonth(month);
                }

                if (request.getParameter("day") != null) {
                    day = request.getParameter("day");
                    newCust.setDay(day);
                }

                if (request.getParameter("email") != null) {
                    email = request.getParameter("email");
                    newCust.setEmail(email);
                }


                custtype = request.getParameter("custtype");
                newCust.setCusttype(custtype);

                newCust.setNewold(true);


                newCust.setCustname(custname);
                session.setAttribute("cust", newCust);
                request.setAttribute("tosavenew", "tosavenew");




            } else if (request.getParameter("invoices") != null) {

                ArrayList<Customer> odicCustomers = (ArrayList<Customer>) session.getAttribute("custList");



                Iterator itil = odicCustomers.iterator();


                String custId = null;


                custId = request.getParameter("customerselect");
                String surname = "";
                String firstname = "";

                while (itil.hasNext()) {
                    cust = (Customer) itil.next();
                    if (custId.equals(cust.getRegno())) {
                        surname = cust.getSurname();

                        surname = cust.getSurname();
                        firstname = cust.getFirstname();




                        if (firstname.equals(null) | firstname.equals("null")) {
                            custname = surname;
                        } else {
                            custname = surname + " " + firstname;
                        }
                        cust.setCustname(custname);



                        break;
                    }

                }

                session.setAttribute("cust", cust);



            } else if (request.getParameter("removeproduct") != null) {


                String product_id = request.getParameter("removeproduct");

                Set<OdicProduct> selectedProducts = (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProducts");
                Set<OdicProduct> selectedProducts2 = new LinkedHashSet<OdicProduct>();

                OdicProduct prod = null;

                Iterator itil = selectedProducts.iterator();

                while (itil.hasNext()) {

                    prod = (OdicProduct) itil.next();

                    if (!prod.getItemId().equals(product_id)) {
                        selectedProducts2.add(prod);
                    }

                }

                session.setAttribute("selectedProducts", selectedProducts2);

            } else if (request.getParameter("selectproduct") != null) {



                SalesOperations sales = new SalesOperations();
                ArrayList<OdicProduct> odicProducts = sales.getProducts();


                Iterator itil = odicProducts.iterator();

                String product_id = request.getParameter("productselect");


                Set<OdicProduct> selectedProducts = null; //new LinkedHashSet<OdicProduct>();
                if (session.getAttribute("selectedProducts") != null) {
                    selectedProducts = (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProducts");

                } else {
                    selectedProducts = new LinkedHashSet<OdicProduct>();
                }




                double productPrice = 0.0;
                double totaldiscountprice = 0.0;
                double totalshadowprice = 0.0;


                OdicProduct prod = null;



                while (itil.hasNext()) {
                    prod = (OdicProduct) itil.next();

                    if (prod.getItemId().equals(product_id)) {

                        prod.setEnteredAValue(false);


                        prod.setDiscount(0.0);
                        prod.setShadow(0.0);
                        prod.setTotal(0.0);
                        prod.setSubtotal(0.0);
                        prod.setSellingPrice(0.0);



                        prod.setQuantity(Integer.parseInt(request.getParameter("quantitydisplay")));
                        prod.setPriceType(request.getParameter("retailwholesale"));
                        prod.setTypeofPrice(request.getParameter("pricetype"));



                        if (prod.getTypeofPrice().equals("system")) {

                            if (prod.getPriceType().equals("retail")) {

                                prod.setSellingPrice(prod.getPrice());

                            } else if (prod.getPriceType().equals("lowerretail")) {

                                prod.setSellingPrice(prod.getRetailPriceLower());

                            } else if (prod.getPriceType().equals("wholesale")) {

                                prod.setSellingPrice(prod.getWholesalePrice());

                            } else if (prod.getPriceType().equals("lowerwholesale")) {

                                prod.setSellingPrice(prod.getWholesalePriceLower());

                            }

                            prod.setSubtotal(prod.getSellingPrice() * prod.getQuantity());

                        } else if (prod.getTypeofPrice().equals("entered")) {

                            String thePrice = request.getParameter("productprice");

                            if (thePrice != null && !thePrice.equals("")) {

                                double productprice = Double.parseDouble(request.getParameter("productprice"));

                                if (prod.getPriceType().equals("retail") && productprice >= prod.getRetailPriceLower()) {
                                    prod.setSellingPrice(productprice);
                                } else if (prod.getPriceType().equals("lowerretail") && productprice >= prod.getRetailPriceLower()) {
                                    prod.setSellingPrice(productprice);
                                } else if (prod.getPriceType().equals("wholesale") && productprice >= prod.getWholesalePriceLower()) {
                                    prod.setSellingPrice(productprice);
                                } else if (prod.getPriceType().equals("lowerwholesale") && productprice >= prod.getWholesalePriceLower()) {
                                    prod.setSellingPrice(productprice);

                                } else {
                                    prod.setSellingPrice(prod.getRetailPriceLower());

                                }

                            } else {
                                prod.setSellingPrice(prod.getPrice());
                            }

                            prod.setSubtotal(prod.getSellingPrice() * prod.getQuantity());


                        }

                        if (request.getParameter("discountdisplay") != null && !request.getParameter("discountdisplay").equals("")) {
                            double discountEntered = Double.parseDouble(request.getParameter("discountdisplay"));
                            prod.setDiscount(discountEntered);

                            if (request.getParameter("typeOfDiscount").equals("item")) {

                                //prod.setSubtotal((prod.getPrice() - prod.getDiscount()) * prod.getQuantity());

                                totaldiscountprice = prod.getQuantity() * prod.getDiscount();
                                prod.setTotalProductDiscount(totaldiscountprice);

                            } else {
                                //prod.setSubtotal((prod.getPrice() * prod.getQuantity()) - prod.getDiscount());
                                totaldiscountprice = prod.getDiscount();
                                prod.setTotalProductDiscount(totaldiscountprice);


                            }
                        }



                        if (request.getParameter("shadowdisplay") != null && !request.getParameter("shadowdisplay").equals("")) {

                            double shadowEntered = Double.parseDouble(request.getParameter("shadowdisplay"));
                            prod.setShadow(shadowEntered);

                            totalshadowprice = prod.getShadow() * prod.getQuantity();
                            prod.setTotalShadowPrice(totalshadowprice);
                        }


                        prod.setSubTotalAfterShadow(prod.getSubtotal() + prod.getTotalShadowPrice());
                        prod.setSubTotalAfterDiscount(prod.getSubtotal() - prod.getTotalProductDiscount());
                        prod.setSubTotalAfterDiscountShadow(prod.getSubTotalAfterShadow() - prod.getTotalProductDiscount());
                        prod.setTotal((prod.getSubtotal() - prod.getTotalProductDiscount()) + prod.getTotalShadowPrice());
                        selectedProducts.add(prod);


                        break;

                    }
                }

                session.setAttribute("selectedProducts", selectedProducts);
            }

            response.sendRedirect("selectproducts.jsp?action=action");


        %>      

    </body>
</html>
