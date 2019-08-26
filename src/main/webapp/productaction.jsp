<%-- 
    Document   : productaction
    Created on : Dec 1, 2014, 11:58:11 AM
    Author     : THANKGOD
--%>


<%@page import="com.topazerp.sales.OdicProduct"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        
        SalesOperations manOpx = new SalesOperations();
        
        
                 
        if(manOpx.checkProducts(request.getParameter("prodId")) == null){
            
            String productId = request.getParameter("prodId");
            String prodDesc = request.getParameter("prodDesc");
            String retailprice = request.getParameter("retailprice");
            String loweretailprice = request.getParameter("loweretailprice");
            String upperetailprice = request.getParameter("upperetailprice");
            
            String wholesaleprice = request.getParameter("wholesaleprice");
            String wholesalelowerprice = request.getParameter("wholesalelowerprice");
            String wholesalehigherprice = request.getParameter("wholesalehigherprice");
            
            OdicProduct prod = new OdicProduct();
            
            prod.setItemId(productId);
            prod.setItemDescription(prodDesc);
            prod.setPrice(Double.parseDouble(retailprice));
            prod.setRetailPriceLower(Double.parseDouble(loweretailprice));
            prod.setRetailPriceHigher(Double.parseDouble(upperetailprice));
            
            prod.setWholesalePrice(Double.parseDouble(wholesaleprice));
            prod.setWholesalePriceLower(Double.parseDouble(wholesalelowerprice));
            prod.setWholesalePriceHigher(Double.parseDouble(wholesalehigherprice));
                    
            
            manOpx.createProduct(prod);
            
            response.sendRedirect("pricelist.jsp");
            
            
        }else {
                      
           response.sendRedirect("createproduct.jsp?error=error");    
            
        }

                      
        %>
    </body>
</html>
