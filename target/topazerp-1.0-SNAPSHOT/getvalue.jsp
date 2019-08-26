<%@page import="java.sql.*"%>
<%@page import="newpackage.*"%>
<%
    SQLconnector sqlConn = new SQLconnector() ;
            Connection con = sqlConn.getCon();
    if (request.getParameter("invoiceid") != null) {
        String emp_id = request.getParameter("invoiceid").toString();
        
        String data = "";
        try {
            
            Statement st = con.createStatement();
            String query = "select * from ourinvoice where invoiceid = '"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("balance") + ":" + rs.getString("balance");
            }
            out.println(data);
           // con.close();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    } else if (request.getParameter("vendor") != null) {
        String emp_id = request.getParameter("vendor").toString();
        
        String data = "";
        try {
           
            Statement st = con.createStatement();
            String query = "select * from expenses where id = '"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("balance") + ":" + rs.getString("balance");
            }
            out.println(data);
            //con.close();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    else if (request.getParameter("newvendor") != null) {
        String emp_id = request.getParameter("newvendor");
        
        String data = "";
         String data2 = "";
        try {
            
            Statement st = con.createStatement();
            String query = "select * from purchase where id= '"+emp_id+"' AND balance > 0";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("balance") + ":" + rs.getString("balance");
               // data2 = ":" + rs.getString("vendor") + ":" + rs.getString("vendor");
            }
            out.println(data);
            //con.close();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }


    else if (request.getParameter("acctname") != null) {
        String emp_id = request.getParameter("acctname").toString();
        
        String data = "";
        try {
         
            Statement st = con.createStatement();
            String query = "select * from extracharge where extra_charge_name= '"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("price") + ":" + rs.getString("price");
            }
            out.println(data);
            //con.close();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }
    
     else if (request.getParameter("items") != null) {
        String emp_id = request.getParameter("items").toString();
       
        String data = "";
        try {
        
            Statement st = con.createStatement();
            String query = "select * from products where itemname= '"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("price4") + ":" + rs.getString("price4");
            }
            out.println(data);
           // con.close();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }
    else if(request.getParameter("acctfrom") != null) {
        String emp_id = request.getParameter("acctfrom").toString();
       
        String data = "";
        try {
           
            Statement st = con.createStatement();
            String query = "select * from account where accountname ='"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("balance") + ":" + rs.getString("balance");
            }
            out.println(data);
            //con.close();
        } catch (NullPointerException e) {
            out.print(e);
        }
    } else if(request.getParameter("regno") != null) {
        String emp_id = request.getParameter("regno").toString();
        
        String data = "";
        String data2 = "";
        try {
            
            Statement st = con.createStatement();
            String query = "select * from customers where regno = '"+emp_id+"'";

            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                data = ":" + rs.getString("surname") + ":" + rs.getString("firstname".replace("null", ""));
                //data2 = ":" + rs.getString("custtype") + ":" + rs.getString("custtype");
            }
            out.println(data);
            //.println(data2);
          
        } catch (NullPointerException e) {
            out.print(e);
        }
    } else {
    }
      con.close();
%>
