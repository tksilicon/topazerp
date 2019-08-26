  <%@page import="newpackage.*" %>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.util.*" %>
<%@ page import ="Classespack.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.io.FileNotFoundException" %>
<%@ page import ="java.io.IOException" %>
<%@ page import ="java.util.Iterator" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>
<%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>
<%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>


<%
    if(request.getParameter("uploaddata") != null){
        String fileName = request.getParameter("datafile");
  
        InsertExcelFileData excel = new InsertExcelFileData();
         
        Vector dataHolder = excel.read("c:/".concat(fileName));
        excel.saveToDatabase(dataHolder);
   
    }
  %>