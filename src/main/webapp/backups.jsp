<%-- 
    Document   : backups
    Created on : Feb 4, 2013, 11:42:31 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage2.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        Backing up database .................
        <%
        
        BackupDB db = new BackupDB();
        db.backup();
        
        
        
        
        %>
    </body>
</html>
