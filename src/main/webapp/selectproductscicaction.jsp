<%-- 
    Document   : selectproductscicaction
    Created on : Dec 15, 2014, 9:37:12 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.*"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

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


            StaffStatus staff = null;

            if ((String) session.getAttribute("username") == null) {
                response.sendRedirect("logout.jsp");
            } else {
                staff = (StaffStatus) session.getAttribute("LOGIN_USER");
            }

            
            


            if (request.getParameter("removeproduct") != null) {


                String product_id = request.getParameter("removeproduct");

                Set<OdicProduct> selectedProducts = (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProductsCIC");
                Set<OdicProduct> selectedProducts2 = new LinkedHashSet<OdicProduct>();

                OdicProduct prod = null;

                Iterator itil = selectedProducts.iterator();

                while (itil.hasNext()) {

                    prod = (OdicProduct) itil.next();

                    if (!prod.getItemId().equals(product_id)) {
                        selectedProducts2.add(prod);
                    }

                }

                session.setAttribute("selectedProductsCIC", selectedProducts2);

            } else if (request.getParameter("selectproduct") != null) {



                ArrayList<OdicProduct> odicProducts = (ArrayList<OdicProduct>) session.getAttribute("prodListCIC");
                Iterator itil = odicProducts.iterator();

                String product_id = request.getParameter("productselect");
              


                Set<OdicProduct> selectedProducts = null; //new LinkedHashSet<OdicProduct>();
                if (session.getAttribute("selectedProductsCIC") != null) {
                    selectedProducts = (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProductsCIC");

                } else {
                    selectedProducts = new LinkedHashSet<OdicProduct>();
                }




                double productPrice = 0.0;
                double totaldiscountprice = 0.0;
                double totalshadowprice = 0.0;
                double total = 0.0;

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
                        prod.setTypeofPrice(request.getParameter("pricetype"));
                        prod.setPriceType("wholesale");
                        
                        

       

                        if (prod.getTypeofPrice().equals("system")) {

                            prod.setEnteredAValue(false);

                            prod.setSellingPrice(prod.getWholesalePrice());

                            prod.setSubtotal(prod.getSellingPrice() * prod.getQuantity());

                        } else {
                            String thePrice = request.getParameter("productprice");

                            if (thePrice != null && !thePrice.equals("") && Integer.parseInt(thePrice) >= prod.getWholesalePrice()) {
                                prod.setEnteredAValue(true);                               
                                
                                prod.setSellingPrice(Double.parseDouble(request.getParameter("productprice")));

                            } else {

                                prod.setSellingPrice(prod.getWholesalePrice());

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

                       

                                                                     
                       
                        prod.setSubTotalAfterDiscount(prod.getSubtotal() - prod.getTotalProductDiscount());
                        prod.setTotal(prod.getSubtotal());
                        selectedProducts.add(prod);


                        break;

                    }
                }

                session.setAttribute("selectedProductsCIC", selectedProducts);
            }

            response.sendRedirect("selectproductscic.jsp?action=action&address=notset");


        %>      

    </body>
</html>
