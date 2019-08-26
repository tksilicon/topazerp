<%@page import="newpackage.*" %>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.util.Date" %>
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

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title> Insert title here </title>
    </head>
    <body>

        <%

            Connection con = null;
            Statement st = null;
            PreparedStatement ps = null;

        %>  

        <%

            try {
                SQLconnector SQLcon = new SQLconnector();
                con = SQLcon.getCon();
                st = con.createStatement();

                String fileName = request.getParameter("file");//"myexcel.xls";
                //Read an Excel File and Store in a ArrayList
                ArrayList dataHolder = readExcelFile(fileName);
                // Print the data read
                // PrintCellDataToConsole(dataHolder);

                String query = "insert into branch values(null, ?, ?, ?, ?)";

                ps = con.prepareStatement(query);
                int count = 0;
                ArrayList cellStoreArrayList = null;
                //For inserting into database
                for (int i = 1; i < dataHolder.size(); i++) {
                    cellStoreArrayList = (ArrayList) dataHolder.get(i);
                    ps.setString(1, ((HSSFCell) cellStoreArrayList.get(0)).toString());
                    ps.setString(2, ((HSSFCell) cellStoreArrayList.get(1)).toString());
                    ps.setString(3, ((HSSFCell) cellStoreArrayList.get(2)).toString());
                    ps.setString(4, ((HSSFCell) cellStoreArrayList.get(3)).toString());
                    ps.executeUpdate();
                    out.println(((HSSFCell) cellStoreArrayList.get(2)).toString() + "\t");
                }
                count++;


                //For checking data is inserted or not?
                if (count > 0) {%>
        Following details from Excel file have been inserted in student table of database
        <table>
            <tr>
                <th>Name</th>
                <th>Grade</th>
                <th>Subject</th>
                <th>Subject</th>
                <th>Subject</th>
            </tr>

            <% for (int i = 1; i < dataHolder.size(); i++) {
                    cellStoreArrayList = (ArrayList) dataHolder.get(i);
            %>
            <tr>
                <td><%=((HSSFCell) cellStoreArrayList.get(0)).toString()%></td>
                <td><%=((HSSFCell) cellStoreArrayList.get(1)).toString()%></td>
                <td><%=((HSSFCell) cellStoreArrayList.get(2)).toString()%></td>
                <td><%=((HSSFCell) cellStoreArrayList.get(3)).toString()%></td>
                <td><%=((HSSFCell) cellStoreArrayList.get(4)).toString()%></td>
            </tr>
            <%}
            } else {%>
            <center> Not able to insert.......</center>

            <% }
                } catch (Exception e1) {
                    e1.printStackTrace();
                }

            %>



            <%!
                public static ArrayList readExcelFile(String fileName) throws ClassNotFoundException {
                    /**
                     * --Define a ArrayList --Holds ArrayList Of Cells
                     */
                    ArrayList cellArrayLisstHolder = new ArrayList();

                    try {
                        /**
                         * Creating Input Stream*
                         */
                        FileInputStream myInput = new FileInputStream(fileName);

                        /**
                         * Create a POIFSFileSystem object*
                         */
                        POIFSFileSystem myFileSystem = new POIFSFileSystem(myInput);

                        /**
                         * Create a workbook using the File System*
                         */
                        HSSFWorkbook myWorkBook = new HSSFWorkbook(myFileSystem);

                        /**
                         * Get the first sheet from workbook*
                         */
                        HSSFSheet mySheet = myWorkBook.getSheetAt(0);


                        /**
                         * We now need something to iterate through the cells.*
                         */
                        Iterator rowIter = mySheet.rowIterator();
                        while (rowIter.hasNext()) {
                            HSSFRow myRow = (HSSFRow) rowIter.next();
                            Iterator cellIter = myRow.cellIterator();
                            ArrayList cellStoreArrayList = new ArrayList();
                            while (cellIter.hasNext()) {
                                HSSFCell myCell = (HSSFCell) cellIter.next();
                                cellStoreArrayList.add(myCell);

                            }
                            cellArrayLisstHolder.add(cellStoreArrayList);
                        }
                        
                    } catch (Exception e) {
                    }
                    return cellArrayLisstHolder;
                }%>   
        </table>

    </body>
</html>