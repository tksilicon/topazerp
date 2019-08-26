<%@page import="java.awt.Color"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%

    if (request.getParameter("account") != null) {
        String query = "select accountname, balance from account";
        JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:sqlserver://localhost:1433;databaseName=EasywashWeb",
                "com.microsoft.sqlserver.jdbc.SQLServerDriver", "sa", "lawrence");

        dataset.executeQuery(query.toUpperCase());
        JFreeChart chart = ChartFactory.createBarChart3D(
                "General Ledger Chart",
                "Account Name",
                "Amount/Balance",
                dataset,
                PlotOrientation.VERTICAL, true, true, false);
        ChartFrame frame1 = new ChartFrame("Bar Chart", chart);
        frame1.setVisible(true);
         frame1.setSize(500, 500);
        out.println("Chart Creation  Successfull");
        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");

    } else if (request.getParameter("items") != null) {

        String query = "select id, price  from products";
        JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:sqlserver://localhost:1433;databaseName=EasywashWeb",
                "com.microsoft.sqlserver.jdbc.SQLServerDriver", "sa", "lawrence");

        dataset.executeQuery(query.toUpperCase());
        JFreeChart chart = ChartFactory.createBarChart3D(
                "Product Summery Chart",
                "ID/Names",
                "Amount/Balance",
                dataset,
                PlotOrientation.VERTICAL, true, true, false);
        ChartFrame frame1 = new ChartFrame("Bar Chart", chart);
        frame1.setVisible(true);
         frame1.setSize(500, 500);
        out.println("Chart Creation  Successfull");
        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else if (request.getParameter("cashflow") != null) {

        String query = "select id, debit, credit, balance from cashfloaw";
        JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:sqlserver://localhost:1433;databaseName=EasywashWeb",
                "com.microsoft.sqlserver.jdbc.SQLServerDriver", "sa", "lawrence");

        dataset.executeQuery(query.toUpperCase());
        JFreeChart chart = ChartFactory.createBarChart3D(
                "Cash Flow Account Summary",
                "ID",
                "Amount/Balance",
                dataset,
                PlotOrientation.VERTICAL, true, true, false);
        ChartFrame frame1 = new ChartFrame("Bar Chart", chart);
        frame1.setVisible(true);
         frame1.setSize(500, 500);
        out.println("Chart Creation  Successfull");
        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else if (request.getParameter("accountpay") != null) {

        String query = "select branch, receiver, total_amount, amountpaid, balance from expenses";
        JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:sqlserver://localhost:1433;databaseName=EasywashWeb",
                "com.microsoft.sqlserver.jdbc.SQLServerDriver", "sa", "lawrence");

        dataset.executeQuery(query.toUpperCase());
        JFreeChart chart = ChartFactory.createBarChart3D(
                "Account Payable Summary",
                "ID",
                "Amount/Balance",
                dataset,
                PlotOrientation.VERTICAL, true, true, false);
        ChartFrame frame1 = new ChartFrame("Bar Chart", chart);
        frame1.setVisible(true);
         frame1.setSize(500, 500);
        //out.print(chart);
        out.println("Chart Creation  Successfull");
        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else if (request.getParameter("accountrec") != null) {

        String query = "select invoiceid, branch, custname, grandtotal, amtpaid, balance  from ourinvoice ORDER by date DESC";
        JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:sqlserver://localhost:1433;databaseName=EasywashWeb",
                "com.microsoft.sqlserver.jdbc.SQLServerDriver", "sa", "lawrence");

        dataset.executeQuery(query.toUpperCase());
        JFreeChart chart = ChartFactory.createBarChart3D(
                "Account Receivable Summary",
                "ID",
                "Amount/Balance",
                dataset,
                PlotOrientation.VERTICAL, true, true, false);
        ChartFrame frame1 = new ChartFrame("Bar Chart", chart);
        frame1.setVisible(true);
        frame1.setSize(500, 500);
        frame1.setBackground(Color.BLUE);
        out.println("Chart Creation  Successfull");
        out.println("<html><body><p ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'blue'>Go to the Previous Page </font><input type = 'button' value='Go' ></p></body></html>");


    } else {
        out.print("no parameter found");
    }
%>
