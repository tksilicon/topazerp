<%@ page import="java.sql.*" %> 
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>

<%
    String name = request.getParameter("name").toString();
    System.out.println(name);
    String data = "";
    try {
       SQLconnector SQLcon = new SQLconnector();

                        Connection con = SQLcon.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from custpref where customerno ='" + name + "'");
        int count = 0;
        while (rs.next()) {

            data = rs.getString("preference");
        }

      
        out.println(data);
        System.out.println(data);
    } catch (Exception e) {
        System.out.println(e);
    }
%>
